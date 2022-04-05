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
            HStack {
                VStack(alignment: .leading) {
                    Text("Discover")
                        .font(.system(size: 32))
                        .fontWeight(.medium)
                    Text(hvm.todaysDate())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }//: VStack
                Spacer()
            }//: HStack
            .padding()
            
            // MARK: - Headline card
            
            // MARK: - What's new section / Latest arrivals from Nike
            
            // MARK: - Feature article cards
        }//: ZStack
    }
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(hvm: HomeViewModel())
    }
}
