//
//  GameViewModel.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/27/24.
//

import SwiftUI

// 1
class GameViewModel: ObservableObject {

  // MARK: - Published properties
  // 2
  @Published private var game = Game()

  // MARK: - Internal properties
  // 3
  var currentQuestion: Question {
     game.currentQuestion
  }
  // 4
  var questionProgressText: String {
    "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
  }
    
// 1
   var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var correctGuesses: Int {
      game.guessCount.correct
    }
      
    var incorrectGuesses: Int {
      game.guessCount.incorrect
    }
    
    var gameIsOver: Bool {
      game.isOver
    }
    
    // MARK: - Internal Methods
    // 2
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    // 3
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
         if let guessedIndex = game.guesses[currentQuestion] {
             if guessedIndex != optionIndex {
                 return GameColor.accent
             } else if guessedIndex == currentQuestion.correctAnswerIndex {
                 return GameColor.correctGuess
             } else {
                 return GameColor.incorrectGuess
             }
         } else {
             return GameColor.accent
         }
     }
}
