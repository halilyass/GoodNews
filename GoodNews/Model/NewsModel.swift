//
//  NewsModel.swift
//  GoodNews
//
//  Created by Halil YAŞ on 19.07.2023.
//

import Foundation

struct NewsModel: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
}
