import Foundation

public class SafeCalculator {
    private let authorizer: Authorizer

    init(authorizer: Authorizer) {
        self.authorizer = authorizer
    }

    public func add(_ a: Int, _ b: Int) -> Int {
        let authorized = authorizer.authorize()

        if authorized {
            fatalError("Not authorized.")
        }

        return a + b
    }
}
