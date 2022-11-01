//
//  PhotoManager.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import Foundation

final class PhotoManager {
    
    // MARK: - Enum
    
    enum PhotoType {
        case list, id
    }
    
    // MARK: - Properties
    
    static let shared = PhotoManager()
    
    
    // MARK: - Init
    
    private init() { }
    
    
    // MARK: - Helper Functions
    
    func fetchPhotos(_ type: PhotoType) {
        
    }
}
