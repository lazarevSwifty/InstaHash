import UIKit

protocol AddingViewProtocol: AnyObject {
    func addHashTag()
}
@objc protocol AddingPresenterProtocol: AnyObject {
    @objc func hashTagClick()
}


class AddingPresenter: AddingPresenterProtocol {
    
    let view: AddingViewProtocol?
    
    init(view: AddingViewProtocol) {
        self.view = view
    }
    
    @objc func hashTagClick() {
        view?.addHashTag()
    }
    
}
