public protocol Interactorable {
    associatedtype P: Presenterable
    var presenter:P! { get }
}
