//
//  AppleFrameworkButton.swift
//  AppleFrameWorkApp
//
//  Created by Ritika Gupta on 03/01/25.
//

import SwiftUI

struct AppleFrameworkButton: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red.gradient)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    AppleFrameworkButton(title: "Test Title")
}
