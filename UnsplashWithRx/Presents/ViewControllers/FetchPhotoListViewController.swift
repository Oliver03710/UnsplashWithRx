//
//  FetchPhotoListViewController.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/01.
//

import UIKit

final class FetchPhotoListViewController: BaseViewController {

    // MARK: - Properties
    
    private let photoListView = FetchPhotoListView()
    
    
    // MARK: - Init
    
    override func loadView() {
        view = photoListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
