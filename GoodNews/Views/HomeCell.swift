//
//  HomeCell.swift
//  GoodNews
//
//  Created by Halil YAŞ on 20.07.2023.
//

import UIKit
import SnapKit

class HomeCell: UITableViewCell {
    
    //MARK: - Properties
    
    let newsImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 2
        return image
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        return label
    }()
    
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        
        addSubview(newsImage)
        newsImage.snp.makeConstraints { make in
            make.height.equalTo(130)
            make.top.equalTo(10)
            make.left.equalTo(8)
            make.right.equalTo(-8)
        }
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(newsImage.snp.bottom).offset(5)
            make.left.equalTo(8)
            make.right.equalTo(-8)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Helpers
    
}
