//
//  ContentView.swift
//  Fructus
//
//  Created by Joyson P S on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    
    private var data: [Fruit] = fruitsData
    var body: some View {
//        FruitesCellView(fruite: )
        NavigationView{
            List {
                ForEach(data.shuffled()) { fruite in
                    NavigationLink(destination: FruiteDetailsView(fruit: fruite)) {
                        FruitesCellView(fruite: fruite)
                    }
                }
            }
            .navigationTitle("Fruites")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
