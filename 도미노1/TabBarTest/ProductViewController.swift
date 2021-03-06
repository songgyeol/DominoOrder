//
//  ProductViewController.swift
//  TabBarTest
//
//  Created by 송결 on 2022/01/01.
//

import UIKit

class ProductViewController: UIViewController {
    
    let product: [Product] = [
        
        Product(productCell: "포테이토.jpg", productLabel: "포테이토", productSubLabel: "10,000원")!,
        Product(productCell: "불고기.jpg", productLabel: "불고기", productSubLabel: "10,000원원")!,
        Product(productCell: "페퍼로니.jpg", productLabel: "페퍼로니", productSubLabel: "10,000원")!,
        Product(productCell: "베이컨체더치즈.jpg", productLabel: "베이컨체더치즈", productSubLabel: "10,000원")!,
        Product(productCell: "슈퍼슈프림.jpg", productLabel: "슈퍼슈프림", productSubLabel: "10,000원")!,
        Product(productCell: "슈퍼디럭스.jpg", productLabel: "슈퍼디럭스", productSubLabel: "10,000원")!
    ]
    

    
    let productTable: UITableView = {
        let productTable = UITableView()
        productTable.rowHeight = 120
        return productTable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.title = "클래식 피자"
        setBasics()
        setLayout()
    }
    
}

   

extension ProductViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.count
        //switch문 사용안되는지?
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTable.dequeueReusableCell(withIdentifier: ProductTableViewCell.cellID, for: indexPath) as! ProductTableViewCell

        cell.productImg.image = product[indexPath.row].productImg
        cell.productTitle.text = product[indexPath.row].productTitle
        cell.productSubText.text = product[indexPath.row].productSubText
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.row {
        case 0:
            let detail = DetailViewController()
            self.navigationController?.pushViewController(detail, animated: true)
            DetailViewController.imageView.image = UIImage(named: "포테이토.jpg")
            detail.title = "포테이토"
        
            
        case 1:
            let detail = DetailViewController()
            self.navigationController?.pushViewController(detail, animated: true)
            DetailViewController.imageView.image = UIImage(named: "불고기.jpg")
            detail.title = "불고기"
            
        case 2:
            let detail = DetailViewController()
            self.navigationController?.pushViewController(detail, animated: true)
            DetailViewController.imageView.image = UIImage(named: "페퍼로니.jpg")
            detail.title = "페퍼로니"
            
        case 3:
            let detail = DetailViewController()
            self.navigationController?.pushViewController(detail, animated: true)
            DetailViewController.imageView.image = UIImage(named: "베이컨체더치즈.jpg")
            detail.title = "베이컨체더치즈"
            
        case 4:
            let detail = DetailViewController()
            self.navigationController?.pushViewController(detail, animated: true)
            DetailViewController.imageView.image = UIImage(named: "슈퍼슈프림.jpg")
            detail.title = "슈퍼슈프림"
            
        case 5:
            let detail = DetailViewController()
            self.navigationController?.pushViewController(detail, animated: true)
            DetailViewController.imageView.image = UIImage(named: "슈퍼디럭스.jpg")
            detail.title = "슈퍼디럭스"
            
        default:
            break
        }
    }

}
    

//MARK: -UI
extension ProductViewController {

    final private func setBasics() {
        view.addSubview(productTable)
        productTable.register(ProductTableViewCell.self, forCellReuseIdentifier: ProductTableViewCell.cellID)
        productTable.delegate = self
        productTable.dataSource = self
    }
    final private func setLayout() {
        productTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            productTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            productTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            productTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            productTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
