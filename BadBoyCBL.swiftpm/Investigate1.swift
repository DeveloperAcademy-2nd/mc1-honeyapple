import SwiftUI

struct Investigate1: View {
    var body: some View {
        ZStack{
            Image("Investigate1")
                .resizable()
                .scaledToFill()
            Button(action: {print("Button1")}){
                Image("버튼")
                    .resizable()
                    .frame(width: 178.01, height: 80.41)
                    .offset(x: 430, y: 85)
            }
        }
    }
}

struct Investigate1_Previews: PreviewProvider {
    static var previews: some View {
        Investigate1()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
