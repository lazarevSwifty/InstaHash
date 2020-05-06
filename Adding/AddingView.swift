import UIKit

class AddingView: UIView {
    
    weak var navController: UINavigationController?
    let textView =  UITextView()
    let button = UIButton()
    
    let barView = UIView()
    let hashButton = UIImageView()
    let label = UILabel()

    var barButton = UIBarButtonItem()
    
    init(navBar: UINavigationController?) {
        super.init(frame: .zero)
        self.navController = navBar
        addSubview(textView)

    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        hashButton.image = UIImage(named: "hashtag")
        label.text = "30"
        label.textColor = .black
        
        hashButton.translatesAutoresizingMaskIntoConstraints = false
        barView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        barView.addSubview(hashButton)
        barView.addSubview(label)
        barButton = UIBarButtonItem(customView: barView)
        navController?.navigationItem.rightBarButtonItem = barButton
        
        
        NSLayoutConstraint.activate([
            //текст вью на весь экран
            textView.topAnchor.constraint(equalTo: topAnchor),
            textView.leftAnchor.constraint(equalTo: leftAnchor),
            textView.rightAnchor.constraint(equalTo: rightAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
            //кнопка navbar item
            label.leftAnchor.constraint(equalTo: barView.leftAnchor),
            label.topAnchor.constraint(equalTo: barView.topAnchor),
            label.bottomAnchor.constraint(equalTo: barView.bottomAnchor),
            label.widthAnchor.constraint(equalToConstant: 30),
            label.heightAnchor.constraint(equalToConstant: 30),

            hashButton.topAnchor.constraint(equalTo: barView.topAnchor),
            hashButton.leftAnchor.constraint(equalTo: label.rightAnchor),
            hashButton.rightAnchor.constraint(equalTo: barView.rightAnchor),
            hashButton.bottomAnchor.constraint(equalTo: barView.bottomAnchor),
            hashButton.widthAnchor.constraint(equalToConstant: 30),
            hashButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
}
