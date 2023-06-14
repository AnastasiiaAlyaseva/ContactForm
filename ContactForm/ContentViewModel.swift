import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var replyTo: String = ""
    @Published var message: String = ""
}
