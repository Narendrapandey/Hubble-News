//
//  NewsListViewModel.swift
//  HubbleNews
//
//  Created by Narendra Pandey on 22/05/21.
//

import Foundation

class NewsListViewModel {
    
    // MARK: - Variable
    private var service: WebService?
    
    var didFinishFetch: (() -> ())?
    var showErrorAlert: (() -> ())?
    
    var newsList: [NewsList]! {
        didSet {
            didFinishFetch?()
        }
    }
    
    var error: String! {
        didSet {
            showErrorAlert?()
        }
    }
    
    
    // MARK: - Constructor
    init(service: WebService) {
        self.service = service
    }
    
    
    // MARK: - API Call
    func getNewsList() {
        
        WebService.shared.getNews(URL(string: "http://hubblesite.org/api/v3/news")!) { response in
            
            if let response = response {
                self.newsList = response
            }
            
        } errorBlock: { error in
            self.error = error
        }
    }
}
