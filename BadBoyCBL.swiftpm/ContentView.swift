import SwiftUI

struct ContentView: View {
    var body: some View {
        Intro1()
    }
}

struct BranchTestView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
