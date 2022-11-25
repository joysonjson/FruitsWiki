//
//  FruitesNutrientView.swift
//  Fructus
//
//  Created by Joyson P S on 25/11/22.
//

import SwiftUI

struct FruitesNutrientView: View {
    var fruite: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutrition Value per 100g") {
                ForEach(0..<nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                          Image(systemName: "info.circle")
                          Text(nutrients[item])
                        }
                        .foregroundColor(fruite.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruite.nutrition[item])
                          .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitesNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitesNutrientView(fruite: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
