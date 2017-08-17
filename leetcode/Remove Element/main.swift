//
//  main.swift
//  Remove Element
//
//  Created by xuezhaofeng on 17/08/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.isEmpty {
            return 0
        }
        var temp = 0
        for i in 0..<nums.count {
            if nums[i] != val {
                print(i)
                nums[temp] = nums[i]
                temp += 1
            }
        }
        
        return temp
    }
}

var array = [1, 1, 2, 2, 1]
let result = Solution().removeElement(&array, 1)
print(result, array)
