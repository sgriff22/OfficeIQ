//
//  ScoreViewModel.swift
//  Office IQ
//
//  Created by Stacy Griffy on 12/30/24.
//

import Foundation

struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int

  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
