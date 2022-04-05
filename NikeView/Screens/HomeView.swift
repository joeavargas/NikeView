//
//  HomeView.swift
//  NikeView
//
//  Created by Joe Vargas on 4/4/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var hvm: HomeViewModel

    var body: some View {
        ZStack {
            VStack {
                Text("Discover")
                Text(hvm.todaysDate())
            }
        }
    }
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(hvm: HomeViewModel())
    }
}
