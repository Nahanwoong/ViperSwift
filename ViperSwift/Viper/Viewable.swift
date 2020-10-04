import UIKit

public protocol Viewable: class {
    
    associatedtype PresenterType: Presenterable
    var presenter: PresenterType? { get }
    func setTitle(title: String)
}

extension Viewable where Self: UIViewController {
    
    public func setTitle(title: String) {
        self.title = title
    }
}

