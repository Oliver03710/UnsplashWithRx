//
//  FetchPhotoByIDViewController.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import UIKit

final class FetchPhotoByIDViewController: BaseViewController {

    // MARK: - Properties
    
    private let photoListView = FetchPhotoByIDView()
    
    
    // MARK: - Init
    
    override func loadView() {
        view = photoListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
