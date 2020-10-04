public protocol Presenterable: class {
    
    associatedtype ViewType: Viewable
    associatedtype InteractorType: Interactorable
    associatedtype RouterType: Routerable
    associatedtype EntityType
    
    typealias PresenterDependencies = (
        view: ViewType,
        interactor: InteractorType,
        router: RouterType,
        entities: EntityType
    )
    
    var dependencies: PresenterDependencies { get }
    init(dependencies: PresenterDependencies)
}

