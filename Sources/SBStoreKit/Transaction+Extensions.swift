#if canImport(StoreKit)
extension Transaction {
    
    public static func latestVerified(for productID: Product.ID) async -> Transaction? {
        let result = await latest(for: productID)
        guard case .verified(let safe) = result
        else { return nil }
        return safe
    }
    
    public var product: Product? {
        get async throws {
            try await Product.products(for: [productID]).first
        }
    }
    
    public var isRevoked: Bool {
        revocationDate != nil && revocationReason != .none
    }
}
#endif
