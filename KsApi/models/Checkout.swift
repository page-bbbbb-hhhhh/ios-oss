import Foundation

public struct Checkout: Decodable {
  public var state: State
  public var backing: Backing

  public enum State: String, Decodable, CaseIterable {
    case authorizing = "AUTHORIZING"
    case verifying = "VERIFYING"
    case successful = "SUCCESSFUL"
    case failed = "FAILED"
  }

  public struct Backing: Decodable {
    let requiresAction: Bool
    let clientSecret: String?
  }
}
