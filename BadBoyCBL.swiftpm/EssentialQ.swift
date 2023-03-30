import SwiftUI

struct EssentialQ: View {
    var body: some View {
        Image("EssentialQ")
            .resizable()
            .scaledToFill()
    }
}

struct EssentialQ_Previews: PreviewProvider {
    static var previews: some View {
        EssentialQ()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
