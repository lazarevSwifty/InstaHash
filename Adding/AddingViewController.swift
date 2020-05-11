import UIKit

class AddingViewController: UIViewController, ViewSpecificController {
    typealias RootView = AddingView
    
    var presenter: AddingPresenterProtocol?
    var hashCount = Constants.maxHashCount
    
    let barView = UIView()
    let hashButton = UIButton()
    let countLabel = UILabel()
    
    override func loadView() {
        view = AddingView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    func setupNavBar() {
        
        countLabel.text = String(hashCount)
        countLabel.textColor = .black
        
        hashButton.setImage(UIImage(named: "hashtag"), for: .normal)
        hashButton.translatesAutoresizingMaskIntoConstraints = false
        hashButton.addTarget(presenter, action: #selector(presenter?.hashTagClick), for: .touchUpInside)
        barView.translatesAutoresizingMaskIntoConstraints = false
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        barView.addSubview(hashButton)
        barView.addSubview(countLabel)
        
        let barButton = UIBarButtonItem(customView: barView)
        navigationItem.rightBarButtonItem = barButton
        
        
        NSLayoutConstraint.activate([
            countLabel.leftAnchor.constraint(equalTo: barView.leftAnchor),
            countLabel.topAnchor.constraint(equalTo: barView.topAnchor),
            countLabel.bottomAnchor.constraint(equalTo: barView.bottomAnchor),
            countLabel.widthAnchor.constraint(equalToConstant: 30),
            countLabel.heightAnchor.constraint(equalToConstant: 30),
            
            hashButton.topAnchor.constraint(equalTo: barView.topAnchor),
            hashButton.leftAnchor.constraint(equalTo: countLabel.rightAnchor),
            hashButton.rightAnchor.constraint(equalTo: barView.rightAnchor),
            hashButton.bottomAnchor.constraint(equalTo: barView.bottomAnchor),
            hashButton.widthAnchor.constraint(equalToConstant: 30),
            hashButton.heightAnchor.constraint(equalToConstant: 30)
        ])

    }
}


extension AddingViewController: AddingViewProtocol {
    func addHashTag() {
        view().textView.text += Constants.hash
        hashCount -= 1
        countLabel.text = String(hashCount)
    }
    
    
}
