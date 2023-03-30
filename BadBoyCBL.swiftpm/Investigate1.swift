import SwiftUI

struct Investigate1: View {
    @State var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack{
            Image("Investigate1")
                .resizable()
                .scaledToFill()
            Button {
                buttonHandler?()
            } label: {
                Image("버튼")
                   .resizable()
                   .frame(width: 178.01, height: 80.41)
            }
            .offset(x: 430, y: 85)
        }.onAppear(perform: {
            playSound(sound: "investigation 1", type:"m4a")
        })
    }
}

struct Investigate1_Previews: PreviewProvider {
    static var previews: some View {
        Investigate1()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
