import SwiftUI

struct Outro1: View {
    var body: some View {
        ZStack{
            Image("Outro1")
                .resizable()
                .scaledToFill()
            Button(action: {print("Button1")}){
                Image("버튼")
                    .resizable()
                    .frame(width: 178.01, height: 80.41)
                    .offset(x: 432, y: 316)
            }
        }.onAppear(perform: {
            playSound(sound:"outro 1", type: "m4a")
            
        })
    }
}

struct Outro1_Previews: PreviewProvider {
    static var previews: some View {
        Outro1()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
