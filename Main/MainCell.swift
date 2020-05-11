//import UIKit
//
//
//
//
//class MainCell: UITableViewCell {
//    
//    let postLabel = UILabel()
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        addSubview(postLabel)
//    }
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    override func layoutSubviews() {
//        NSLayoutConstraint.activate([
//            postLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
//            postLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
//            postLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
//            postLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
//        ])
//    }
//    
//    
//    func configure(posts: Post?) {
//        postLabel.text = posts?.postText
//    }
//}
