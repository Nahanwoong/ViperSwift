import UIKit
import SVProgressHUD

public protocol Viewable {
    
    associatedtype P:Presenterable
    var presenter:P! { get }
    
    func setTitle(title: String)
    func showLoading(_ text: String?)
    func showInfo(_ text: String?, displayTime: TimeInterval, completion: LoadingDismissCompletion?)
    func showError(_ text: String?, displayTime: TimeInterval, completion: LoadingDismissCompletion?)
    func showSuccess(_ text: String?, displayTime: TimeInterval, completion: LoadingDismissCompletion?)
    func hideLoading(_ completion: LoadingDismissCompletion?)
}

public typealias LoadingDismissCompletion = (() -> Void)

extension Viewable where Self: UIViewController {
    
    fileprivate func setupLoading(displayTime: TimeInterval) {
        SVProgressHUD.setDefaultStyle(.dark)
        SVProgressHUD.setDefaultAnimationType(.flat)
        SVProgressHUD.setMinimumDismissTimeInterval(displayTime)
        SVProgressHUD.setMaximumDismissTimeInterval(displayTime)
    }
    
    fileprivate func dismissCompletion( _ text: String? = nil, completion: LoadingDismissCompletion?) {
        let after = SVProgressHUD.displayDuration(for: text)
        DispatchQueue.main.asyncAfter(deadline: .now() + after) {
            if let _completion = completion { _completion() }
        }
    }
    
    public func showLoading(_ text: String?) {
        setupLoading(displayTime: 0)
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.show(withStatus: text)
    }
    
    public func showInfo(_ text: String?, displayTime: TimeInterval = 0.7, completion: LoadingDismissCompletion? = nil) {
        setupLoading(displayTime: displayTime)
        SVProgressHUD.setDefaultMaskType(.gradient)
        SVProgressHUD.showInfo(withStatus: text)
        dismissCompletion(text, completion: completion)
    }
    
    public func showError(_ text: String?, displayTime: TimeInterval = 0.7, completion: LoadingDismissCompletion? = nil) {
        setupLoading(displayTime: displayTime)
        SVProgressHUD.setDefaultMaskType(.gradient)
        SVProgressHUD.showError(withStatus: text)
        dismissCompletion(text, completion: completion)
    }
    
    public func showSuccess(_ text: String?, displayTime: TimeInterval = 0.7, completion: LoadingDismissCompletion? = nil) {
        setupLoading(displayTime: displayTime)
        SVProgressHUD.setDefaultMaskType(.gradient)
        SVProgressHUD.showSuccess(withStatus: text)
        dismissCompletion(text, completion: completion)
    }
    
    public func hideLoading(_ completion: LoadingDismissCompletion? = nil) {
        SVProgressHUD.dismiss(completion: completion)
    }
    
    public func setTitle(title: String) {
        self.title = title
    }
}

