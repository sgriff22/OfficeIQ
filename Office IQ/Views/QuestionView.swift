//
//  QuestionView.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/27/24.
//
import SwiftUI

struct QuestionView: View {
  
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .lineSpacing(4)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .padding(20)
                .background(GameColor.accentWhite)
                .font(.custom("Special Elite", size: 20))
                .padding(.bottom)
            
            ForEach(question.possibleAnswers.indices, id: \.self) { answerIndex in
                Button(action: {
                    print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                    viewModel.makeGuess(atIndex: answerIndex)
                }) {
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        .background(viewModel.color(forOptionIndex: answerIndex))
                        .cornerRadius(10)
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                        .padding(.bottom, 5)
                }
                .disabled(viewModel.guessWasMade)
            }
            
            if viewModel.guessWasMade {
                Button(action: { viewModel.displayNextScreen() }) {
                    BottomTextView(str: "Next").padding(.top)
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
      QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
