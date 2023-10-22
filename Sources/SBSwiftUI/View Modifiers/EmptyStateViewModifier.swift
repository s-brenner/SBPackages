#if canImport(SwiftUI)
fileprivate struct EmptyStateViewModifier<EmptyContent>: ViewModifier
where EmptyContent: View {
    
    var isEmpty: Bool
    
    @ViewBuilder let emptyContent: () -> EmptyContent
    
    func body(content: Content) -> some View {
        if isEmpty {
            emptyContent()
        }
        else {
            content
        }
    }
}

extension View {
    
    public func emptyState<EmptyContent>(
        _ isEmpty: Bool,
        @ViewBuilder content: @escaping () -> EmptyContent
    ) -> some View
    where EmptyContent: View {
        modifier(EmptyStateViewModifier(isEmpty: isEmpty, emptyContent: content))
    }
}
#endif
