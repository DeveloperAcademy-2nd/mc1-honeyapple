//
//  BrowserContainer.swift
//  BadBoyCBL
//
//  Created by 윤범태 on 2023/03/31.
//

import SwiftUI

struct BrowserContainer: View {
    @State var showIntro2 = false
    @State var showBigIdea = false
    @State var showEssentialQuestion = false
    @State var showChallengeStatement = false
    @State var showInvestigate1 = false
    @State var showInvestigate2 = false
    @State var showInvestigate3 = false
    @State var showSolution1 = false
    @State var showSolution2 = false
    
    var body: some View {
        ZStack {
            Image("XP")
                .resizable()
                .scaledToFill()
            VStack {
                Image("Test_HeaderTitle")
                    .offset(CGSize(width: 0, height: 28))
                Spacer()
                Image("Footer")
                    .offset(CGSize(width: 0, height: -22))
            }
            
            /*
             ZStack 안에
             1) Browser
             2) Button
             .animation
             */
            if showIntro2 {
                BrowserWithNextButton(
                    slideName: "in_intro1",
                    offsetX: 360,
                    offsetY: 310) {
                    showBigIdea = true
                }
            }
            
            // Big Idea
            if showBigIdea {
                BrowserWithNextButton(
                    slideName: "in_bigIdea",
                    offsetX: 410,
                    offsetY: -180) {
                    showEssentialQuestion = true
                }
            }
            
            // Essential Question
            if showEssentialQuestion {
                BrowserWithNextButton(
                    slideName: "in_essentialQ",
                    offsetX: 432,
                    offsetY: 317) {
                    showChallengeStatement = true
                }
            }
            
            // Challenge Statement
            if showChallengeStatement {
                BrowserWithNextButton(
                    slideName: "in_challengeStatement",
                    offsetX: -442,
                    offsetY: 236) {
                    showInvestigate1 = true
                }
            }
            
            // Investigate 1
            if showInvestigate1 {
                BrowserWithNextButton(
                    slideName: "in_investigation1",
                    offsetX: 430,
                    offsetY: 85) {
                    showInvestigate2 = true
                }
            }
            
            // Investigate 2
            if showInvestigate2 {
                BrowserWithNextButton(
                    slideName: "in_investigation2",
                    offsetX: 388,
                    offsetY: 208) {
                    showSolution1 = true
                }
            }
            
            // Solution 1
            if showSolution1 {
                BrowserWithNextButton(
                    slideName: "in_solution1",
                    offsetX: 424,
                    offsetY: 318) {
                    showSolution2 = true
                }
            }
            
            // Solution 2
            if showSolution2 {
                BrowserWithNextButton(
                    slideName: "in_solution2",
                    offsetX: 430,
                    offsetY: -198) {
                    // TODO: Outro로 이동
                }
            }
            
            // Outro 1
            
            
            // Outro 2
        }.onAppear {
            showIntro2 = true
        }
        
        
    }
}

struct BrowserContainer_Previews: PreviewProvider {
    static var previews: some View {
        BrowserContainer()
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
            .previewInterfaceOrientation(.landscapeLeft)
            .previewLayout(.device)
    }
}
