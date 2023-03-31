//
//  FramworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 31/3/23.
//

import SwiftUI

class FramworkDetailViewModel: ObservableObject {
    var framwork: Framework
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framwork: Framework, isShowingDetailView: Binding<Bool>) {
        self.framwork = framwork
        self.isShowingDetailView = isShowingDetailView
    }
}
