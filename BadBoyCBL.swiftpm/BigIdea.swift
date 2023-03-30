import SwiftUI

struct BigIdea: View {
    @State var buttonHandler: ButtonHandler?
    
    var body: some View {
        ZStack{
            Image("BigIdea")
                .resizable()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .scaledToFill()
            Button {
                buttonHandler?()
            } label: {
                Image("버튼")
                   .resizable()
                   .frame(width: 178.01, height: 80.41)
            }
            .offset(x: 410, y: -180)
            .padding(.bottom, 15)
        }
    }
}

struct BigIdea_Previews: PreviewProvider {
    static var previews: some View {
        BigIdea()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
