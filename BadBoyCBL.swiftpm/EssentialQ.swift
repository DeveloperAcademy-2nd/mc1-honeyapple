import SwiftUI

struct EssentialQ: View {
    @State var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack{
            Image("EssentialQ")
                .resizable()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Button {
                buttonHandler?()
            } label: {
                Image("버튼")
                   .resizable()
                   .frame(width: 178.01, height: 80.41)
            }
            .offset(x: 432, y: 317)
            .padding(.bottom, 15)
        }
    }
}

struct EssentialQ_Previews: PreviewProvider {
    static var previews: some View {
        EssentialQ()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
