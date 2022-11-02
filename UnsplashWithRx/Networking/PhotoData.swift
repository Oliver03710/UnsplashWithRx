//
//  PhotoData.swift
//  UnsplashWithRx
//
//  Created by Junhee Yoon on 2022/11/02.
//

import Foundation

struct PhotoList: Codable, Hashable {
    
    let ids: String
    let urls: Urls

    enum CodingKeys: String, CodingKey {
        case urls
        case ids = "id"
    }
}

struct Photos: Codable, Hashable {
    
    let urls: Urls
    let exif: Exif

    enum CodingKeys: String, CodingKey {
        case urls, exif
    }
}

struct Urls: Codable, Hashable {
    let raw, full, regular, small, thumb, smallS3: String

    enum CodingKeys: String, CodingKey {
        case raw, full, regular, small, thumb
        case smallS3 = "small_s3"
    }
}

struct Exif: Codable, Hashable {
    let name, aperature, iso, exposureTime, focalLength: String

    enum CodingKeys: String, CodingKey {
        case name, aperature, iso
        case exposureTime = "exposure_time"
        case focalLength = "focal_length"
    }
}
