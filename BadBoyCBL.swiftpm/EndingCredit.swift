//
//  EndingCredit.swift
//  BadBoyCBL
//
//  Created by 황지우2 on 2023/03/30.
//

import SwiftUI

struct EndingCredit: View {
    var body: some View {
        ZStack{
            Image("엔딩크레딧배경만")
                .resizable()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .scaledToFill()
            HStack{
                Image("엔딩크레딧이미지만")
                    .resizable()
                    .frame(width: 694,  height: 513)
                    .scaledToFill()
                    .offset(x: -320, y: 100)
                Image("엔딩크레딧텍스트")
                    .resizable()
                    .frame(width: 712,  height: 1862)
                    .scaledToFill()
                    .offset(x: -320, y: 100)
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
