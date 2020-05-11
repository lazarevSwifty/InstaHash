import Foundation

protocol MainViewProtocol: AnyObject {
    func success()
    
}
protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, router: MainRouterProtocol)
    func present()
    func fetchPosts()
    var posts: [Post]? {get set}

}

class MainPresenter: MainPresenterProtocol {

    var posts: [Post]?
    weak var view: MainViewProtocol?
    var router: MainRouterProtocol?
    required init(view: MainViewProtocol, router: MainRouterProtocol) {
        self.view = view
        self.router = router
        fetchPosts()
    }
    
    func fetchPosts() {
        posts = Post.fillPosts()
        view?.success()
    }
    
    func present() {
        router?.goToAddingVC()
    }
}

