//
//  ContentView.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/18/24.

//Another way to add custome color
//let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
//let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

import SwiftUI

struct GameView: View {

    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                GameColor.main
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    
                    Text("Question")
                        .font(.custom("Special Elite", size: 32))
                    
                    Text(viewModel.questionProgressText)
                        .font(.custom("Special Elite", size: 28))
                        .padding(.bottom, 5)
                    
                    QuestionView(question: viewModel.currentQuestion)
                    
                    Spacer()
                }
            }
            .foregroundColor(GameColor.accent)
            .environmentObject(viewModel)
            .navigationDestination(isPresented: .constant(viewModel.gameIsOver)) {
                            ScoreView(viewModel: ScoreViewModel(
                                correctGuesses: viewModel.correctGuesses,
                                incorrectGuesses: viewModel.incorrectGuesses
                    ))
                }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    GameView()
}


