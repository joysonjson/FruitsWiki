//
//  ContentView.swift
//  Fructus
//
//  Created by Joyson P S on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    
    private var data: [Fruit] = fruitsData
    @State private var isShowingSettings:Bool = false
    
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
            .navigationBarItems(trailing:            Button {
                isShowingSettings = true
            } label: {
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
