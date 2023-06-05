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
                    Text("Senf Form")
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
            
            Image(systemName: "square.and.arrow.up")
                .font(.system(size: 30))
        }
        .padding(.top, 50)
    }
}
