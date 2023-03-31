import SwiftUI

struct Intro2: View {
    @State var showBigIdea = false
    @State var showEssentialQuestion = false
    @State var showChallengeStatement = false
    @State var showInvestigate1 = false
    @State var showInvestigate2 = false
    @State var showInvestigate3 = false
    @State var showSolution1 = false
    @State var showSolution2 = false
    
    var body: some View {
        ZStack{
            Image("Intro2")
                .resizable()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            // Button(action: {print("Button1")}) {
            //     Image("BlueNextButton")
            //         .resizable()
            //         .frame(width: 191.1, height: 65.84)
            //
            // }
            
            Button {
                showBigIdea = true
            } label: {
                Image("BlueNextButton")
                    .resizable()
                    .frame(width: 191.1, height: 65.84)

            }
            .offset(x: 360, y: 310)
            .padding(.bottom, 15)
            
            // Big Idea
            if showBigIdea {
                BigIdea {
                    showEssentialQuestion = true
                }
                    
            }
            
            // Essential Question
            if showEssentialQuestion {
                EssentialQ {
                    showChallengeStatement = true
                }
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
            
            // Challenge Statement
            if showChallengeStatement {
                ChallengeStatement {
                    showInvestigate1 = true
                }
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
            
            // Investigate 1
            if showInvestigate1 {
                Investigate1 {
                    showInvestigate2 = true
                }
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
            
            // Investigate 2
            if showInvestigate2 {
                Investigate2 {
                    showSolution1 = true
                }
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
            
            // Solution 1
            if showSolution1 {
                Solution1 {
                    showSolution2 = true
                }
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
            
            // Solution 2
            if showSolution2 {
                Solution2()
                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
            
            // Outro 1
            
            
            // Outro 2
            
        }
    }
}

struct Intro2_Previews: PreviewProvider {
    static var previews: some View {
        Intro2()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
