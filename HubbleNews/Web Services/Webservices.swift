//
//  Webservices.swift
//  HubbleNews
//
//  Created by Narendra Pandey on 22/05/21.
//

import Foundation

class WebService {
    
    static let shared = WebService()
    
    func getNews(_ urlPath: URL,
                 completion: @escaping ([NewsList]?) -> (),
                 errorBlock: @escaping (String) -> ()) {
        
        URLSession.shared.dataTask(with: urlPath) { data, response, error in
            
            if let error = error {
                errorBlock(error.localizedDescription)
                
            } else if let data = data {
                if let decoded = try? JSONDecoder().decode([NewsList].self, from: data) {
                    completion(decoded)
                }
            }
        }.resume()
    }
}
