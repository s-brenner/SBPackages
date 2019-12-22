#if canImport(UIKit)

import UIKit

extension UIScrollView {
    
    @objc public final func handleKeyboardNotification(_ notification: Notification) {
        
        guard let notification = KeyboardNotification(notification) else { return }
        adjustForKeyboardNotification(notification)
    }
    
    public final func adjustForKeyboardNotification(_ notification: UIResponder.KeyboardNotification) {

        let bottom = notification.event == .willShow ? notification.frameEnd.height - (superview?.safeAreaInsets.bottom ?? 0) : 0

        UIView.animate(withDuration: notification.animationDuration) { [weak self] in

            guard let self = self else { return }
            self.contentInset.bottom = bottom
            self.verticalScrollIndicatorInsets.bottom = bottom
        }
    }
}

#endif