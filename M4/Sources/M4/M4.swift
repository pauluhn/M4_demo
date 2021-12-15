import Combine
public struct M4 {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

public class M4AppState: ObservableObject {
    @Published public var vehicle = "My vehicle"
    @Published public var mojio = "My mojio"

    public init() {}
}
