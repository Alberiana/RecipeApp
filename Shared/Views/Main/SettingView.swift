//
//  SettingView.swift
//  RecipeApp
//
//  Created by Alberiana on 3.9.22.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView{
            Text("v1.0.0")
            .navigationTitle("Setting")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
