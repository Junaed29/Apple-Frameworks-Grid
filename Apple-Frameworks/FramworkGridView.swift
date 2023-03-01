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
        LazyVGrid(columns: columns) {
            
            ForEach(MockData.frameworks, id: \.self) { item in
                FrameworkTitleView(name: item.name, imageName: item.imageName)
            }
            
            
        }
    }
}

struct FramworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FramworkGridView()
    }
}


struct FrameworkTitleView: View {
    let name: String 
    let imageName: String
    
    var body: some View{
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
