//
//  ContentView.swift
//  PopUpWindowSwiftUIExample
//
//  Created by John Codeos on 11/10/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopUp: Bool = false

    init() {
        UINavigationBar.appearance().barTintColor = UIColor(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
    }

    var body: some View {
        ZStack {
            NavigationView {
                ZStack(alignment: .center) {
                    Color(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1)).ignoresSafeArea()
                    Button(action: {
                        withAnimation(.linear(duration: 0.3)) {
                            showPopUp.toggle()
                        }
                    }, label: {
                        Text("Show PopUp Window")
                    })
                        .padding()
                        .background(Color(#colorLiteral(red: 0.6196078431, green: 0.1098039216, blue: 0.2509803922, alpha: 1)))
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("PopUpWindowSwiftUIExample")
                .foregroundColor(Color.white)
            }

            PopUpWindow(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", show: $showPopUp)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
