//
//  AFCrossButtonView.swift
//  Apple-Frameworks
//
//  Created by Junaed Muhammad Chowdhury on 4/3/23.
//

import SwiftUI

struct AFCrossButtonView: View {
    var body: some View {
        Image(systemName: "xmark")
            .imageScale(.large)
            .foregroundColor(Color(.label))
            .frame(width: 44, height: 44)
            .padding()
    }
}

struct AFCrossButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AFCrossButtonView()
    }
}
