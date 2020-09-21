//
//  AboutViewController.swift
//  Bullseye
//
//  Created by Juan Francisco Dorado Torres on 20/09/20.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
  @IBOutlet weak var webView: WKWebView!

  override func viewDidLoad() {
    super.viewDidLoad()
    if let url = Bundle.main.url(forResource: "Bullseye", withExtension: "html") {
      let request = URLRequest(url: url)
      webView.load(request)
    }
  }

  @IBAction func close() {
    dismiss(animated: true, completion: nil)
  }
}
