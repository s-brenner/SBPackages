#if canImport(SwiftUI) && os(iOS)
import SwiftUI

extension Picker
where Label == Text,
      SelectionValue: CaseIterable & CustomStringConvertible & Hashable,
      SelectionValue.AllCases: RandomAccessCollection {
    
    /// - Author: Scott Brenner | SBSwiftUI
    public init(_ titleKey: LocalizedStringKey, selection: Binding<SelectionValue>)
    where Content == AnyView {
        self.init(titleKey, selection: selection) {
            ForEach(SelectionValue.allCases, id: \.self) { value in
                Text(value.description)
                    .tag(value)
            }
            .eraseToAnyView()
        }
    }
    
    /// - Author: Scott Brenner | SBSwiftUI
    public init<S>(_ title: S, selection: Binding<SelectionValue>)
    where Content == AnyView, S: StringProtocol {
        self.init(title, selection: selection) {
            ForEach(SelectionValue.allCases, id: \.self) { value in
                Text(value.description)
                    .tag(value)
            }
            .eraseToAnyView()
        }
    }
}
#endif
