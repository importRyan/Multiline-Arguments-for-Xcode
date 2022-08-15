// Copyright 2022 by Ryan Ferrell. @importRyan

import Foundation
import XcodeKit
import OSLog

class SourceEditorExtension: NSObject, XCSourceEditorExtension {
  func extensionDidFinishLaunching() {
    os_log("Multiline Arguments Did Launch", type: .debug)
  }
}

class Multiline: NSObject, XCSourceEditorCommand {
  func perform(
    with invocation: XCSourceEditorCommandInvocation,
    completionHandler: @escaping (Error?) -> Void
  ) -> Void {
    do {
      try SelectedInitsFormatter(invocation)()
      completionHandler(nil)
    } catch {
      completionHandler(error)
    }
  }
}
