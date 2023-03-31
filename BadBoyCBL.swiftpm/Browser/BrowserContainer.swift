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
    @State var showSolution1 = false
    @State var showSolution2 = false
    @State var showOutro1 = false
    @State var showOutro2 = false
    @State var showEnding = false
    
    @State private var titleAssetName = ""
    private let titleTimeInterval = 0.6
    
    var body: some View {
        ZStack {
            Image("XP")
                .resizable()
                .scaledToFill()
            VStack {
                Image(titleAssetName)
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
                }.onAppear {
                    // titleAssetName = "title_intro"
                }
            }
            
            // Big Idea
            if showBigIdea {
                BrowserWithNextButton(
                    slideName: "in_bigIdea",
                    offsetX: 410,
                    offsetY: -180) {
                    showEssentialQuestion = true
                }.onAppear(perform: {
                    playSound(sound: "big idea", type:"m4a")
                    
                    Timer.scheduledTimer(withTimeInterval: titleTimeInterval, repeats: false) { _ in
                        titleAssetName = "title_bigIdea"
                    }
                })
            }
            
            // Essential Question
            if showEssentialQuestion {
                BrowserWithNextButton(
                    slideName: "in_essentialQ",
                    offsetX: 432,
                    offsetY: 317) {
                    showChallengeStatement = true
                }.onAppear(perform: {
                    playSound(sound: "essential question", type:"m4a")
                    
                    Timer.scheduledTimer(withTimeInterval: titleTimeInterval, repeats: false) { _ in
                        titleAssetName = "title_essentialQ"
                    }
                })
            }
            
            // Challenge Statement
            if showChallengeStatement {
                BrowserWithNextButton(
                    slideName: "in_challengeStatement",
                    offsetX: -442,
                    offsetY: 236) {
                    showInvestigate1 = true
                }.onAppear(perform: {
                    playSound(sound: "challenge statement", type:"m4a")
                    
                    Timer.scheduledTimer(withTimeInterval: titleTimeInterval, repeats: false) { _ in
                        titleAssetName = "title_challengeStatement"
                    }
                })
            }
            
            // Investigate 1
            if showInvestigate1 {
                BrowserWithNextButton(
                    slideName: "in_investigation1",
                    offsetX: 430,
                    offsetY: 85) {
                    showInvestigate2 = true
                }.onAppear(perform: {
                    playSound(sound: "investigation 1", type:"m4a")
                    
                    Timer.scheduledTimer(withTimeInterval: titleTimeInterval, repeats: false) { _ in
                        titleAssetName = "title_investigation"
                    }
                })
            }
            
            // Investigate 2
            if showInvestigate2 {
                BrowserWithNextButton(
                    slideName: "in_investigation2",
                    offsetX: 388,
                    offsetY: 208) {
                    showSolution1 = true
                }.onAppear(perform: {
                    playSound(sound: "investigation 2", type:"m4a")
                    titleAssetName = "title_investigation"
                })
            }
            
            ZStack {
                // Solution 1
                if showSolution1 {
                    BrowserWithNextButton(
                        slideName: "in_solution1",
                        offsetX: 424,
                        offsetY: 318) {
                        showSolution2 = true
                    }.onAppear(perform: {
                        playSound(sound: "solution 1", type:"m4a")
                        
                        Timer.scheduledTimer(withTimeInterval: titleTimeInterval, repeats: false) { _ in
                            titleAssetName = "title_solution"
                        }
                    })
                }
                
                // Solution 2
                if showSolution2 {
                    BrowserWithNextButton(
                        slideName: "in_solution2",
                        offsetX: 430,
                        offsetY: -198) {
                        // TODO: Outro로 이동
                            showOutro1 = true
                    }.onAppear(perform: {
                        playSound(sound: "solution 2", type:"m4a")
                        titleAssetName = "title_solution"
                    })
                }
                
                
                // Outro 1
                if showOutro1 {
                    BrowserWithNextButton(
                        slideName: "in_outro1",
                        offsetX: 432,
                        offsetY: 316) {
                            showOutro2 = true
                    }.onAppear(perform: {
                        playSound(sound: "outro 1", type:"m4a")

                        Timer.scheduledTimer(withTimeInterval: titleTimeInterval, repeats: false) { _ in
                            titleAssetName = "title_Outro"
                        }
                    })
                }
                
                // Outro 2
                if showOutro2 {
                    BrowserWithNextButton(
                        slideName: "in_outro2",
                        offsetX: 282,
                        offsetY: 192) {
                            showEnding = true
                    }.onAppear(perform: {
                        titleAssetName = "title_Outro"
                    })
                }
                
                // Outro 2
                // EndingCredit
                
            }.fullScreenCover(isPresented: $showEnding) {
                
                    EndingCredit()
                

            }
            
            
            
        }.onAppear {
            showIntro2 = true
            playSound(sound: "Intro", type:"m4a")
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
