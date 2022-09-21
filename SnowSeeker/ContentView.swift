//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Shubham Rawal on 21/09/22.
//

import SwiftUI

struct ContentView: View {
    //maintaining an array of resorts by decoding the existing json file from app bundle.
    let resorts: [Resort] = Bundle.main.decode("resorts.json")
    
    var body: some View{
        NavigationView {
            
            //primaryView (by default visible on smaller screen devices).
            List(resorts) { resort in
                NavigationLink {
                    Text(resort.name)
                } label: {
                    Image(resort.country)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 25)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.black, lineWidth: 1)
                        )
                    
                    VStack(alignment: .leading) {
                        Text(resort.name)
                            .font(.headline)
                        Text("\(resort.runs) runs")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Resorts")
            
            
            //secondaryView (by default visible on large screen devices).
            WelcomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
