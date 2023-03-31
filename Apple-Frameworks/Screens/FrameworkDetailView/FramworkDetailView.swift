//
//  FramworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 2/3/23.
//

import SwiftUI

struct FramworkDetailView: View {
    
    @ObservedObject var viewModel : FramworkDetailViewModel

    var body: some View {
        VStack {

            HStack {
                Spacer()
                Button {
                    viewModel.isShowingDetailView.wrappedValue = false
                } label: {
                    AFCrossButtonView()
                }
            }
            
            Spacer()

            FrameworkTitleView(framwork: viewModel.framwork)

            Text(viewModel.framwork.description)
                .font(.body)
                .padding()

            Spacer()

            Link(destination: URL(string: viewModel.framwork.urlString)!) {
                AFButtonView(title: "Learn More")
                    .padding(.bottom,10)
            }
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AFButtonView(title: "Learn More")
//                    .padding(.bottom,10)
//            }
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framwork.urlString)!)
//        }
    }
}

struct FramworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FramworkDetailView(viewModel: FramworkDetailViewModel(framwork: MockData.sampleFramework, isShowingDetailView: .constant(false)))
    }
}


