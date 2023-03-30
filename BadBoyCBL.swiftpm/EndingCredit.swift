//
//  EndingCredit.swift
//  BadBoyCBL
//
//  Created by 황지우2 on 2023/03/30.
//

import SwiftUI

struct EndingCredit: View {
    @State var started = false;
    
    var body: some View {
        ZStack {
            // Background Image
            Image("엔딩크레딧배경만")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                .edgesIgnoringSafeArea(.all)
                
            ZStack {
                // Image that moves from bottom to top
                Image("엔딩크레딧텍스트")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 712, height: 1862)
                    .offset(x: 330, y: started ? -600 : (UIScreen.main.bounds.height / 2) + 200)
                    .onTapGesture {
                        withAnimation(
                            .linear(duration: 20)
                        ) {
                            started = true
                        }
                    }
            }
        }
    }
}

struct EndingCredit_Previews: PreviewProvider {
    static var previews: some View {
        EndingCredit()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
