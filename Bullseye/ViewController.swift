//
//  ViewController.swift
//  Bullseye
//
//  Created by Juan Francisco Dorado Torres on 20/09/20.
//

import UIKit

class ViewController: UIViewController {
  @IBAction func showAlert() {
    let alert = UIAlertController(title: "Hello World", message: "This is my first app!", preferredStyle: .alert)
    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
  }
}
