//
//  ButtonView.swift
//  NeumorphicDesign
//
//  Created by Sai Raghu Varma Kallepalli on 15/9/20.
//

import SwiftUI

struct ButtonView: View {
    
    private var imageName: String
    private var onTap: () -> ()
    var size: CGFloat
    
    @State var isPressed: Bool = false
    
    init(imageName: String, size: CGFloat, onTap: @escaping () -> Void) {
        self.imageName = imageName
        self.onTap = onTap
        self.size = size
    }
    
    private var whiteShadow = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    private var midW = Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private var mid = Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
    private var midG = Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
    private var grayShadow = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    
    var body: some View {
        Button(action: {
            self.isPressed = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.20, execute: {
                self.isPressed = false
                self.onTap()
            })
            
        }) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.leading, imageName == "play.fill" ? 15 : 0)
                .frame(width: size, height: size)
                .foregroundColor(Color(#colorLiteral(red: 0.2537239261, green: 0.569875903, blue: 0.6320908141, alpha: 1)))
                .padding(size*0.30)
                .background(isPressed ? mid : midW)
                .animation(.spring())
        }
        .gesture(TapGesture()
                    .onEnded(onTap)
        )
        .clipShape(Circle())
        .shadow(color: isPressed ? whiteShadow : grayShadow , radius: 10, x: 8, y: 8)
        .shadow(color: !isPressed ? whiteShadow : grayShadow, radius: 10, x: -8, y: -8)
        .scaleEffect(isPressed ? 0.85 : 1)
        .animation(.spring())
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(imageName: "heart.fill", size: 50, onTap: {})
    }
}
