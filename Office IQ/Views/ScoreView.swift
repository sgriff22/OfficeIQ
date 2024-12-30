//
//  ScoreView.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/27/24.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
    ZStack {
      GameColor.main.ignoresSafeArea()
      VStack{
          Spacer()
          
          Text("Final Score:")
              .font(.custom("Special Elite", size: 48))
              .multilineTextAlignment(.center)
              .padding(.bottom, -10)
            
          Text("\(viewModel.percentage)%")
            .font(.custom("Special Elite", size: 48))
          
          Spacer()
   
          Image("Dundie")
              .resizable()
              .scaledToFit()
              .frame(height: 250)
       
          Spacer()
          
          VStack {
              Text("\(viewModel.correctGuesses) ✅")
                  .padding(1)
              Text("\(viewModel.incorrectGuesses) ❌")
          }.font(.custom("Special Elite", size: 35))
          
          NavigationLink(
            destination: GameView(),
            label: { BottomTextView(str: "Re-Take Quiz")
            })
          
          Spacer()
      }
      .foregroundColor(.white)
      .navigationBarHidden(true)
    }
  }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
