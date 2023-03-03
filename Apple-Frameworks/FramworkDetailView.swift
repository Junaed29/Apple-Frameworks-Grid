//
//  FramworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 2/3/23.
//

import SwiftUI

struct FramworkDetailView: View {
    var framwork: Framework
    @Binding var isShowingDetailView: Bool

    var body: some View {
        VStack {

            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundColor(Color(.label))
                        .frame(width: 44, height: 44)
                }
            }
            .padding()


            Spacer()

            FrameworkTitleView(framwork: framwork)

            Text(framwork.description)
                .font(.body)
                .padding()

            Spacer()

            Button {

            } label: {
                AFButtonView(title: "Learn More")
            }

        }

    }
}

struct FramworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FramworkDetailView(framwork: MockData.sampleFramework, isShowingDetailView: .constant(true))
    }
}
