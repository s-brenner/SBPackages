#if canImport(CryptoKit)
import Foundation

extension SymmetricKey {
    
    public var data: Data { withUnsafeBytes { Data(Array($0)) } }
}
#endif
