import Foundation

protocol MainViewProtocol: AnyObject {
    
}
protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, router: MainRouterProtocol)
    func present()
}

class MainPresenter: MainPresenterProtocol {
    
    weak var view: MainViewProtocol?
    var router: MainRouterProtocol?
    required init(view: MainViewProtocol, router: MainRouterProtocol) {
        self.view = view
        self.router = router
    }
    
    func present() {
        router?.goToAddingVC()
        print("presenter print")
    }
}

