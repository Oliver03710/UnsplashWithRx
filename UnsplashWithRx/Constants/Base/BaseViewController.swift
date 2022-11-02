//
//  BaseViewController.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/01.
//

import UIKit

class BaseViewController: UIViewController {

    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        setConstraints()
    }
    
    
    // MARK: - Helper Functions

    func configureUI() { }
    
    func setConstraints() { }

}

