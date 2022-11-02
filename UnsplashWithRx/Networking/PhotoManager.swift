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
    
    func setRequest(_ type: PhotoType, photoId: String? = nil) -> URLRequest? {
        
        var urlString = Endpoints.UnsplashURL
        
        if let id = photoId, type == .id {
            urlString += "/\(id)"
        }
        
        guard let url = URL(string: urlString) else {
            print(NetworkingCodes.url.rawValue)
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue(APIKeys.UnsplashAuthorization, forHTTPHeaderField: NetworkingCodes.autho.rawValue)
        return request
        
    }
}
