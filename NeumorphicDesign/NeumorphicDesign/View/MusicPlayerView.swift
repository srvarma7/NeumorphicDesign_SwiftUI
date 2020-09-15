//
//  MusicPlayerView.swift
//  NeumorphicDesign
//
//  Created by Sai Raghu Varma Kallepalli on 15/9/20.
//

import SwiftUI

struct MusicPlayerView: View {
    
    private var whiteShadow = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    private var midW = Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private var mid = Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
    private var midG = Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
    private var grayShadow = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    
    private var radius: CGFloat = 10
    private var xy: CGFloat = 8
    
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            HStack {
                ButtonView(imageName: "arrow.left", size: 30) {
                    
                }
                Spacer()
                Text("Playing now")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(mid)
                Spacer()
                ButtonView(imageName: "line.horizontal.3", size: 30) {
                    
                }
            }.padding([.top], 50)
            .padding([.leading, .trailing], 30)
            
            Spacer()
            
            ZStack {
                Image("album")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipShape(Circle())
                    .padding(30)
                    .shadow(color: grayShadow, radius: radius-4, x: xy+5, y: xy+5)
                    .shadow(color: whiteShadow, radius: radius-4, x: -xy-5, y: -xy-5)
            }
//            .clipShape(Circle().inset(by: 6))
//            .shadow(color: midG, radius: radius-4, x: xy+5, y: xy+5)
//            .shadow(color: midW, radius: radius-4, x: -xy-5, y: -xy-5)
            Text("Start Gazing!!")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(mid)
            
            Text("Kido")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(mid)
            
            
            Spacer()
            
            Slider(value: $sliderValue, in: 0...1, step: 0.1)
                .accentColor(Color(#colorLiteral(red: 0.3038078249, green: 0.6803058386, blue: 0.757007122, alpha: 1)))
                //.colorMultiply(.purple)
                .padding()
                .shadow(color: grayShadow, radius: 10, x: 8, y: 8)
                .shadow(color: whiteShadow, radius: 10, x: -8, y: -8)
                .animation(.spring())
                
            Spacer()
            
            HStack {
                ButtonView(imageName: "backward.fill", size: 50) {
                    
                }
                Spacer()
                ButtonView(imageName: "play.fill", size: 60) {
                    
                }
                Spacer()
                ButtonView(imageName: "forward.fill", size: 50) {
                    
                }
            }.padding([.bottom], 50)
            .padding([.leading, .trailing], 30)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(midW)
        .ignoresSafeArea()
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
