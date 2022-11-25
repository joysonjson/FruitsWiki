//
//  FruiteDetailsView.swift
//  Fructus
//
//  Created by Joyson P S on 24/11/22.
//

import SwiftUI

struct FruiteDetailsView: View {
    //MARK: -PROPERTIES
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    //MARK: Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false){
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .center, spacing: 20, content: {
                    VStack (alignment: .leading, spacing: 20 , content: {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // nutetients
                        FruitesNutrientView(fruite: fruit)
                        // subheadlie
                        Text("Learn More about \(fruit.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // descirpiotn
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //lik
                        SourceLinkView()
                            .padding(.top,20)
                            .padding(.bottom,12)
                    })
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                })
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            //
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

struct FruiteDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruiteDetailsView(fruit: fruitsData[1])
    }
}
