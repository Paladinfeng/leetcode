//
//  main.swift
//  Merge Sorted Array
//
//  Created by xuezhaofeng on 09/11/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//
//  wrong problem
//  [0] 0 [1] 1

import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        
        
//        var i = 0, j = 0
//        while i <= m-1 && j <= n-1 {
//            if nums1[i] > nums2[j] {
//                nums1.insert(nums2[j], at: i)
//                i += 1
//            } else {
//                i += 1
//                j += 1
//            }
//        }
        
//        if m == 0 {
//            nums1.removeAll()
//            nums1 += nums2
//        }
//
//        for j in 0..<n {
//            for i in 0..<m {
//                if nums1[i] >= nums2[j] {
//                    nums1.insert(nums2[j], at: m-1)
//                    break
//                }
//                print(nums1[i])
//                print(nums2[j])
//                if nums2[j] >= nums1[i] {
//                    nums1.insert(nums2[j], at: i+1)
//                } else {
//                    nums1.insert(nums2[j], at: i-1)
//                }
//            }
//        }
//        if nums1[nums1.count - 1] < nums2[nums2.count - 1] {
//            nums1.append(nums2[nums2.count - 1])
//        }
//        if nums1.count < m + n {
//            nums1.append(nums2[n-1])
//        } else if nums1.count > m + n {
//            print(nums1)
//            nums1.removeSubrange(m + n ..< nums1.count)
//        }
//        for i in 0..<m {
//            for j in 0..<n {
//                if nums1[i] < nums2[j] {
//                    continue
//                } else {
//
//                }
//            }
//        }
        
        var startIndex = 0
        var i = 0 // nums1
        var j = 0 // nums2
        var original = nums1
        
        while startIndex <= m + n - 1 {
            if i <= m - 1 && j <= n - 1 {
                if original[i] <= nums2[j] {
                    nums1[startIndex] = original[i]
                    i += 1
                } else {
                    nums1[startIndex] = nums2[j]
                    j += 1
                }
            } else if i <= m - 1 {
                nums1[startIndex] = original[i]
                i += 1
            } else if j <= n - 1 {
                nums1[startIndex] = nums2[j]
                j += 1
            }
            startIndex += 1
        }
    }
}


let arr2 = [1, 3]
var arr1 = [2, 5, 7, 0, 0]
//arr1.reserveCapacity(arr1.count + arr2.count)

Solution().merge(&arr1, 3, arr2, 2)
print(arr1)

