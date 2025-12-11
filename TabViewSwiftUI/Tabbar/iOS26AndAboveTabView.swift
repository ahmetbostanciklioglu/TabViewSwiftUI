import SwiftUI

struct iOS26AndAboveTabView: View {
    var body: some View {
        if #available(iOS 26.0, *) {
            TabView {
                ForEach(Tabs.allCases, id: \.self) { tab in
                    Tab.init(
                        tab.title,
                        systemImage: tab.imageName,
                        role: tab == .search ? .search : nil
                    ) {
                        if tab == .home {
                            ScrollView(.vertical) {
                                Text(tab.content)
                                    .containerRelativeFrame([.horizontal])
                                    .containerRelativeFrame(.vertical) { value, _ in
                                        value * 3
                                    }
                            }
                        } else {
                            Text(tab.content)
                        }
                    }
                }
            }
            /// Tab extra accessory text
            .tabViewBottomAccessory {
                Text(Tabs.accessoryText)
                    .padding(.horizontal, 15)
            }
            /// When you scroll down Tab is minimized
            .tabBarMinimizeBehavior(.onScrollDown)
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
