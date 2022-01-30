//
//  77485.swift
//  ForBackJoon
//
//  Created by Jae Kyeong Ko on 2022/01/21.
//  행렬 테두리 회전하기
//  https://programmers.co.kr/learn/courses/30/lessons/77485

import Foundation

struct Coordinate {
    var x: Int
    var y: Int
}

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var matrix = makeMatrix(rows: rows, columns: columns)
    var answer = [Int]()
    for query in queries {
        matrix = lotation(matrix: matrix, coordinate: query).matrix
        answer.append(lotation(matrix: matrix, coordinate: query).answer)
    }
    return answer
}

func makeMatrix(rows: Int, columns: Int) -> [[Int]] {
    var count = 1
    var matrix = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    for i in 0..<rows {
        for j in 0..<columns {
            matrix[i][j] = count
            count += 1
        }
    }
    
    return matrix
}

func lotation(matrix: [[Int]], coordinate: [Int]) -> (matrix: [[Int]], answer: Int) {
    var matrix = matrix
    let startPoint = Coordinate(x: coordinate[0] - 1, y: coordinate[1] - 1)
    let endPoint = Coordinate(x: coordinate[2] - 1, y: coordinate[3] - 1)
    
    var temp1 = matrix[startPoint.x][startPoint.y]
    var temp2 = 0
    var answer = [Int]()
    
    for i in startPoint.y..<endPoint.y {
        temp2 = matrix[startPoint.x][i+1]
        matrix[startPoint.x][i+1] = temp1
        temp1 = temp2
        answer.append(temp1)
    }
    
    for i in startPoint.x..<endPoint.x {
        temp2 = matrix[i+1][endPoint.y]
        matrix[i+1][endPoint.y] = temp1
        temp1 = temp2
        answer.append(temp1)
    }
    
    for i in (startPoint.y..<endPoint.y).reversed() {
        temp2 = matrix[endPoint.x][i]
        matrix[endPoint.x][i] = temp1
        temp1 = temp2
        answer.append(temp1)
    }

    for i in (startPoint.x..<endPoint.x).reversed() {
        temp2 = matrix[i][startPoint.y]
        matrix[i][startPoint.y] = temp1
        temp1 = temp2
        answer.append(temp1)
    }
    
    return (matrix, answer.min()!)
}
