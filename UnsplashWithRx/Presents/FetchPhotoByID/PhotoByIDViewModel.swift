//
//  PhotoByIDViewModel.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import Foundation

import RxCocoa
import RxSwift

final class PhotoByIDViewModel: CommonViewModel {
    
    // MARK: - Properties
    
    var photoId = PublishRelay<Photos>()
    
    
    // MARK: - In & Out Data
    
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    
    // MARK: - Helper Functions
    
    func fetchListPhoto() {
        guard let request = PhotoManager.shared.setRequest(.id) else { return }
        
        URLSession.request(Photos.self, endpoint: request) { [weak self] result in
            
            switch result {
            case .success(let photo):
                self?.photoId.accept(photo)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func transform(input: Input) -> Output {
        
        return Output()
    }
}
