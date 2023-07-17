//
//  ContentView.swift
//  Reader
//
//  Created by Kellie Stein on 1/14/21.
//

import SwiftUI
import SafariServices

struct ContentView: View {
    var body: some View {
        TabView {
            ReadView()
            .tabItem {
                Image(systemName: "doc.text.fill")
                Text("Read")
            }
            FaveView()
            .tabItem {
                Image(systemName: "star.fill")
                Text("Favorites")
            }
            Settings()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
