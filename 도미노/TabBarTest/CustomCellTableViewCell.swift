//
//  CusTomCell.swift
//  TabBarView
//
//  Created by 송결 on 2021/11/28.
//

import UIKit

struct User {
    
    let mainMenu: UIImage
    // let name: String
}
struct Product {
    var productCell: UIImage
    var productLabel: String
    var productSubLabel: String
}

class CustomCell: UITableViewCell {
    //아이디 선언
    static let cellId = "CellId"
    //셀에 들어갈 요소들 선언
    let mainMenu = UIImageView()
    
  
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func layout() {
        //            1. 위에서 선언한 두 요소를 뷰에 addSubview 해줍니다.
        //            2. 우선 뷰의 leadingAnchor로 부터 10pt 간격
        //            2-1 . centerYAnchor를 통해 이미지가 뷰의 Y축 가운데에 놓이도록 설정
        //            2-2. 가로 세로 크기 60 고정
        //            3. profile 의 trailingAnchor로 부터 10pt 간격
        //            3-1. centerYAnchor를 통해 이미지가 뷰의 Y축 가운데에 놓이도록 설정
        self.addSubview(mainMenu)
        //self.addSubview(name)
        
        
        mainMenu.translatesAutoresizingMaskIntoConstraints = false
        mainMenu.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        mainMenu.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        //        mainMenu.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 10).isActive = true
        //        mainMenu.centerYAnchor.constraint(equalTo: self.centerXAnchor, constant: 10).isActive = true
        mainMenu.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainMenu.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
}

