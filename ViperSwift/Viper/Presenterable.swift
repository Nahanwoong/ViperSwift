public protocol Presenterable {
    
    //    associatedtype V: Viewable
    //    associatedtype I: Interactorable
    //    associatedtype R: Routerable
    //    associatedtype E: PresenterEntities
    //    var dependencies: (view: V, router: R, interactor: I, entities: E) { get }
    
    associatedtype V: Viewable
    associatedtype I: Interactorable
    associatedtype R: Routerable
    var dependencies: (view:V, interactor: I, router: R) { get }
}

