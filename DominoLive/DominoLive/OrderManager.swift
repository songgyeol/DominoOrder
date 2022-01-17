//
//  OrderManager.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/16.
//

import Foundation
//singleton
class OrderManager {
    
    static let shared = OrderManager()
    
    //총 금액
    var totalPrice = 0
    // 물건:수량
    var items: [String: Int] = [:]
    
    
    //MARK: - LifeCycle
    private init() {}
}

//MARK: - Helpers
extension OrderManager {
    func addItem(itemName: String) {
        if let count = items[itemName] { // items에 물건이 이미 존재할 경우
            items[itemName] = count + 1
        } else { // 물건이 없을 경우
            items[itemName] = 1
            
        }
        print(itemName, items[itemName]!)
    }
    
    func removeItem(itemName: String) {
        guard let count = items[itemName] else { return }
        items[itemName] = count - 1
        
    }
}
