import SwiftUI

struct Outro2: View {
    var body: some View {
        ZStack{
            Image("Outro2")
                .resizable()
                .scaledToFill()
            Button(action: {print("Button1")}){
                Image("버튼")
                    .resizable()
                    .frame(width: 99, height: 44.72)
                    .offset(x: 408, y: 183)
            }
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
