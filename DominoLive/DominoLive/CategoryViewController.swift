//
//  CategoryViewController.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/14.
//

import UIKit

import UIKit

final class CategoryViewController: UIViewController {
    
    private let tableView = UITableView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
}

// MARK: - UITableViewDataSource
//Delegate설정
extension CategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //1. 처음 테스트 return 4
        //2. 메뉴파일 만들고 설정, categorycell
        //3.
        return Menu().category.count
        //4. ProductView 만들고 메뉴파일에 list 지정 후 설정??
        //return Menu().list.keys.count??
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //처음설정 let cell = UITableViewCell()
        //categoryCell 설정하고 바꾸기
        let cell = CategoryCell()
        //categorycell text
        //처음설정 cell.textLabel?.text = Menu().category[indexPath.row]
        //categoryCell 설정하고 바꾸기
        cell.set(imageName: Menu().category[indexPath.row])
        return cell
    }
}
 // MARK: - UITableViewDelegate
//ProductView 연결
extension CategoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let productVC = ProductViewController()
        let categoryName = (Menu().category[indexPath.row])
        productVC.set(categoryName: categoryName)
        navigationController?.pushViewController(productVC, animated: true)
        //keys는 순서가 존재하지 않는다 순서를 지정하기 위함(Menu, )
    }
}


// MARK: - UI
extension CategoryViewController {
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
