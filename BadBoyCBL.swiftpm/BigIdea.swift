import SwiftUI

struct BigIdea: View {
    var body: some View {
        VStack {
            Image("BigIdea")
                .resizable()
                .scaledToFit()
        }
    }
}

struct BigIdea_Previews: PreviewProvider {
    static var previews: some View {
        BigIdea()
    }
}
