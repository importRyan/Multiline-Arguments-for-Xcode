// Copyright 2022 by Ryan Ferrell. @importRyan

import SwiftUI

@main
struct MultilineApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}

struct ContentView: View {
  var body: some View {
    VStack {
      Text(Strings.installHeadline)
        .font(.largeTitle)
      Text("Hello, world!")
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct Strings {

  static let appName = String(
    localized: "Line Wallah",
    comment: "App name"
  )
  static let installHeadline = String(
    localized: "Install \(Strings.appName)",
    comment: "Headline: Install [appName]"
  )
}
