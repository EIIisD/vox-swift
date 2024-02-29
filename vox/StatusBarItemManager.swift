import SwiftUI

@main
struct voxApp: App {
    // Removed WindowGroup to prepare for status bar item setup
}

class StatusBarItemManager {
    private var statusBarItem: NSStatusItem

    init() {
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let button = statusBarItem.button {
            button.image = NSImage(named: "YourIconName") // Set your icon image here
            button.action = #selector(toggleMenu(_:))
        }
        constructMenu()
    }

    @objc func toggleMenu(_ sender: Any?) {
        // Implement your toggle functionality here
    }

    private func constructMenu() {
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Item 1", action: #selector(menuAction(_:)), keyEquivalent: "1"))
        menu.addItem(NSMenuItem(title: "Item 2", action: #selector(menuAction(_:)), keyEquivalent: "2"))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        statusBarItem.menu = menu
    }

    @objc func menuAction(_ sender: NSMenuItem) {
        // Implement your menu action functionality here
    }
}
