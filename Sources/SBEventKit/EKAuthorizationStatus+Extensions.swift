#if canImport(EventKit)
extension EKAuthorizationStatus: CustomStringConvertible {
    
    public var description: String {
        switch self {
        case .authorized: return "Authorized"
        case .denied: return "Denied"
        case .notDetermined: return "Not Determined"
        case .restricted: return "Restricted"
        case .fullAccess: return "Full Access"
        case .writeOnly: return "Write Only"
        @unknown default: return "Unknown"
        }
    }
}
#endif
