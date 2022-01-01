//
//  ProductViewController.swift
//  TabBarTest
//
//  Created by 송결 on 2021/12/21.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    let productcell = UIImageView()
    let productLabel = UILabel()
    let productSubLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: reuseIdentifier)
        setUI()
        productLabel.numberOfLines = 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        [productcell, productLabel, productSubLabel].forEach { (view) in
            self.contentView.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            
        }
        NSLayoutConstraint.activate([
            productcell.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            productcell.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            productcell.heightAnchor.constraint(equalTo: self.contentView.heightAnchor),
            productcell.widthAnchor.constraint(equalToConstant: 120),
            productLabel.leadingAnchor.constraint(equalTo: productcell.trailingAnchor, constant: 10),
            productLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            productLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            productLabel.heightAnchor.constraint(equalTo: self.contentView.heightAnchor)
           
        ])
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
