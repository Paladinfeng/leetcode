//
//  main.swift
//  Remove Duplicates from Sorted Array
//
//  Created by xuezhaofeng on 16/08/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

//print("Hello, World!")
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.isEmpty {
            return 0
        }

//        var i = 1, j = 1
//        while j < nums.endIndex {
//            if nums[j] != nums[i - 1] {
//                nums[i] = nums[j]
//                i += 1
//                j += 1
//            } else {
//                j += 1
//            }
//            print(nums)
//        }
//        return i
        var i = 0
        for j in 1..<nums.endIndex {
            if nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }
}

var array = [1, 1, 2, 2, 3, 3]

let result = Solution().removeDuplicates(&array)
print(result, array)
