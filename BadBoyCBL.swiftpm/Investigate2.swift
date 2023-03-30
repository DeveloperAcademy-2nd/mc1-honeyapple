import SwiftUI

struct Investigate2: View {
    @State var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack{
            Image("Investigate2")
                .resizable()
                .scaledToFill()
            Button {
                buttonHandler?()
            } label: {
                Image("버튼")
                   .resizable()
                   .frame(width: 178.01, height: 80.41)
            }
            .offset(x: 388, y: 208)
        }.onAppear(perform: {
            playSound(sound: "investigation 2", type:"m4a")
        })
    }
}

struct Investigate2_Previews: PreviewProvider {
    static var previews: some View {
        Investigate2()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
