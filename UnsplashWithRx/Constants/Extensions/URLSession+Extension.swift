//
//  URLSession+Extension.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/01.
//

import Foundation

enum APIError: Error {
    case noData
    case invalidData
}

extension URLSession {
    
    typealias completionHandler = (Data?, URLResponse?, Error?) -> Void
    
    @discardableResult
    func customDataTask(_ endpoint: URLRequest, completionHandler: @escaping completionHandler) -> URLSessionDataTask {
        let task = dataTask(with: endpoint, completionHandler: completionHandler)
        task.resume()
        
        return task
    }
    
    static func request<T: Codable>(_ codable: T.Type = T.self, _ session: URLSession = .shared, endpoint: URLRequest, completion: @escaping (Result<T, APIError>) -> Void) {
        
        session.customDataTask(endpoint) { data, response, error in
            
            guard let data = data else {
                print("No Data Returned")
                completion(.failure(.noData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                 print("result: \(result)")
                completion(.success(result))
            } catch {
                print("error: \(error)")
                completion(.failure(.invalidData))
            }
        }
    }
}
