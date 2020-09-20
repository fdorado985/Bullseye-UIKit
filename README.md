# Bull's Eye (UIKit)

[![Language - Swift](https://img.shields.io/badge/Language-Swift-orange)](https://swift.org/about/)
[![IDE - Xcode 12](https://img.shields.io/badge/IDE-Xcode%2012-purple)](https://developer.apple.com/xcode/)

## Description

The objective of the game is to put the bullseye, which is on a slider that goes from 1 to 100, as close to a randomly chosen target value as you can.

When you’re confident of your estimate, you press the “Hit Me!” button and a pop-up will tell you what your score is. The closer to the target value you are, the more points you score. After you dismiss the alert pop-up, a new round begins with a new random target. The game repeats until the player presses the “Start Over” button, which resets the score to 0.

## To-Do List Programming

* [x] Put a button on the screen an label it "Hit Me!"
* [x] When the player presses the Hit Me! button, the app has to show an alert pop-up to inform the player how well he or she did. Somehow, you have to calculate the score and put that into this alert.
* [ ] Put text on the screen, such as the “Score:” and “Round:” labels. Some of this text changes over time; for example, the score, which increases when the player scores points.
* [x] Put a slider on the screen with a range between the values 1 and 100.
* [x] Read the value of the slider after the user presses the Hit Me! button.
* [ ] Generate a random number at the start of each round and display it on the screen. This is the target value.
* [ ] Compare the value of the slider to that random number and calculate a score based on how far off the player is. You show this score in the alert pop-up.
* [ ] Put the Start Over button on the screen. Make it reset the score and put the player back to the first round.
* [ ] Put the app in landscape orientation.
* [ ] Make it look pretty.