
import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            HeaderView()
            FormView(
                firstName: $viewModel.firstName,
                lastName: $viewModel.lastName,
                replyTo: $viewModel.replyTo,
                message: $viewModel.message
            )
            ButtonView(viewModel: viewModel)
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
