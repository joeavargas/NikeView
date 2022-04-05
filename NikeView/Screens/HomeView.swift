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
                ZStack {
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
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
                            VStack {
                                Image("Air Jordan XXXVI")
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .aspectRatio(contentMode: .fill)
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("Air Jordan XXXVI")
                                            .padding(.bottom, 3)
                                        Text("$150")
                                    }
                                    Spacer()
                                }
                                .padding()
                            }
                        }
                    }
                }
                
                // MARK: - Feature article cards
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(hvm: HomeViewModel())
    }
}
