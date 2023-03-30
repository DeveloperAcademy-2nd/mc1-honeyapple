import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationView(content: {
                NavigationLink(destination:
                    Intro1()
                ) {
                    Text("ㅋㅋ")
                }
            })
        }
    }
}


struct BranchTestView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
