#if canImport(UserNotifications)
import SBStandardLibrary

extension Sequence where Element == UNNotificationRequest {
    
    /// - Author: Scott Brenner | SBUserNotifications
    public func add(to center: UNUserNotificationCenter = .current()) async throws {
        try await asyncForEach { request in
            try await center.add(request)
        }
    }
}
#endif
