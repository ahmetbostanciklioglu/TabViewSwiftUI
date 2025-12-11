import SwiftUI

struct iOSVersionLessThan18TabView: View {
    @State private var selection: Int = 0
    var body: some View {
        if #available(iOS 14.0, *) {
            TabView(selection: $selection) {
                ForEach(Array(Tabs.allCases.enumerated()), id: \.offset) { index, tab in
                    Text(tab.content)
                        .tabItem {
                            Image(systemName: tab.imageName)
                            Text(tab.title)
                        }
                        .tag(index)
                }
            }

        }
    }
}

#Preview {
    iOSVersionLessThan18TabView()
}
