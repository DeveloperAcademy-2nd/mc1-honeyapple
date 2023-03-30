import SwiftUI

struct Intro2: View {
    var body: some View {
        ZStack{
            Image("Intro2")
                .resizable()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .scaledToFill()
            Button(action: {print("Button1")}) {
                Image("BlueNextButton")
                    .resizable()
                    .frame(width: 191.1, height: 65.84)
                    .offset(x: 360, y: 310)
                    .padding(.bottom, 15)
            }
        }
    }
}

struct Intro2_Previews: PreviewProvider {
    static var previews: some View {
        Intro2()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
