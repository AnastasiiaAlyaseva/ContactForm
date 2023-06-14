import SwiftUI

struct ButtonView: View {
    @StateObject var viewModel : ContentViewModel
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
            .disabled(viewModel.firstName.isEmpty && viewModel.lastName.isEmpty)
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
            .disabled(viewModel.firstName.isEmpty && viewModel.lastName.isEmpty)
            .alert("Product submitted", isPresented: $showingAlert) {}
            
            Spacer()
            
            Button(action: actionSheet) {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 30))
            }
            .disabled(viewModel.firstName.isEmpty && viewModel.lastName.isEmpty)
        }
        .padding(.top, 50)
    }
    
    func actionSheet() {
        guard let data = URL(string: "https://www.linkedin.com/in/anastasiia-smirnova-alyaseva/") else { return }
        let message : String = "Shared contact:\(viewModel.firstName) \(viewModel.lastName).\n \n My personal contact: "
        let av = UIActivityViewController(activityItems: [message, data], applicationActivities: nil)
        let scenes = UIApplication.shared.connectedScenes
        let windowScenes = scenes.first as? UIWindowScene
        let rootVC = windowScenes?.keyWindow?.rootViewController
        rootVC?.present(av, animated: true, completion: nil)
    }
}
