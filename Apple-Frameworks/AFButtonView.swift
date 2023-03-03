//
//  AFButtonView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 2/3/23.
//

import SwiftUI

struct AFButtonView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300, height: 50)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(10)
    }
}

struct AFButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AFButtonView(title: "Learn More")
    }
}
