//
//  FrameWorkTitleView.swift
//  AppleFrameWorkApp
//
//  Created by Ritika Gupta on 02/01/25.
//

import SwiftUI

struct FrameWorkTitleView: View {
    var framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.7)
        }
        
    }
}

#Preview {
    FrameWorkTitleView(framework: MockData.sampleFramework)
}
