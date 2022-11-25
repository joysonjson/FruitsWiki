//
//  SettingsView.swift
//  Fructus
//
//  Created by Joyson P S on 25/11/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing:20) {
//                    Text("Hello, World!")
                    GroupBox {
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                              .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(title: "Frutucs", icon: "info.circle")
                    }
                    // MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(title: "Customization", icon: "paintbrush")
                    ) {
                      Divider().padding(.vertical, 4)
                      
                      Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                      
                      Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                          Text("Restarted".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                        } else {
                          Text("Restart".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(Color.secondary)
                        }
                      }
                      .padding()
                      .background(
                        Color(UIColor.tertiarySystemBackground)
                          .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                      )
                    }
                    
                    
                    GroupBox(
                      label:
                        SettingsLabelView(title: "Application", icon: "apps.iphone")
                    ) {
                      SettingsRowView(name: "Developer", content: "John / Jane")
                      SettingsRowView(name: "Designer", content: "Robert Petras")
                      SettingsRowView(name: "Compatibility", content: "iOS 16")
                      SettingsRowView(name: "Website", linkLabel: "Credo Academy", linkDestination: "credo.academy")
                      SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                      SettingsRowView(name: "SwiftUI", content: "4")
                      SettingsRowView(name: "Version", content: "1.5.0")
                    }
                }
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))

            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
