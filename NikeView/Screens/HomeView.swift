//
//  HomeView.swift
//  NikeView
//
//  Created by Joe Vargas on 4/4/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var hvm: HomeViewModel
    var offsetY: CGFloat = 100
    
    var body: some View {
        VStack {
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
            ZStack {
                Image("1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Just In")
                            .font(.subheadline)
                        Text("Shop Mens and Women's apparal")
                            .font(.largeTitle)
                            .bold()
                    }
                    .foregroundColor(.white)
                    .offset(y: offsetY)
                    Spacer()
                }//: HStack
                .padding()
                
            }//: ZStack
            
            // MARK: - What's new section / Latest arrivals from Nike
            
            // MARK: - Feature article cards
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(hvm: HomeViewModel())
    }
}
