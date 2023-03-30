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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
