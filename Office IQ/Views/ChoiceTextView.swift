//
//  ChoiceTextView.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/25/24.
//
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    @EnvironmentObject var viewModel: GameViewModel
    
    var body: some View {
        Text(choiceText)
            .frame(width: 280)
            .padding()
            .foregroundColor(GameColor.accentWhite)
            .font(.custom("Special Elite", size: 20))
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}

