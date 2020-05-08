public protocol Presenterable {
    
    associatedtype ViewType: Viewable
    associatedtype InteractorType: Interactorable
    associatedtype RouterType: Routerable
    
    typealias PresenterDependencies = (
        view: ViewType,
        interactor: InteractorType,
        router: RouterType
    )
    
    var dependencies: PresenterDependencies { get set }
    init(dependencies: PresenterDependencies)
}

