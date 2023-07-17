//
//  SettingsView.swift
//  Reader
//
//  Created by Kellie Stein on 4/13/23.
//

import SwiftUI

struct Settings: View {
    @State private var themeIndex = 0
    var themes = ["System", "Light", "Dark"]
    
    @State private var langIndex = 0
    var languages = ["English", "Russian"]
    
    @State private var iconIndex = 0
    var icons = ["Light", "Dark", "Day", "Night"]
    
    @State private var fontIndex = 0
    var fonts = ["San Francisco", "Exo", "Open Sans"]
    
    var body: some View {
        NavigationView {
            
            Form {
                
                Picker(selection: $themeIndex, label: Text("Theme")) {
                    List {
                        ForEach(0 ..< themes.count, id: \.self) {
                            Text(self.themes[$0]).tag($0)
                        }
                    }
                }
                
                Picker(selection: $langIndex, label: Text("Language")) {
                    List {
                        ForEach(0 ..< languages.count, id: \.self) {
                            Text(self.languages[$0]).tag($0)
                        }
                    }
                }
                
                Picker(selection: $iconIndex, label: Text("App Icon")) {
                    List {
                        ForEach(0 ..< icons.count, id: \.self) {
                            Text(self.icons[$0]).tag($0)
                        }
                    }
                }
                
                Picker(selection: $fontIndex, label: Text("Font")) {
                    List {
                        ForEach(0 ..< fonts.count, id: \.self) {
                            Text(self.fonts[$0]).tag($0)
                        }
                    }
                }
            }.navigationBarTitle("Settings")
        }.navigationViewStyle(.stack)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
