//
//  FillScreenView.swift
//  BadBoyCBL
//
//  Created by 윤범태 on 2023/03/30.
//

import SwiftUI

struct FillScreenView: View {
    @State var transitionView: Bool = false
    @State var transition1: Bool = false
    @State var transition2: Bool = false
    
    var body: some View {
        // ZStack {
        //     Image("Intro1")
        //         .resizable()
        //         .scaledToFill()
        // }
        
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("ee") {
                    transition1 = true
                }
                Spacer()
            }
            ZStack {
                if transition1 {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.cyan)
                        Button("0") {
                            transition2 = true
                        }
                    }
                    .frame(width: 300, height: 300)
                    .transition(AnyTransition.scale.animation(.easeInOut))
                }
                if transition2 {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.red)
                            .offset(CGSize(width: 10, height: 10))
                        Text("fefhiefhei")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                        Button("1") {
                            // transition1 = false
                            transition2 = false
                        }
                    }
                    .frame(width: 300, height: 300)
                    .transition(AnyTransition.scale.animation(.easeInOut))
                }
                // HStack{
                //     ForEach(0..<7) { index in
                //         Button("버튼 \(index)") {
                //             transitionNumber = index
                //         }
                //     }
                // }
                
            }
            
        }
        
    }
}

struct FillScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FillScreenView()
            .previewInterfaceOrientation(.landscapeLeft)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
