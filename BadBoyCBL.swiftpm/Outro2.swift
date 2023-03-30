import SwiftUI

struct Outro2: View {
    var body: some View {
        ZStack{
            Image("Outro2")
                .resizable()
                .scaledToFill()
        }
    }
}

struct Outro2_Previews: PreviewProvider {
    static var previews: some View {
        Outro2()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
