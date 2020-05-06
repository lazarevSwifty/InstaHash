//
//  ViewController.swift
//  InstaHash
//
//  Created by Владислав Лазарев on 16.04.2020.
//  Copyright © 2020 Владислав Лазарев. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var presenter: MainPresenterProtocol?
    
    override func loadView() {
        view =  MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addPostButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addPost))
        navigationItem.rightBarButtonItem = addPostButton

    }

    @objc func addPost() {
        presenter?.present()
        print("vc print")
    }

}

extension MainViewController: MainViewProtocol {
    
}
