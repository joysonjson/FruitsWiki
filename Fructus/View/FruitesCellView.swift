//
//  FruitesCellView.swift
//  Fructus
//
//  Created by Joyson P S on 24/11/22.
//

import SwiftUI

struct FruitesCellView: View {
    var fruite: Fruit
    var body: some View {
        HStack{
            Image(fruite.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .white.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruite.gradientColors), startPoint: .top, endPoint: .bottom)
                        .cornerRadius(8)
                )
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruite.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(fruite.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            })
        } //: HSTACK
    }
}

struct FruitesCellView_Previews: PreviewProvider {
    static var previews: some View {
        FruitesCellView(fruite: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
