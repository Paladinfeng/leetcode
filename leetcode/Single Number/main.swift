//
//  main.swift
//  Single Number
//
//  Created by xuezhaofeng on 28/02/2018.
//  Copyright © 2018 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
//        var temp = nums[0]
//        for i in 1..<nums.endIndex {
//            temp = temp ^ nums[i]
//        }
//        return temp
        
        return nums.reduce(0) {
            return $0 ^ $1
        }
        
//        return 0
    }
}

let result = Solution().singleNumber([1, 2, 1, 2, 3])
print(result)

