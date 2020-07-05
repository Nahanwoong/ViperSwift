import UIKit

public protocol Routerable {
    
    associatedtype ViewType: Viewable where ViewType: UIViewController
    var view: ViewType { get }
    init(view: ViewType)
    
    func push(_ view: UIViewController, animated: Bool)
    func present(_ view: UIViewController, animated: Bool)
    func present(_ view: UIViewController, animated: Bool, _completion: @escaping (() -> Void))
    func present(_ view: UIViewController, modalPresentationStyle: UIModalPresentationStyle, animated: Bool)
    func present(_ view: UIViewController, modalPresentationStyle: UIModalPresentationStyle, animated: Bool, _completion: @escaping (() -> Void))
    func pop(animated: Bool)
    func dismiss(animated: Bool)
    func dismiss(animated: Bool, _completion:  @escaping (() -> Void))
}

extension Routerable {
    
    public func push(_ view: UIViewController, animated: Bool = true) {
        self.view.navigationController?.pushViewController(view, animated: animated)
    }
    
    public func present(_ view: UIViewController, animated: Bool) {
        if let delegate = self.view as? UIAdaptivePresentationControllerDelegate {
            var viewController:UIViewController = view
            if let navigation = view as? UINavigationController, let vc = navigation.topViewController {
                viewController = vc
            }
            if let presentationController = viewController.presentationController {
                presentationController.delegate = delegate
            }
        }
        self.view.present(view, animated: animated, completion: nil)
    }
    
    public func present(_ view: UIViewController, animated: Bool, _completion: @escaping (() -> Void)) {
        if let delegate = self.view as? UIAdaptivePresentationControllerDelegate {
            var viewController: UIViewController = view
            if let navigation = view as? UINavigationController, let vc = navigation.topViewController {
                viewController = vc
            }
            if let presentationController = viewController.presentationController {
                presentationController.delegate = delegate
            }
        }
        self.view.present(view, animated: animated, completion: _completion)
    }
    
    public func present(_ view: UIViewController, modalPresentationStyle: UIModalPresentationStyle, animated: Bool = true) {
        view.modalPresentationStyle = modalPresentationStyle
        present(view, animated: animated)
    }
    
    public func present(_ view: UIViewController, modalPresentationStyle: UIModalPresentationStyle, animated: Bool = true, _completion: @escaping (() -> Void)) {
        view.modalPresentationStyle = modalPresentationStyle
        present(view, animated: animated, _completion: _completion)
    }
    
    public func pop(animated: Bool) {
        self.view.navigationController?.popViewController(animated: animated)
    }

    public func dismiss(animated: Bool) {
        self.view.dismiss(animated: true, completion: {
            if let presentationController = self.view.presentationController, let delegate = presentationController.delegate {
                if #available(iOS 13.0, *) {
                    delegate.presentationControllerDidDismiss?(presentationController)
                }
            }
        })
    }
    
    public func dismiss(animated: Bool, _completion: @escaping (() -> Void)) {
        self.view.dismiss(animated: true, completion: {
            if let presentationController = self.view.presentationController, let delegate = presentationController.delegate {
                if #available(iOS 13.0, *) {
                    delegate.presentationControllerDidDismiss?(presentationController)
                }
            }
            _completion()
        })
    }
}
