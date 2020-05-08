public protocol Interactorable {
    associatedtype PresenterType: Presenterable
    var presenter:PresenterType! { get }
}
