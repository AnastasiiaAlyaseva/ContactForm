import SwiftUI

struct ButtonView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        HStack{
            Button(action: {
                print("Form submitted")
                showingAlert = true
            }) {
                HStack{
                    Image(systemName: "paperplane")
                    Text("Send Form")
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .alert("Form submitted", isPresented: $showingAlert) {}
            
            Button(action: {
                print("Product submitted")
                showingAlert = true
            }) {
                HStack{
                    Image(systemName: "cart")
                    Text("Buy Product")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .alert("Product submitted", isPresented: $showingAlert) {}
            
            Spacer()
            
            // TODO: make as button with action - native iOS share
            // ex. https://jeevatamil.medium.com/how-to-create-share-sheet-uiactivityviewcontroller-in-swiftui-cef64b26f073
            Image(systemName: "square.and.arrow.up")
                .font(.system(size: 30))
        }
        .padding(.top, 50)
    }
}
