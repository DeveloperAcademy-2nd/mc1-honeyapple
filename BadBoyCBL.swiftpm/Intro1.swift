import SwiftUI

struct Intro1: View {
    @State var showIntro2 = false
    
    var body: some View {
        ZStack{
            Image("뉴인트로")
                .resizable()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .scaledToFill()
            Button {
                showIntro2 = true
            } label: {
                Image("시ㅈrㄱ,,,,,,")
                   .resizable()
                   .frame(width: 264, height: 47)
            }
            .offset(x: 500, y: 440)
            .padding(.bottom, 15)
            
            if showIntro2 {
                Intro2()
            }
        }
    }
}

struct Intro1_Previews: PreviewProvider {
    static var previews: some View {
        Intro1()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
