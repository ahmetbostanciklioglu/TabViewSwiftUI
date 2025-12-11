import SwiftUI

enum Tabs: CaseIterable {
    case home, favorites, settings, search
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorites: return "Favorites"
        case .settings: return "Settings"
        case .search: return "Search"
        }
    }
    
    var imageName: String {
        switch self {
        case .home: return "house.fill"
        case .favorites: return "suit.heart.fill"
        case .settings: return "gearshape.fill"
        case .search: return "magnifyingglass"
        }
    }
    
    var content: String {
        switch self {
        case .home: return "This is the home tab."
        case .favorites: return "This is the favorites tab."
        case .settings: return "This is the settings tab."
        case .search: return "Search"
        }
    }
    
    static var accessoryText: String {
        "Custom Music Player!"
    }
}
