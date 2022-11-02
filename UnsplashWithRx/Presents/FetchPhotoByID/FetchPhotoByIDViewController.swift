//
//  FetchPhotoByIDViewController.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import UIKit

final class FetchPhotoByIDViewController: BaseViewController {

    // MARK: - Properties
    
    private let photoIdView = FetchPhotoByIDView()
    
    
    // MARK: - Init
    
    override func loadView() {
        view = photoIdView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
