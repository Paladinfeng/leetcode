//
//  main.swift
//  Search Insert Position
//
//  Created by xuezhaofeng on 21/08/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//#1
//        if nums.isEmpty {
//            return 0
//        }
//
//        if let targetIndex = nums.index(of: target){
//            return targetIndex
//        } else {
//            var temp = nums
//            temp.append(target)
//            temp.sort()
//            return temp.index(of: target)!
//        }
        
//#2
//        if nums.isEmpty {
//            return 0
//        }
//
//        for (index, value) in nums.enumerated() {
//            if value >= target {
//                return index
//            }
//        }
//
//        return nums.count
        
//#3
        for i in 0..<nums.count {
            if nums[i] >= target {
                return i
            }
        }
        return nums.count
        
//#4 二分法
    }
}

let result = Solution().searchInsert([1, 3, 5, 6], 2)
print(result)

