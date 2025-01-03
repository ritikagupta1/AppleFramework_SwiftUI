//
//  FrameworkDetailView.swift
//  AppleFrameWorkApp
//
//  Created by Ritika Gupta on 03/01/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
   
    @State var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingModal: $isShowingDetailView)
            
            Spacer()
            
            FrameWorkTitleView(framework:  framework)
            
            Text(framework.description)
                .font(.body)
                .foregroundStyle(Color.white)
                .padding()
            
           Spacer()
            
            Button {
                isShowingSafariView = true
            }label: {
                AppleFrameworkButton(title: "Learn More")
            }
            .padding(.bottom, 20)
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://developer.apple.com/")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true))
}
