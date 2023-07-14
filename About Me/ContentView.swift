//
//  ContentView.swift
//  About Me
//
//  Created by litzy on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var aboutMe = ""
    var body: some View {
        ZStack {
            Color(hue: 0.156, saturation: 0.336, brightness: 0.99)
                .ignoresSafeArea()
            VStack (alignment: .center, spacing: 18) {
                Image("sun")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/85.0/*@END_MENU_TOKEN@*/)
                    
            Text("Hi, My name is Litzy Mondragon")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.96, green: 0.5, blue: 0.45, opacity: 5.0))
                .shadow(radius: /*@START_MENU_TOKEN@*/16/*@END_MENU_TOKEN@*/)
            Image("oso")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            Text(aboutMe)
            Button("Click to learn new fact") { aboutMe = "I have a dog named Oso!"
            }
            .font(.headline)
            .buttonStyle(.borderedProminent)
            .tint(Color(hue: 0.045, saturation: 0.561, brightness: 0.744))
            .shadow(radius: /*@START_MENU_TOKEN@*/12/*@END_MENU_TOKEN@*/)
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
