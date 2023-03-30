import SwiftUI

struct ChallengeStatement: View {
    var body: some View {
        Image("ChallengeStatement")
            .resizable()
            .scaledToFill()
    }
}

struct ChallengeStatement_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeStatement()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
