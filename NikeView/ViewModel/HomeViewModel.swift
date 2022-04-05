//
//  HomeViewModel.swift
//  NikeView
//
//  Created by Joe Vargas on 4/5/22.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    func todaysDate() -> String {
        let today = Date()
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .full
        return formatter1.string(from: today)
    }
    
}
