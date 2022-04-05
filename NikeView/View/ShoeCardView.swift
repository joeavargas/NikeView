//
//  ShoeCardView.swift
//  NikeView
//
//  Created by Joe Vargas on 4/5/22.
//

import SwiftUI

struct ShoeCardView: View {
    var imageString: String
    var shoeName: String
    var shoePrice: Double
    
    var body: some View {
        VStack {
            Image(imageString)
                .resizable()
                .frame(width: 300, height: 200)
                .aspectRatio(contentMode: .fill)
            HStack {
                VStack(alignment: .leading) {
                    Text(shoeName)
                        .padding(.bottom, 3)
                    Text("\(shoePrice, specifier: "%.2f")")
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ShoeCardView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeCardView(imageString: "Air Jordan XXXVI", shoeName: "Air Jordan XXXVI", shoePrice: 250.00)
    }
}
