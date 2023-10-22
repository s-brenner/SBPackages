#if canImport(Combine)
extension Future where Failure == Error {
    
    /// - Author: Scott Brenner | SBCombine
    public convenience init(operation: @escaping () async throws -> Output) {
        self.init { promise in
            Task {
                do {
                    let output = try await operation()
                    promise(.success(output))
                } catch {
                    promise(.failure(error))
                }
            }
        }
    }
}

extension Future where Failure == Never {
    
    /// - Author: Scott Brenner | SBCombine
    public convenience init(operation: @escaping () async -> Output) {
        self.init { promise in
            Task {
                let output = await operation()
                promise(.success(output))
            }
        }
    }
}
#endif
