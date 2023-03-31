//
//  BrowserSeperationExample.swift
//  BadBoyCBL
//
//  Created by 윤범태 on 2023/03/30.
//

import SwiftUI

struct BrowserSeperationExample: View {
    @State var show = false
    
    let browserWidth: CGFloat = 1116
    
    var body: some View {
        ZStack {
            Image("XP")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Button("eek") {
                show = true
            }
            VStack {
                Image("Test_HeaderTitle")
                    .offset(CGSize(width: 0, height: 28))
                Spacer()
                Image("Footer")
                    .offset(CGSize(width: 0, height: -22))
            }
            if show {
                VStack(spacing: 0) {
                    Image("Browser Head")
                        .resizable()
                        .scaledToFit()
                        .frame(width: browserWidth)
                    HStack(spacing: 0) {
                        Image("in_intro1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: browserWidth - 25)
                        Image("Browser ScrollBar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            
                    }
                    Image("Browser Footer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: browserWidth)
                }
                .transition(AnyTransition.scale.animation(.easeInOut))
                .offset(CGSize(width: 0, height: 15))
            }
        }
    }
}

struct BrowserSeperationExample_Previews: PreviewProvider {
    static var previews: some View {
        BrowserSeperationExample()
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
            .previewInterfaceOrientation(.landscapeLeft)
            .previewLayout(.device)
    }
}
