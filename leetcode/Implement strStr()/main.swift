//
//  main.swift
//  Implement strStr()
//
//  Created by xuezhaofeng on 21/08/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

//"mississippi"
//"issip"
//待优化

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if haystack == needle || needle.isEmpty{
            return 0
        }
        
//        if haystack.contains(needle) {
//            return 1
//            if let firstNeedle = needle.characters.first {
//                let index = haystack.characters.index(of: firstNeedle)!
//
//                return haystack.distance(from: haystack.startIndex, to: index)
//            }
//            print()
//            return haystack.index(after: needle.startIndex).encodedOffset + 1
            
            var i = 0
            var temp = 0
            var j = 0
            let h = Array(haystack.characters)
            let n = Array(needle.characters)
            var flag = false
            
            while j < n.count {
                
                if i+temp > h.count-1 {
                    return -1
                }
                
                if h[i+temp] == n[j] {
//                    print(true)
                    flag = true
                    print(i+temp, j)
                    i += 1
                    j += 1
                } else {
                    
                    if flag {
                        flag = false
                        temp += 1
                        i = 0
                        j = 0
                    } else {
                        i += 1
                    }
                    
                }
            }
            
            return i + temp - j
//            let haystack = haystack as NSString
//            let needle = needle as NSString
            
//            print()
            
//            let startPos =
//            print(startPos)
//            return haystack.distance(from: haystack.startIndex, to: (haystack.range(of: needle)?.lowerBound)!)
            
//        }
        
//        return -1
    }
}

let result = Solution().strStr("mississisi", "issip")
print(result)

