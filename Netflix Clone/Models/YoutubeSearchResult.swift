//
//  YoutubeResponse.swift
//  Netflix Clone
//
//  Created by Đinh Thái Sơn on 21/06/2023.
//

import Foundation

struct YoutubeSearchResult: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let etag: String?
    let id: VideoID
}

struct VideoID: Codable {
    
    let kind: String?
    let videoId: String?
}
