//
//  FetchPhotoListView.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import UIKit

import RxCocoa
import RxSwift

final class FetchPhotoListView: BaseView {

    // MARK: - Properties
    
    private let viewModel = PhotoListViewModel()
    private let disposeBag = DisposeBag()
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Helper Functions
    
    override func configureUI() {
        viewModel.fetchPhotoList()
        viewModel.photoList
            .asDriver(onErrorJustReturn: [])
            .drive { value in
                dump(value)
            }
            .disposed(by: disposeBag)
    }
    
    override func setConstraints() {
        
    }

}
