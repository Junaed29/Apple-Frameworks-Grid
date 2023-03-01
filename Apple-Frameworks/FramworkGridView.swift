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

    var body: some View {
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { item in
                        FrameworkTitleView(framwork: item)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        
    }
}

struct FramworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FramworkGridView()
    }
}



struct FrameworkTitleView: View {
    let framwork: Framework


    var body: some View {
        VStack {
            Image(framwork.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)

            Text(framwork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
