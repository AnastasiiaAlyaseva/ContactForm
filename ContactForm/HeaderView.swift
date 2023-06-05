import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .font(.system(size: 30))
            Text("Contact form")
                .font(.system(size: 30))
        }
        .padding(.bottom, 50)
    }
}
