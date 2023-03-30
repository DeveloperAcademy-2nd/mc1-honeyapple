//
//  BranchTestView.swift
//  BadBoyCBL
//
//  Created by 윤범태 on 2023/03/30.
//

import SwiftUI

extension Color {
    /// https://seons-dev.tistory.com/entry/CODE-SwiftUI-%EC%BB%AC%EB%9F%AC-%EC%9D%B5%EC%8A%A4%ED%85%90%EC%85%98-%EB%A7%8C%EB%93%A4%EA%B8%B0-%ED%97%A5%EC%8A%A4%EC%BD%94%EB%93%9C%ED%99%9C%EC%9A%A9
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    
    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}

struct StrokeText: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}

extension String {
    static var fontNeoDunggeunmoPro = "NeoDunggeunmoPro-Regular"
}

struct BranchTestView: View {
    @State var newView = false
    var browserWidth: CGFloat = 1000
    
    var body: some View {
        ZStack {
            Image("XP")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .scaledToFill()
            VStack {
                StrokeText(text: "~ ★ Chapter.1 Big Idea ★ ~", width: 1, color: .black)
                    .font(.custom(.fontNeoDunggeunmoPro, size: 40))
                    .foregroundColor(Color(hex: "FD3EEA"))
                ZStack {
                    VStack(spacing: 0) {
                        Image("Browser Head")
                            .resizable()
                            .scaledToFit()
                            .frame(width: browserWidth)
                        // NavigationView: will deprecate future
                        if #available(iOS 16.0, *) {
                            NavigationStack {
                                ZStack {
                                    Image("Browser Body")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: browserWidth)
                                    Rectangle()
                                        .foregroundColor(.pink)
                                        .frame(width: 100, height: 100)
                                    Button {
                                        // playSound(sound: "Fast Fanfare", type: "m4a")
                                        newView = true
                                        
                                    } label: {
                                        Image("Next Button")
                                        
                                    }
                                    // .sheet(isPresented: $newView, content: {
                                    //     Text("newView")
                                    // })
                                    
                                    .offset(CGSize(width: -(browserWidth * 0.35), height: browserWidth * 0.20))
                                }
                                
                            }
                            .frame(width: browserWidth, height: 500)
                        } else {
                            // Fallback on earlier versions
                        }
                        Image("Browser Footer")
                            .resizable()
                            .scaledToFit()
                            .frame(width: browserWidth)
                    }

                }
                
                Spacer().frame(height: 50)
                StrokeText(text: "present by. Team5 지곡동 꿀사고r,,,, ★", width: 1, color: .black)
                    .font(.custom(.fontNeoDunggeunmoPro, size: 30))
                    .foregroundColor(.white)
            }
        }
        .onAppear {
            // playSound(sound: "example", type: "mp3")
            // let cfURL = Bundle.main.url(forResource: "NeoDunggeunmoPro-Regular", withExtension: "ttf") as! CFURL
            // CTFontManagerRegisterFontsForURL(cfURL, .process, nil)
            for family: String in UIFont.familyNames {
                print(family)
                for names : String in UIFont.fontNames(forFamilyName: family){
                    print("=== \(names)")
                }
            }
        }
    }
}

struct BranchTestView_Previews: PreviewProvider {
    static var previews: some View {
        BranchTestView()
            .previewInterfaceOrientation(.landscapeRight)
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
    }
}
