import SwiftUI

struct Investigate2: View {
    var body: some View {
        ZStack{
            Image("Investigate2")
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

struct Investigate2_Previews: PreviewProvider {
    static var previews: some View {
        Investigate2()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
