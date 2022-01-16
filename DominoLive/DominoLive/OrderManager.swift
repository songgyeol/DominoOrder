//
//  OrderManager.swift
//  DominoLive
//
//  Created by 송결 on 2022/01/16.
//

import Foundation

class OrderManager {
    
    static let shared = OrderManager()
    
    //총 금액
    var totalPrice = 0
    // 물건:수량
    var items: [String: Int] = [:]
    //02:12:50
    
    //MARK: - LifeCycle
    private init() {}
}

//MARK: - Helpers
extension OrderManager {
    
}
