import Foundation

public class SafeCalculator {
    private let authorizer: Authorizer

    init(authorizer: Authorizer) {
        self.authorizer = authorizer
    }

    public func add(_ a: Int, _ b: Int) -> Int {
        let authorized = authorizer.authorize()

        if authorized { // <- bug here, should be if (!authorizedk
            fatalError("Not authorized.")
        }

        return a + b
    }
}
