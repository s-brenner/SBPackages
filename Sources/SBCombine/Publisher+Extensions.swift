#if canImport(Combine)
import Foundation

extension Publisher {
    
    /// - Author: Scott Brenner | SBCombine
    public func weakAssign<Root: AnyObject>(
        valueTo valueKeyPath: ReferenceWritableKeyPath<Root, Output>,
        errorTo errorKeyPath: ReferenceWritableKeyPath<Root, Failure?>? = nil,
        on object: Root
    ) -> AnyCancellable {
        sink { [weak object] completion in
            guard let errorKeyPath = errorKeyPath
            else { return }
            if case .failure(let error) = completion {
                object?[keyPath: errorKeyPath] = error
            }
        } receiveValue: { [weak object] value in
            object?[keyPath: valueKeyPath] = value
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func updatePublished<Root: AnyObject, T>(
        _ keyPath: ReferenceWritableKeyPath<Root, T>,
        on object: Root,
        transform: @escaping (Output) -> T
    ) -> AnyPublisher<Output, Failure> {
        receive(on: OperationQueue.main)
            .map { [weak object] value in
                object?[keyPath: keyPath] = transform(value)
                return value
            }
            .eraseToAnyPublisher()
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func convertToResult() -> AnyPublisher<Result<Output, Failure>, Never> {
        map(Result.success)
            .catch { Just(.failure($0)) }
            .eraseToAnyPublisher()
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func unwrap<T>(
        orThrow error: @escaping @autoclosure () -> Failure
    ) -> Publishers.TryMap<Self, T> where Output == Optional<T> {
        tryMap { output in
            switch output {
            case .some(let value):
                return value
            case nil:
                throw error()
            }
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func validate(
        using validator: @escaping (Output) throws -> Void
    ) -> Publishers.TryMap<Self, Output> {
        tryMap { output in
            try validator(output)
            return output
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func asyncMap<T>(
        _ transform: @escaping (Output) async -> T
    ) -> Publishers.FlatMap<Future<T, Never>, Self> {
        flatMap { value in
            Future { promise in
                Task {
                    let output = await transform(value)
                    promise(.success(output))
                }
            }
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func asyncMap<T>(
        _ transform: @escaping (Output) async throws -> T
    ) -> Publishers.FlatMap<Future<T, Error>, Self> {
        flatMap { value in
            Future { promise in
                Task {
                    do {
                        let output = try await transform(value)
                        promise(.success(output))
                    }
                    catch {
                        promise(.failure(error))
                    }
                }
            }
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func asyncMap<T>(
        _ transform: @escaping (Output) async throws -> T
    ) -> Publishers.FlatMap<Future<T, Error>, Publishers.SetFailureType<Self, Error>> {
        flatMap { value in
            Future { promise in
                Task {
                    do {
                        let output = try await transform(value)
                        promise(.success(output))
                    } catch {
                        promise(.failure(error))
                    }
                }
            }
        }
    }
}

extension Publisher where Output == Bool {
    
    /// - Author: Scott Brenner | SBCombine
    public func ifTrue(perform action: @autoclosure @escaping () -> Void) -> Publishers.Map<Self, Output> {
        map { boolean in
            if boolean {
                action()
            }
            return boolean
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func ifFalse(perform action: @autoclosure @escaping () -> Void) -> Publishers.Map<Self, Output> {
        map { boolean in
            if !boolean {
                action()
            }
            return boolean
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func flatMapIfTrue<P>(
        maxPublishers: Subscribers.Demand = .unlimited,
        transform: @escaping () -> P
    ) -> Publishers.FlatMap<P, Self>
    where P: Publisher, P.Output == Output, P.Failure == Failure {
        flatMap(maxPublishers: maxPublishers) { boolean in
            boolean ? transform() : self as! P
        }
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func flatMapIfFalse<P>(
        maxPublishers: Subscribers.Demand = .unlimited,
        transform: @escaping () -> P
    ) -> Publishers.FlatMap<P, Self>
    where P: Publisher, P.Output == Output, P.Failure == Failure {
        flatMap(maxPublishers: maxPublishers) { boolean in
            boolean ? self as! P : transform()
        }
    }
}

extension Publisher where Output: Collection {
    
    /// - Author: Scott Brenner | SBCombine
    public func mapEach<T>(
        _ transform: @escaping (Output.Element) -> T
    ) -> AnyPublisher<[T], Failure> {
        map { $0.map(transform) }
            .eraseToAnyPublisher()
    }
    
    /// - Author: Scott Brenner | SBCombine
    public func compactMapEach<T>(
        _ transform: @escaping (Output.Element) -> T?
    ) -> AnyPublisher<[T], Failure> {
        map { $0.compactMap(transform) }
            .eraseToAnyPublisher()
    }
    
//    /// - Author: Scott Brenner | SBCombine
//    public func sorted<V>(
//        by keyPath: KeyPath<Output.Element, V>,
//        ascending: Bool = true
//    ) -> AnyPublisher<[Output.Element], Failure>
//    where V: Comparable {
//        map { $0.sorted(by: keyPath, ascending: ascending) }
//            .eraseToAnyPublisher()
//    }
}

extension Publisher where Output == Data {
    
    /// - Author: Scott Brenner | SBCombine
    public func decode<Item>(
        as type: Item.Type = Item.self,
        using decoder: JSONDecoder = .init()
    ) -> Publishers.Decode<Self, Item, JSONDecoder> {
        decode(type: type, decoder: decoder)
    }
}

extension Publisher {
    
    /// Decodes the output from the upstream as either a given type or a given error using a specified decoder.
    ///
    /// A use case for this method is when a server returns data that can be decoded as either an expected type or a server specific error message. If the error message is present, it will be decoded and the publisher will fail with the decoded error.
    /// - Author: Scott Brenner | SBCombine
    /// - Parameters:
    ///   - type: The encoded data to decode into a struct that conforms to the Decodable protocol.
    ///   - error: The encoded data to decode into a struct that conforms to the Decodable and Error protocols.
    ///   - decoder: A decoder that implements the TopLevelDecoder protocol.
    /// - Returns: A publisher that decodes a given type using a specified decoder and publishes the result.
    public func decode<Item, DecodableError, Coder>(
        as type: Item.Type,
        or error: DecodableError.Type,
        using decoder: Coder
    ) -> AnyPublisher<Item, Error>
    where Item: Decodable,
          DecodableError: Decodable, DecodableError: Error,
          Coder: TopLevelDecoder, Coder.Input == Output {
        tryMap { try DecodableResult<Item, DecodableError>(input: $0, decoder: decoder).get() }
            .eraseToAnyPublisher()
    }
}

fileprivate typealias DecodableResult<T, E> = Result<T, E> where T: Decodable, E: Error, E: Decodable

fileprivate extension DecodableResult {
    
    init<D>(input: D.Input, decoder: D) throws
    where D: TopLevelDecoder {
        do {
            let response = try decoder.decode(Success.self, from: input)
            self = .success(response)
        } catch {
            let error = try decoder.decode(Failure.self, from: input)
            self = .failure(error)
        }
    }
}
#endif
