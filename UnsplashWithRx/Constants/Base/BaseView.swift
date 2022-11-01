//
//  BaseView.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/01.
//

import UIKit

class BaseView: UIView {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Helper Functions
    
    func configureUI() { }
    
    func setConstraints() { }

}
