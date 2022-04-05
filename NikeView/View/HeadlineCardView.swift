//
//  HeadlineCardView.swift
//  NikeView
//
//  Created by Joe Vargas on 4/5/22.
//

import SwiftUI

struct HeadlineCardView: View {
    let hvm: HomeViewModel
    var imageString: String
    var headline: String
    var subHeadline: String
    var hasLinkedArticle: Bool
    
    var body: some View {
        ZStack {
            Image(imageString)
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack {
                VStack(alignment: .leading) {
                    Text(headline)
                        .font(.subheadline)
                    Text(subHeadline)
                        .font(.largeTitle)
                        .bold()
                    if hasLinkedArticle {
                        Button(action: hvm.goToArticleLink){
                            Text("Explore")
                                .foregroundColor(.black)
                        }
                        .tint(.white)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.capsule)
                        .controlSize(.large)
                    }
                }
                .foregroundColor(.white)
                .offset(y: 100)
                Spacer()
            }//: HStack
            .padding()
            
        }//: ZStack
    }
}

struct HeadlineCardView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlineCardView(hvm: HomeViewModel(), imageString: "1", headline: "Headline", subHeadline: "Subheadline", hasLinkedArticle: false)
    }
}
