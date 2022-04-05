//
//  MainView.swift
//  NikeView
//
//  Created by Joe Vargas on 4/4/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("", systemImage: "house")
                }
            ShopView()
                .tabItem{
                    Label("", systemImage: "bag")
                }
            FavoritesView()
                .tabItem{
                    Label("", systemImage: "heart")
                }
            CartView()
                .tabItem{
                    Label("", systemImage: "cart")
                }
            SettingsView()
                .tabItem{
                    Label("", systemImage: "person")
                }
        }//: TabView
        .accentColor(.pink)
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
