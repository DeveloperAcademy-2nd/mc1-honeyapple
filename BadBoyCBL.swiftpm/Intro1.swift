import SwiftUI

struct Intro1: View {
    var body: some View {
        Image("뉴인트로")
            .resizable()
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .scaledToFill()
    }
}

struct Intro1_Previews: PreviewProvider {
    static var previews: some View {
        Intro1()
    }
}
