//
//  ProductViewController.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/15.
//

import UIKit

final class ProductViewController: UIViewController {

    private let tableView = UITableView()
    private var list = [String]() //빈 리스트 만들기, 비어 있는 리스트를 헬퍼에서 ->
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
}
// MARK: - Helpers
//카테고리에서 프로덕트뷰 연결된거 확인 후
extension ProductViewController {
    func set(categoryName: String) {// -> 클릭하면 셋을 통해 리스트로 전달하고 전달했으니까 테이블뷰로 리로드
        list = Menu().list[categoryName] ?? []  //??????
        tableView.reloadData()
        
    }
}

// MARK: - UITableViewDataSource
//Delegate설정
extension ProductViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //1. return Menu().category.count
        //2. 카테고리에서 프로덕트뷰 연결된거 확인 후 return list.count
        //3. 프로덕트 넘길때 리스트 말고 숫자로
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = CategoryCell()
        let cell = ProductCell()
        let name = list[indexPath.row]
        cell.set(imageName: name, title: name, price: "4000")
        //cell.set(imageName: Menu().category[indexPath.row])
        return cell
    }
}
 // MARK: - UITableViewDelegate
extension ProductViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //DetailView 연결
        //navigationController?.pushViewController(ProductViewController(), animated: true)
        navigationController?.pushViewController(DetailViewController(), animated: true)
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
