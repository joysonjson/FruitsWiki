//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Joyson P S on 25/11/22.
//

import SwiftUI

struct SettingsLabelView: View {
    var title: String
    var icon:String
    var body: some View {
        HStack {
            Text(title.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName:icon )
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(title: "Frutucs", icon: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
