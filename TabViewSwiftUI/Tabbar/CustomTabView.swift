import SwiftUI

struct CustomTabView: View {
    var body: some View {
        if #available(iOS 18.0, *) {
            /// iOS 18 and 26 utilize from this concept
             iOS26AndAboveTabView()
        } else {
            /// iOS 15, 16, and 17 utilize from this concept
            iOSVersionLessThan18TabView()
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
