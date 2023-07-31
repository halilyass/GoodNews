//
//  NewsManager.swift
//  GoodNews
//
//  Created by Halil YAŞ on 19.07.2023.
//


import Foundation

class NewsManager {
    
    
    func fetchNewsData(completion : @escaping([Article]?) -> ()) {
        
        let newsURL = "https://newsapi.org/v2/top-headlines?country=us&apiKey=7fd6eca3dcf246afb4182c9601e8a52b"
        
        let url = URL(string: newsURL)!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            
            if let safeData = data {
                
                print(safeData)
                
                let news = try? JSONDecoder().decode(NewsModel.self, from: safeData)
                
                if let news = news {
                    
                    completion(news.articles)
                }
            }
            
        }.resume()
    }
}
