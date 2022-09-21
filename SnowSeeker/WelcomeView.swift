//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by Shubham Rawal on 21/09/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .frame(width: 500, height: 200)
                    .background(
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                    )
                    .foregroundColor(.white.opacity(0.7))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .stroke(.white.opacity(0.7))
                            .shadow(radius: 10)
                    )
                
                VStack {
                    Text("Welcome to Snowseeker!")
                        .font(.largeTitle)
                    
                    Text("Please select a resort from the left-hand menu\n Swipe from the left edge to show it.")
                        .multilineTextAlignment(.center)
                        
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
