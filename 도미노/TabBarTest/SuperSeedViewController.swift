//
//  TestViewController.swift
//  TabBarTest
//
//  Created by 송결 on 2021/12/25.
//

import UIKit

class SuperSeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
//    extension SuperSeedViewController: UITableViewDelegate, UITableViewDataSource {
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return user.count
//        }
//
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.cellId, for: indexPath) as! CustomCell
//
//            cell.mainMenu.image = user[indexPath.row].mainMenu
//            // cell.name.text = user[indexPath.row].name
//
//            return cell
//        }
//
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            switch indexPath.row{
//            case 0:
//                let nextVC = SuperSeedViewController()
//                self.navigationController?.pushViewController(nextVC, animated: true)
//            case 1:
//                let nextVC = PremiumViewController()
//                self.navigationController?.pushViewController(nextVC, animated: true)
//            case 2:
//                let nextVC = ClasicViewController()
//                self.navigationController?.pushViewController(nextVC, animated: true)
//            case 3:
//                let nextVC = SideDishViewController()
//                self.navigationController?.pushViewController(nextVC, animated: true)
//            case 4:
//                let nextVC = DrinkViewController()
//                self.navigationController?.pushViewController(nextVC, animated: true)
//            case 5:
//                let nextVC = SauceViewController()
//                self.navigationController?.pushViewController(nextVC, animated: true)
//
//            default:
//                break
//            }
//        }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    // tableView 생성
//    private let tableView: UITableView = {
//        let tableview = UITableView()
//        return tableview
//    }()
//
//    // imageView 생성
//    private let img: UIImageView = {
//        let imgView = UIImageView()
//        imgView.image = UIImage(named: "글램핑 바베큐")
//        return imgView
//    }()
//
//    // label 생성
//    private let label: UILabel = {
//        let label = UILabel()
//        label.text = "상어상어"
//        label.textColor = UIColor.gray
//        return label
//    }()
//
//    private func setConstraint() {
//        tableView.addSubview(img)
//        tableView.addSubview(label)
//
//        img.translatesAutoresizingMaskIntoConstraints = false
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            img.leadingAnchor.constraint(equalTo: tableView.leadingAnchor, constant: 16),
//            img.topAnchor.constraint(equalTo: tableView.topAnchor, constant: 10),
//            img.bottomAnchor.constraint(equalTo: tableView.bottomAnchor, constant: -10),
//            img.widthAnchor.constraint(equalToConstant: 64),
//            img.heightAnchor.constraint(equalToConstant: 64),
//            label.leadingAnchor.constraint(equalTo: img.trailingAnchor, constant: 15),
//            label.trailingAnchor.constraint(equalTo: tableView.trailingAnchor, constant: 16),
//            label.centerYAnchor.constraint(equalTo: img.centerYAnchor)
//        ])
//    }
//
}
