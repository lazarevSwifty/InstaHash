import UIKit

protocol SettingsViewProtocol: AnyObject {
    
}
protocol SettingsPresenterProtocol: AnyObject {
    
}


class SettingsPresenter: SettingsPresenterProtocol {
    
    let view: SettingsViewProtocol?
    
    init(view: SettingsViewProtocol) {
        self.view = view
    }
    
}
