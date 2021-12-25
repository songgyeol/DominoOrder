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
    
}
