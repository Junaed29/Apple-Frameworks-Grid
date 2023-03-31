//
//  FramworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 3/3/23.
//

import SwiftUI


final class FramworkGridViewModel: ObservableObject{
    var selectedFramwork: Framework?{
        didSet{ isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
