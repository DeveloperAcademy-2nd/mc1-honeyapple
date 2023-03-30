import SwiftUI

struct ChallengeStatement: View {
    var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack{
            Image("ChallengeStatement")
                .resizable()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .scaledToFill()
            Button {
                buttonHandler?()
            } label: {
                Image("버튼")
                   .resizable()
                   .frame(width: 178.01, height: 80.41)
            }
            .offset(x: -442, y: 236)
            .padding(.bottom, 15)
        }.onAppear(perform: {
            playSound(sound: "challenge statement", type:"m4a")
        })
    }
}

struct ChallengeStatement_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeStatement()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
