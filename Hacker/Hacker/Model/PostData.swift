//
//  PostData.swift
//  Hacker
//
//  Created by Suokhwan Yun on 2020-12-08.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
    
}
