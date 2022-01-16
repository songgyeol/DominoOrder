//
//  ProductCell.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/15.
//

import UIKit

final class ProductCell: UITableViewCell {
    
    // MARK: - Properties
    static let identifier = "ProductCell"
    
    private let productImageView = UIImageView()
    private let titleLabel = UILabel()
    private let priceLabel = UILabel()
    
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

// MARK: - Helpers
extension ProductCell {
    func set(imageName: String, title: String, price: String) {
        productImageView.image = UIImage(named: imageName)
        titleLabel.text = title
        priceLabel.text = price + "원"
    }
}


// MARK: - UI
extension ProductCell {
    private func setUI() {
        //이미지뷰설정
        [productImageView, titleLabel, priceLabel].forEach {
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        productImageView.contentMode = .scaleAspectFill
        

    }
    
    private func setLayout() {
        NSLayoutConstraint.activate([
            productImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            productImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            productImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            productImageView.widthAnchor.constraint(equalToConstant: 80),
            
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 20),
            
            
            priceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            priceLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 20)
        ])
    }
    
}
