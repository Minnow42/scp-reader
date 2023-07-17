//
//  FaveView.swift
//  Reader
//
//  Created by Kellie Stein on 4/13/23.
//

import SwiftUI

struct FaveView: View {
    
    var body: some View {
        
        NavigationView {
            Text("No favorites yet")
                .navigationBarTitle("Favorites")
        }
    }
}

struct FaveView_Previews: PreviewProvider {
    static var previews: some View {
        FaveView()
    }
}
