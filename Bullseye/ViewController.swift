//
//  ViewController.swift
//  Bullseye
//
//  Created by Juan Francisco Dorado Torres on 20/09/20.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var targetLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var roundLabel: UILabel!
  var currentValue: Int = 0
  var targetValue = 0
  var score = 0
  var round = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
  }

  @IBAction func showAlert() {
    let difference = abs(targetValue - currentValue)
    let points = 100 - difference
    score += points

    let title: String
    if difference == 0 {
      title = "Perfect!"
    } else if difference < 5 {
      title = "You almost had it!"
    } else if difference < 10 {
      title = "Pretty good!"
    } else {
      title = "Not even close..."
    }

    let message = "You scored \(points) points"
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
    startNewRound()
  }

  @IBAction func sliderMoved(_ slider: UISlider) {
    currentValue = lroundf(slider.value)
  }

  func startNewRound() {
    targetValue = Int.random(in: 1...100)
    currentValue = Int.random(in: 1...100)
    slider.value = Float(currentValue)
    round += 1
    updateLabels()
  }

  func updateLabels() {
    targetLabel.text = "\(targetValue)"
    scoreLabel.text = "\(score)"
    roundLabel.text = "\(round)"
  }
}
