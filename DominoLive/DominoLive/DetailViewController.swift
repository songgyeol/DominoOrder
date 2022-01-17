//
//  DetailViewController.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/16.
//

import UIKit

final class DetailViewController: UIViewController {
    
    private let imageView = UIImageView()
    private let subtractButton = UIButton() //(type: .system) 버튼색설정
    private let addButton = UIButton()
    private let quantityLabel = UILabel()
    
    private var quantity = 0 {
        willSet {
            quantityLabel.text = "\(newValue) 개"
        }
    }
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
}

//MARK: - Selectors
//버튼, 02:05~
extension DetailViewController {
    @objc
    func didTapButton(_ sender: UIButton) {
        print(sender)
        switch sender {
        case subtractButton:
            //태스트 print("-")
            guard quantity > 0 else { return }
            OrderManager.shared.removeItem(itemName: "불고기")
                quantity -= 1
// 위 가드문과 같은 값이지만 풀었을 때
//            if quantity > 0 {
//          quantity -= 1
//          }
        case addButton:
            //테스트 print("+")
            OrderManager.shared.addItem(itemName: "불고기")
            quantity += 1
        default:
            fatalError()
        }
        print(quantity)
    }
}
//MARK: - UI
extension DetailViewController {
    private func setUI() {
        setBasic()
        setLayout()
    }
    
    private func setBasic() {
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "불고기")
        //테스트
        //imageView.backgroundColor = .yellow
        //subtractButton.setTitleColor(.black, for: .normal) //버튼색설정
        subtractButton.setTitle("-", for: .normal)
        addButton.setTitle("+", for: .normal)
        [subtractButton, addButton].forEach {
            $0.setTitleColor(.black, for: .normal)
            $0.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        }
        quantityLabel.text = "0 개"
        //텍스트 중앙으로
        quantityLabel.textAlignment = .center
        quantityLabel.backgroundColor = .lightGray
        
        
        [imageView, subtractButton, addButton, quantityLabel].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setLayout() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            
            quantityLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
            quantityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            quantityLabel.heightAnchor.constraint(equalToConstant: 38),
            quantityLabel.widthAnchor.constraint(equalToConstant: 140),
        
            subtractButton.topAnchor.constraint(equalTo: quantityLabel.topAnchor),
            subtractButton.trailingAnchor.constraint(equalTo: quantityLabel.leadingAnchor),
            subtractButton.bottomAnchor.constraint(equalTo: quantityLabel.bottomAnchor),
            subtractButton.widthAnchor.constraint(equalToConstant: 20),
            
            addButton.topAnchor.constraint(equalTo: quantityLabel.topAnchor),
            addButton.leadingAnchor.constraint(equalTo: quantityLabel.trailingAnchor),
            addButton.bottomAnchor.constraint(equalTo: quantityLabel.bottomAnchor),
            addButton.widthAnchor.constraint(equalToConstant: 20),
            
        
        ])
    }
}
