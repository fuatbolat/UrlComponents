//
//  main.swift
//  QueryURL
//
//  Created by Fuat Bolat on 26.01.2025.
//

import Foundation



let baseUrl = URL(string: "https://apple.com")!



//MARK: - URLExtension

extension URL{ func query(_ query: [String: String]) -> URL? {
        
    var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: true)!
    
    urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
    
    return urlComponents.url
}
}

let urlDictioınary = ["test1" : "Test" , "test2" : "Test2"]

print(baseUrl.query(urlDictioınary)!)


