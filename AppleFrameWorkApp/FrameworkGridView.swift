//
//  ContentView.swift
//  AppleFrameWorkApp
//
//  Created by Ritika Gupta on 02/01/25.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
            LazyVGrid(columns: columns) {
                ForEach(MockData.frameworks, id: \.name) { framework in
                    FrameWorkTitleView(framework: framework)
                }
            }
        .padding()
    }
}

#Preview {
    FrameworkGridView()
}
