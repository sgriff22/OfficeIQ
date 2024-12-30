//
//  BottomTextView.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/27/24.
//
import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Text(str)
                .font(.custom("Special Elite", size: 24))
                .padding()
                .background(GameColor.accent)
                .foregroundColor(GameColor.accentWhite)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
        }
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
