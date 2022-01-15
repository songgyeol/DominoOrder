//
//  CategoryCell.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/15.
//

import UIKit

final class CategoryCell: UITableViewCell {
    
    // MARK: - Properties
    static let identifier = "CategoryCell"
    //이미지뷰설정
    private let categoryImageView = UIImageView()
    
    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CategoryCell {
    //외부에서 셀을 설정하고 이 함수를 호출하여 이미지를 세팅
    func set(imageName: String) {
        categoryImageView.image = UIImage(named: imageName)
    }
}

// MARK: - UI
extension CategoryCell {
    private func setUI() {
        //이미지뷰설정
        contentView.addSubview(categoryImageView)
    }
    
    private func setLayout() {
        categoryImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoryImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            categoryImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            categoryImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            categoryImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        
        ])
    }
}
