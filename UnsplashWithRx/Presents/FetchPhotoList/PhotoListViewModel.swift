//
//  PhotoListViewModel.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import Foundation

import RxCocoa
import RxSwift

final class PhotoListViewModel: CommonViewModel {
    
    // MARK: - Properties
    
    var photoList = PublishRelay<[PhotoList]>()
    
    
    // MARK: - In & Out Data
    
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    
    // MARK: - Helper Functions
    
    func fetchPhotoList() {
        guard let request = PhotoManager.shared.setRequest(.list) else { return }
        
        URLSession.request([PhotoList].self, endpoint: request) { [weak self] result in

            switch result {
            case .success(let photoData):
                self?.photoList.accept(photoData)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func transform(input: Input) -> Output {
        
        return Output()
    }
}
