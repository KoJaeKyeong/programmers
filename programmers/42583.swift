//
//  42583.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2021/12/26.
//  다리를 지나는 트럭
//  https://programmers.co.kr/learn/courses/30/lessons/42583

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var second = 0
    var truckWeights = truck_weights
    var onBridge = Array<Int>(repeating: 0, count: bridge_length)
    var sumOfBridge = 0

    while true {
        second += 1
        sumOfBridge -= onBridge.removeLast()
        if let newWeight = truckWeights.first {
            if newWeight + sumOfBridge > weight {
                onBridge.insert(0, at: 0)
            } else {
                sumOfBridge += truckWeights.removeFirst()
                onBridge.insert(newWeight, at: 0)
            }
        }
        if truckWeights.isEmpty {
            second += bridge_length
            break
        }
    }
    return second
}
