//
//  FruitCardView.swift
//  Fructus
//
//  Created by Joyson P S on 24/11/22.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: -PROPERTIES
    @State private var isAnimating: Bool = false
    
    //MARK: Body
    var body: some View {
        ZStack {
            VStack(spacing:20){
                // FRUIT: IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .white.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text("BlueBerry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .white.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text("Blue Berries are sweep not sdf  asdf sad fsdf as dfsadf sasdf dsfadsfads fa dsfasdf asdf.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }  // : VSTACK
        } // : ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
        
    }
}

//MARK: Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.sizeThatFits)
    }
}
