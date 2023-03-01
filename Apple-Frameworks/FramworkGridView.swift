//
//  FramworkGridView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 1/3/23.
//

import SwiftUI

struct FramworkGridView: View {
    
    
    var body: some View {
        VStack {
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")

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
        }
    }
}
