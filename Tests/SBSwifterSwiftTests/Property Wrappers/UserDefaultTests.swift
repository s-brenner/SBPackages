import XCTest
@testable import SBSwifterSwift

final class UserDefaultTests: XCTestCase {
    
    enum UserDefaultsManager {
        
        enum Settings {
            
            // MARK: - Properties
            
            private static let prefix = "\(UserDefaultsManager.self).\(Self.self)"
            
            @UserDefault(key: "\(prefix).isEnabled", defaultValue: false)
            static var isEnabled: Bool
            
            @UserDefault(key: "\(prefix).username", defaultValue: "Steve")
            static var username: String
            
            @UserDefault(key: "\(prefix).soloNumber", defaultValue: 980)
            static var soloNumber: Int
            
            @UserDefault(key: "\(prefix).duration", defaultValue: DateComponents(hour: 4))
            static var duration: DateComponents
            
            
            // MARK: - Methods
            
            static func reset() {
//                $isEnabled.reset()
//                $username.reset()
//                $duration.reset()
            }
        }
    }
    
    
    func testDefaultValue() {
        
        XCTAssertFalse(UserDefaultsManager.Settings.isEnabled)
        XCTAssertEqual(UserDefaultsManager.Settings.soloNumber, 980)
        XCTAssertEqual(UserDefaultsManager.Settings.duration, DateComponents(hour: 4))
    }
    
    func testSetter() {
        
        XCTAssertEqual(UserDefaultsManager.Settings.username, "Steve")
        UserDefaultsManager.Settings.username = "Jim"
        XCTAssertEqual(UserDefaultsManager.Settings.username, "Jim")
        
        XCTAssertEqual(UserDefaultsManager.Settings.duration, DateComponents(hour: 4))
        UserDefaultsManager.Settings.duration = DateComponents(minute: 15)
        XCTAssertEqual(UserDefaultsManager.Settings.duration, DateComponents(minute: 15))
        
        UserDefaultsManager.Settings.reset()
    }
}