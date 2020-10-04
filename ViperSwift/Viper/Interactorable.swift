public protocol Interactorable: class {
    associatedtype PresenterType: Presenterable
    var presenter: PresenterType? { get }
}
