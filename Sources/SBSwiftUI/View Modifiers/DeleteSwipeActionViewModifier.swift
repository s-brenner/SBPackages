#if canImport(SwiftUI)
fileprivate struct DeleteSwipeActionViewModifier: ViewModifier {
    
    let onDelete: () -> Void
    
    func body(content: Content) -> some View {
        content
            .swipeActions(edge: .trailing) {
                Button(role: .destructive) {
                    onDelete()
                } label: {
                    Label("Delete", systemImage: "trash")
                }
            }
    }
}

extension View {
    
    public func deleteSwipeAction(onDelete: @escaping () -> Void) -> some View {
        modifier(DeleteSwipeActionViewModifier(onDelete: onDelete))
    }
}
#endif
