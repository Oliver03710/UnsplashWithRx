//
//  CommonViewModel+Protocol.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import Foundation

protocol CommonViewModel {
    
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}
