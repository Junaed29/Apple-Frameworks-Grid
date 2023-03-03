//
//  FramworkGridView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 1/3/23.
//

import SwiftUI

struct FramworkGridView: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @StateObject var viewModel = FramworkGridViewModel()
    

    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framwork in
                        FrameworkTitleView(framwork: framwork)
                            .onTapGesture {
                                viewModel.selectedFramwork = framwork
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FramworkDetailView(
                    framwork: viewModel.selectedFramwork ?? MockData.sampleFramework,
                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
    }
}

struct FramworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FramworkGridView()
    }
}



