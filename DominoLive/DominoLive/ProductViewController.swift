//
//  ProductViewController.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/15.
//

import UIKit

final class ProductViewController: UIViewController {

    private let tableView = UITableView()
    private var list = [String]()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setUI()
    }
}
// MARK: - Helpers
//카테고리에서 프로덕트뷰 연결된거 확인 후
extension ProductViewController {
    func set(categoryName: String) {
        list = Menu().list[categoryName] ?? []  //??????
        
    }
}

// MARK: - UITableViewDataSource
//Delegate설정
extension ProductViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //1. return Menu().category.count
        //2. 카테고리에서 프로덕트뷰 연결된거 확인 후 return list.count
        //3. 프로덕트 넘길때 리스트 말고 숫자로
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = CategoryCell()
        let cell = ProductCell()
        //cell.set(imageName: Menu().category[indexPath.row])
        return cell
    }
}
 // MARK: - UITableViewDelegate
extension ProductViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(ProductViewController(), animated: true)
        
    }
}


// MARK: - UI
extension ProductViewController {
    private func setUI() {
        setBasic()
        setLayout()
    }
    
    private func setBasic() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 80
        view.addSubview(tableView)
    }
    
    private func setLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
