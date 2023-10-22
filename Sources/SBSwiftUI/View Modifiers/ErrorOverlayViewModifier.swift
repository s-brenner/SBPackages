#if canImport(SwiftUI)
fileprivate struct ErrorOverlayViewModifier<E, V>: ViewModifier
where E: Error, V: View {
    
    let error: E?
    
    let animation: Animation?
    
    @ViewBuilder let errorContent: (E) -> V
    
    func body(content: Content) -> some View {
        content
            .overlay(if: error != nil, animation: animation) {
                errorContent(error!)
            }
    }
}

extension View {
    
    public func errorOverlay<E, V>(
        _ error: E?,
        animation: Animation? = .default,
        @ViewBuilder content: @escaping (E) -> V
    ) -> some View
    where E: Error, V: View {
        modifier(ErrorOverlayViewModifier(error: error, animation: animation, errorContent: content))
    }
}
#endif
