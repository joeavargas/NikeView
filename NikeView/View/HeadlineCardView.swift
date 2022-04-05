//
//  HeadlineCardView.swift
//  NikeView
//
//  Created by Joe Vargas on 4/5/22.
//

import SwiftUI

struct HeadlineCardView: View {
    
    var imageString: String
    var headline: String
    var subHeadline: String
    
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
        HeadlineCardView(imageString: "1", headline: "Headline", subHeadline: "Subheadline")
    }
}
