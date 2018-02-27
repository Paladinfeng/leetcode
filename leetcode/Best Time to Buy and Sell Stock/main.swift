//
//  main.swift
//  Best Time to Buy and Sell Stock
//
//  Created by xuezhaofeng on 27/02/2018.
//  Copyright © 2018 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
//        if let min = prices.min(), let minIndex = prices.index(of: min) {
//            if minIndex != prices.count {
//                var minProfit = 0
//                for i in minIndex+1..<prices.count {
//                    if minProfit < prices[i] - min {
//                        minProfit = prices[i] - min
//                    }
//                }
//                return minProfit
//            }
//        }
        
        var maxProfit = 0
        
        for i in 0..<prices.count {
//            print(prices[i])
            if i != prices.count - 1 {
                if prices[i] < prices[i + 1] {
                    for j in i+1..<prices.count {
                        let temp = prices[j] - prices[i]
                        if maxProfit < temp { maxProfit = temp }
                    }
                }
            }
        }
        return maxProfit
    }
}

let result = Solution().maxProfit([7, 1, 5, 3, 6, 4])
print(result)

