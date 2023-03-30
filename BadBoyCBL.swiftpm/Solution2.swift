import SwiftUI

struct Solution2: View {
    @State var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack{
            Image("Solution2")
                .resizable()
                .scaledToFill()
            Button {
                buttonHandler?()
            } label: {
                Image("버튼")
                   .resizable()
                   .frame(width: 178.01, height: 80.41)
            }
            .frame(width: 178.01, height: 80.41)
            .offset(x: 430, y: -198)
        }.onAppear(perform: {
            playSound(sound: "solution 2", type:"m4a")
        })
    }
}

struct Solution2_Previews: PreviewProvider {
    static var previews: some View {
        Solution2()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
