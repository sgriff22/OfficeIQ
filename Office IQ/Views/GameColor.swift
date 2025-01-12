//
//  GameColor.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/27/24.
//
import SwiftUI

struct GameColor {
    static let main = LinearGradient(gradient: Gradient(colors: [Color(Color(red: 44/255, green: 100/255, blue: 163/255)), Color(red: 7/255, green: 36/255, blue: 71/255)]),startPoint: .top, endPoint: .bottom)
    static let accent = Color(red: 211/255, green: 171/255, blue: 102/255)
    static let correctGuess = Color(red: 96/255, green: 179/255, blue: 118/255)
    static let incorrectGuess = Color(red: 186/255, green: 101/255, blue: 101/255)
    static let accentWhite = Color(red: 241/255, green: 241/255, blue: 241/255)
}
