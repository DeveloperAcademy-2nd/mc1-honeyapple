import SwiftUI

struct Intro2: View {
    var body: some View {
        ZStack{
            Image("Intro2")
                .resizable()
                .scaledToFill()
            Button(action: {print("Button1")}){
                           Image("버튼")
                               .resizable()
                               .frame(width: 178.01, height: 80.41)
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
