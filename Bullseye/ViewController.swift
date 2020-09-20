//
//  ViewController.swift
//  Bullseye
//
//  Created by Juan Francisco Dorado Torres on 20/09/20.
//

import UIKit

class ViewController: UIViewController {
  var currentValue: Int = 0

  @IBAction func showAlert() {
    let message = "The value of the slider is: \(currentValue)"
    let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
  }

  @IBAction func sliderMoved(_ slider: UISlider) {
    currentValue = lroundf(slider.value)
  }
}
