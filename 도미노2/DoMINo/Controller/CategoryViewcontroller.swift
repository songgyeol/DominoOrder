//
//  CategoryViewcontroller.swift
//  DoMINo
//
//  Created by 송결 on 2021/12/25.
//

import UIKit

class CategoryViewcontroller: UIViewController {

    let category = UITableView()
    let categoryList = ["슈퍼시드", "프리미엄", "클래식", "사이드", "음료", "피클소스"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
    }
    
    func setCategoryTableView() {
        category.dataSource = self
        category.delegate = self
        category.register(CategoryViewCell.self, forCellReuseIdentifier: "CategoryCell")
        category.rowHeight = 100
    }
    func setUI() {
        view.addSubview(category)
        let CategoryHeaderView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 300))
        category.tableHeaderView = CategoryHeaderView
        //category.image = UIImage(named: "logo")
        category.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            category.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            category.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            category.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            category.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

}

extension CategoryViewcontroller: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let categoryCell = category.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryViewCell else {  fatalError() }
        categoryCell.category.image = UIImage(named: categoryList[indexPath.item])
        return categoryCell
    }
    
    
}
extension CategoryViewcontroller: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = ProductViewController()
        nextVC.navigationItem.title = categoryList[indexPath.row]
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

    
    
    
    
    
    
    
    
    

