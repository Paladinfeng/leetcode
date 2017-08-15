//
//  main.swift
//  Add Two Numbers
//
//  Created by xuezhaofeng on 2017/8/2.
//  Copyright © 2017年 paladinfeng. All rights reserved.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
//        self.next = nil
    }
    
    
    
//    var description: String {
//
//    }
    
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return nil
    }
}

func creatList(_ list: String) -> ListNode? {
//    _ = list.map {
    
//    }
    let nodeArray = Array(list.characters.flatMap{ Int(String($0)) }.reversed())
    
//    let node: ListNode = ListNode(array[2])
//    node.next = ListNode(array[1])
//    node.next?.next = ListNode(array[0])
    let node = ListNode(nodeArray.last!)
    
    
    
    
    
//    print(array)
    
    return nil
}

let l1 = creatList("342")
let l2 = creatList("465")

let result = Solution().addTwoNumbers(l1, l2);
print(result)

