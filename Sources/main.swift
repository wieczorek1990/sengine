import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
  func applicationDidFinishLaunching(_ notification: Notification) {
    let window = NSWindow(
      contentRect: NSRect(x: 0, y: 0, width: 800, height: 600),
      styleMask: [.titled, .closable],
      backing: .buffered,
      defer: false
    )
    window.title = "Simple Engine"
    window.makeKeyAndOrderFront(nil)

    let contentView = NSView(frame: window.contentView!.bounds)
    contentView.wantsLayer = true
    contentView.layer?.backgroundColor =
      NSColor(red: 0.55, green: 0.75, blue: 0.95, alpha: 1.0).cgColor

    window.contentView = contentView
    window.center()

    Timer.scheduledTimer(withTimeInterval: 1.0 / 60.0, repeats: true) { _ in
    }
  }

  func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
}

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate
app.run()
