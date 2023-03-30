import SwiftUI

struct Outro2: View {
    var body: some View {
        ZStack{
            //아웃트로2 뒷배경
            Image("아웃트로2_배경최종")
                .resizable()
                .scaledToFill()
            //아웃트로2 버디버디 화면
            Image("아웃트로2_팝업")
                .resizable()
                .frame(width: 740.56, height: 516
                )

            //다음 버튼
            Button(action: {print("Button1")}){
                Image("닫기버튼")
                    .resizable()
                    .frame(width: 99, height: 44.72)
                    .offset(x: 282, y: 192)
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
