import SwiftUI

struct Solution1: View {
    @State var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack{
            Image("Solution1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Button {
                buttonHandler?()
            } label: {
                Image("버튼")
                   .resizable()
                   .frame(width: 178.01, height: 80.41)
            }
            .offset(x: 424, y: 318)
            .padding(.bottom, 15)
        }
    }
}

struct Solution1_Previews: PreviewProvider {
    static var previews: some View {
        Solution1()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
