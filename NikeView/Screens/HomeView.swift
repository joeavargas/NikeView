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
        ScrollView(.vertical) {
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
                CardView(hvm: hvm, imageString: "1", headline: "Just in", subHeadline: "Shop Mens and Women's apparal", hasLinkedArticle: false)
                
                // MARK: - What's new section
                HStack {
                    VStack(alignment: .leading) {
                        Text("What's new")
                            .fontWeight(.medium)
                        Text("The latest arrivals from Nike")
                            .font(.title)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                }//: VStack
                .padding()
                
                // MARK: - Latest arrivals from Nike / Horizontal scroll
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1..<10) { _ in
                            ShoeCardView(imageString: "Air Jordan XXXVI", shoeName: "Air Jordan XXXVI", shoePrice: 250.00)
                        }
                    }
                }
                
                // MARK: - Feature article cards
                
                CardView(hvm: hvm, imageString: "2", headline: "2021 Yardrunners", subHeadline: "Making a limitless legacy", hasLinkedArticle: true)

                CardView(hvm: hvm, imageString: "3", headline: "Center Court with Nike Basketball", subHeadline: "All Basketball, All The Time", hasLinkedArticle: true)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(hvm: HomeViewModel())
    }
}
