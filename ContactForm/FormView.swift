import SwiftUI

struct FormView: View {
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var replyTo: String
    @Binding var message: String
    
    var body: some View {
        Form{
            Section(header: Text("Personal Information")) {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
            }
            Section(header: Text("Contact Information")) {
                TextField("Reply To", text: $replyTo)
            }
            Section(header: Text("Message")) {
                TextField("Message", text: $message)
            }
        }
    }
}
