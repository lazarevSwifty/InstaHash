import UIKit

protocol AddingViewProtocol: AnyObject {
}
protocol AddingPresenterProtocol: AnyObject {
    func addHashtag()
}


class AddingPresenter: AddingPresenterProtocol {
    
    let view: AddingViewProtocol?
    
    init(view: AddingViewProtocol) {
        self.view = view
    }
    
    func addHashtag() {
        
    }
    
}
