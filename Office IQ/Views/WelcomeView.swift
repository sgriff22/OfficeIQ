//
//  WelcomeView.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/27/24.
//
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main
                    .ignoresSafeArea()
              VStack {
                  Text("Welcome to Office IQ!")
                      .font(.custom("Special Elite", size: 60))
                      .multilineTextAlignment(.center)
                      .padding(.bottom, -25)
                     
                  
                  Image("OfficeLogo")
                      .resizable()
                      .scaledToFit()
                      .frame(width: 280, height: 150)
                      .padding(.bottom, -12)
                  
                  Text("Test your knowledge of Dunder Mifflin, relive the best moments, and see if you have what it takes to be the ultimate The Office fan!")
                      .font(.custom("Special Elite", size: 20))
                      .padding()
                      .multilineTextAlignment(.center)
                      .background(GameColor.accentWhite)
                      .lineSpacing(4)
                      .padding(.bottom)
                  
                  NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Let's Do It!")
                  })
                  
                  Text("“That's what she said!”")
                      .font(.custom("Special Elite", size: 18))
                      .italic()
                      .padding(.top, 12)
                      .foregroundColor(GameColor.accentWhite)
              }
          }
        } .foregroundColor(GameColor.accent)
    }
}

#Preview {
    WelcomeView()
}

