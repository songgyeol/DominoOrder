//
//  TabOneViewController.swift
//  TabBarTest
//
//  Created by 송결 on 2021/11/28.
//

import UIKit

class TabOneViewController: UIViewController {
    let tableHeader = UITableViewHeaderFooterView()
    let table = UITableView()
   
    let user: [User] = [User(mainMenu: UIImage(named: "슈퍼시드.png")!),
                        User(mainMenu: UIImage(named: "프리미엄.png")!),
                        User(mainMenu: UIImage(named: "클래식.png")!),
                        User(mainMenu: UIImage(named: "사이드디시.png")!),
                        User(mainMenu: UIImage(named: "음료.png")!),
                        User(mainMenu: UIImage(named: "피클소스.png")!)]
    
    let logoimage = #imageLiteral(resourceName: "logo")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        layout()
        attribute()
        headerViewLayout()
        //테이블 경계?!
        //        table.estimatedSectionHeaderHeight = 10
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
extension TabOneViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.cellId, for: indexPath) as! CustomCell
        
        cell.mainMenu.image = user[indexPath.row].mainMenu
        // cell.name.text = user[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row{
        case 0:
            let nextVC = SuperSeedViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 1:
            let nextVC = PremiumViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 2:
            let nextVC = ClasicViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 3:
            let nextVC = SideDishViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 4:
            let nextVC = DrinkViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case 5:
            let nextVC = SauceViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)

        default:
            break
        }
    }
    
    func headerViewLayout() {
        tableHeader.backgroundView = UIImageView.init(image: logoimage)
        tableHeader.backgroundColor = .darkGray
        tableHeader.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableHeader.widthAnchor.constraint(equalToConstant: 300),
            tableHeader.heightAnchor.constraint(equalToConstant: 300)
        ])
        tableHeader.layoutIfNeeded()
    }
    
    
    func layout() {
        view.addSubview(table)
        //cell 간격
        table.rowHeight = 100
        table.backgroundColor = .white
        table.translatesAutoresizingMaskIntoConstraints = false
        table.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        table.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        
    }
    
    func attribute() {
        table.register(CustomCell.self, forCellReuseIdentifier: CustomCell.cellId)
        table.delegate = self
        table.dataSource = self
        table.tableHeaderView = tableHeader
    }
    
}

