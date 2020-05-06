import UIKit

protocol ModelBuilderProtocol {
    static func createMainModule() -> UIViewController
    static func createAddingModule() -> UIViewController
}

class ModelBuilder: ModelBuilderProtocol {
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let router = MainRouter()
        router.viewController = view
        view.presenter = MainPresenter(view: view, router: router)
        return view
    }
    
    static func createAddingModule() -> UIViewController {
        let view = AddingViewController()
        return view
    }
    
    
}
