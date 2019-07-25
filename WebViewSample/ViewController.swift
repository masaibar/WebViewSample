import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!

    private let url: URL = URL(string: "https://www.yahoo.co.jp")!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: url))
    }

    override func loadView() {
        super.loadView()
        let config = WKWebViewConfiguration()
        webView = WKWebView(
            frame: .zero,
            configuration: config
        )
        webView.uiDelegate = self
        view = webView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

