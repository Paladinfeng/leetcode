//
//  main.swift
//  Longest Common Prefix
//
//  Created by xuezhaofeng on 2017/8/8.
//  Copyright © 2017年 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count != 0 {
//            var longestStrIndex = 0
//            strs.map {
////                $0.characters.flatMap {
////                    print($0)
////                }
//                if $0.characters.count > strlen {
//                    strlen = $0.characters.count
//                }
//            }
            
//            for i in 0..<strs.count {
//                if strs[i].count > strlen.count {
//                    strlen = strs[i]
//                }
//            }
//            strs.reduce("") { longest, current in
//                if current.count > longest.count {
//                    longest = current
//                }
//            }
            
//            print(strlen)
//            var temp = strs.first
//            for s in strs {
            
//            }
            var result: String?
            var shortestStrLen = Int.max
            
            _ = strs.map {
                if $0.characters.count < shortestStrLen {
                    shortestStrLen = $0.characters.count
                    result = $0
                }
            }
            
//            print(result, shortestStrLen)
            
            if var result = result {
                var endIndex = result.endIndex
                for s in strs {
                    while !result.isEmpty && !s.hasPrefix(result) {
                        endIndex = s.index(before: endIndex)
//                        result.remove(at: endIndex)
//                        print(endIndex)
                        result = result.substring(to: endIndex)
//                        print(result)
//                        result.remove(at: result.endIndex)
//                        result.removeLast()
//                        result.remove
                    }
                }
                return result
            }
            return ""
        }
        return ""
    }
}

let result = Solution().longestCommonPrefix(["aaa", "aaab", "aaac", "aasdf"])
print(result)
