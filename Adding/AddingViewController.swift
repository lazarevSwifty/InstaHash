//
//  AddingPostViewController.swift
//  InstaHash
//
//  Created by Владислав Лазарев on 16.04.2020.
//  Copyright © 2020 Владислав Лазарев. All rights reserved.
//

import UIKit

class AddingViewController: UIViewController, ViewSpecificController {
    typealias RootView = AddingView
    
    override func loadView() {
        view = AddingView(navBar: navigationController)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupNavBar()
//        view().barButton.action = #selector(test)
//        view().barButton.target = self
//        self.navigationItem.rightBarButtonItem = view().barButton
    }
    
    @objc func test() {
        print("test")
    }
    
    func setupNavBar() {

        let barView = UIView()
        let hashButton = UIImageView()
        let label = UILabel()
        label.text = "30"
        label.textColor = .black
        
        hashButton.image = UIImage(named: "hashtag")
        hashButton.translatesAutoresizingMaskIntoConstraints = false
        barView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        barView.addSubview(hashButton)
        barView.addSubview(label)
        
        let barButton = UIBarButtonItem(customView: barView)
        navigationItem.rightBarButtonItem = barButton
        
        NSLayoutConstraint.activate([
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


extension AddingViewController: AddingViewProtocol {}
