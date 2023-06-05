
import SwiftUI

struct ContentView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var replyTo: String = ""
    @State var message: String = ""
    
    var body: some View {
        VStack {
            HeaderView()
            FormView(firstName: $firstName, lastName: $lastName, replyTo: $replyTo, message: $message)
            ButtonView()
        }
        .padding()
        .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
