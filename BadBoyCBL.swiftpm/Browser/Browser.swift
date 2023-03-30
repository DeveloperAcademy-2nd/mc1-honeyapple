//
//  Browser.swift
//  BadBoyCBL
//
//  Created by 윤범태 on 2023/03/31.
//

import SwiftUI

struct Browser: View {
    @State var show = false
    @State var slideName: String = "in_intro1"
    
    let browserWidth: CGFloat = 1116
    let scrollBarWidth: CGFloat = 25
    
    var body: some View {
        VStack(spacing: 0) {
            Image("Browser Head")
                .resizable()
                .scaledToFit()
                .frame(width: browserWidth)
            HStack(spacing: 0) {
                Image(slideName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: browserWidth - scrollBarWidth)
                Image("Browser ScrollBar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: scrollBarWidth)
                
            }
            Image("Browser Footer")
                .resizable()
                .scaledToFit()
                .frame(width: browserWidth)
        }
        
        // .transition(AnyTransition.scale.animation(.easeInOut))
        // .offset(CGSize(width: 0, height: 15))
        // .onAppear {
        //     show = true
        // }
    }
}

struct Browser_Previews: PreviewProvider {
    static var previews: some View {
        Browser()
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
            .previewInterfaceOrientation(.landscapeLeft)
            .previewLayout(.device)
    }
}
