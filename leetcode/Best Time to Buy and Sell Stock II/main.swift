//
//  main.swift
//  Best Time to Buy and Sell Stock II
//
//  Created by xuezhaofeng on 27/02/2018.
//  Copyright © 2018 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        if prices.count == 0 {
            return 0
        }
        
        var maxProfit = 0
        for i in 0..<prices.count-1 {
            if prices[i] < prices[i+1] {
                maxProfit += (prices[i+1] - prices[i])
            }
        }
        return maxProfit
        
    }
}

let result = Solution().maxProfit([7, 1, 5, 3, 6, 4])
print(result)
