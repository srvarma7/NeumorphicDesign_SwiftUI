//
//  ContentView.swift
//  NeumorphicDesign
//
//  Created by Sai Raghu Varma Kallepalli on 15/9/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ButtonView()
            
            Text("Hello, world!")
                .foregroundColor(.red)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
