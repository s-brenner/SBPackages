#if canImport(SwiftUI)
fileprivate struct ConditionalOverlayViewModifier<V>: ViewModifier
where V: View {
    
    let condition: Bool
    
    let animation: Animation?
    
    @ViewBuilder let overlayContent: () -> V
    
    func body(content: Content) -> some View {
        content
            .opacity(condition ? 0 : 1)
            .overlay {
                if condition {
                    overlayContent()
                        .opacity(condition ? 1 : 0)
                }
            }
            .animation(animation, value: condition)
    }
}

extension View {
    
    public func overlay<V>(
        if condition: Bool,
        animation: Animation? = .default,
        @ViewBuilder content: @escaping () -> V
    ) -> some View
    where V: View {
        modifier(ConditionalOverlayViewModifier(condition: condition, animation: animation, overlayContent: content))
    }
}
#endif
