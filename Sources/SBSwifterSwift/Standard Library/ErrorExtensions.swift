import Foundation

public enum ErrorCategory {
    case nonRetryable
    case retryable
    case requiresLogout
}

public protocol CategorizedError: Error {
    
    var category: ErrorCategory { get }
}

public extension Error {
    
    func resolveCategory() -> ErrorCategory {
        
        guard let categorized = self as? CategorizedError else {
            return .nonRetryable
        }
        return categorized.category
    }
}
