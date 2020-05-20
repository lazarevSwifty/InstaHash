import UIKit

protocol ModelBuilderProtocol {
    static func createMainModule() -> UIViewController
    static func createAddingModule() -> UIViewController
    static func createSettingsModule() -> UIViewController
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
        view.presenter = AddingPresenter(view: view)
        return view
    }
    
    static func createSettingsModule() -> UIViewController {
        let view = SettingsViewController()
        view.presenter = SettingsPresenter(view: view)
        return view
    }
    
}
