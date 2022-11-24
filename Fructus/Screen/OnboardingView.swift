//
//  OnboardingView.swift
//  Fructus
//
//  Created by Joyson P S on 24/11/22.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: -PROPERTIES
    @State private var isAnimating: Bool = false
    
    //MARK: Body
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}
//MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
