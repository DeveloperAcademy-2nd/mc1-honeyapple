import SwiftUI

struct BigIdea: View {
    var body: some View {
            Image("BigIdea")
                .resizable()
                .scaledToFill()
        
    }
}

struct BigIdea_Previews: PreviewProvider {
    static var previews: some View {
        BigIdea()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
