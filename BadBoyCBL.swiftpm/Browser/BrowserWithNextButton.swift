//
//  BrowserWithNextButton.swift
//  BadBoyCBL
//
//  Created by 윤범태 on 2023/03/31.
//

import SwiftUI

struct BrowserWithNextButton: View {
    @State var slideName = "in_intro1"
    @State var offsetX: CGFloat = 0
    @State var offsetY: CGFloat = 0
    @State var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack {
            Browser(show: true, slideName: slideName)
                .offset(CGSize(width: 0, height: 15))
            Button {
                buttonHandler?()
            } label: {
                Image("BlueNextButton")
                    .resizable()
                    .frame(width: 191.1, height: 65.84)

            }
            .offset(x: offsetX, y: offsetY)
            // .padding(.bottom, 15)
        }
        .transition(AnyTransition.scale.animation(.easeInOut))
    }
}

struct Browser_Intro2_Previews: PreviewProvider {
    static var previews: some View {
        BrowserWithNextButton()
    }
}
