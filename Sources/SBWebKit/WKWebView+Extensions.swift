#if canImport(WebKit)
extension WKWebView {
    
    /// - Author: Scott Brenner | SBWebKit
    public var htmlString: String? {
        get async {
            try? await evaluateJavaScript("document.documentElement.outerHTML") as? String
        }
    }
    
    /// - Author: Scott Brenner | SBWebKit
    public func load(_ urlString: String) -> WKNavigation? {
        guard let url = URL(string: urlString)
        else { return nil }
        return load(url)
    }
    
    /// - Author: Scott Brenner | SBWebKit
    public func load(_ url: URL) -> WKNavigation? {
        load(URLRequest(url: url))
    }
    
    /// - Author: Scott Brenner | SBWebKit
    public func printHTML() async {
        guard let html = await htmlString, let title
        else { return }
        print("******************************************************************************************************")
        print("***** Begin HTML: \(title)")
        print("******************************************************************************************************")
        print(html)
        print("******************************************************************************************************")
        print("***** End HTML: \(title)")
        print("******************************************************************************************************")
    }
}
#endif
