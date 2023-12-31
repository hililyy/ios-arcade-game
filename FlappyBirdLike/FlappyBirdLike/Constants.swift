//
//  Constants.swift
//  FlappyBirdLike
//
//  Created by 강조은 on 2023/07/11.
//

import Foundation

struct Layer {
    static let sky: CGFloat = 1
    static let pipe: CGFloat = 2
    static let land: CGFloat = 3
    static let ceiling: CGFloat = 4
    static let bird: CGFloat = 5
    static let hud: CGFloat = 10
}

struct PhysicsCategory {
    static let bird: UInt32 = 0x1 << 0 // 1
    static let land: UInt32 = 0x1 << 1 // 2
    static let ceiling: UInt32 = 0x1 << 2 // 4
    static let pipe: UInt32 = 0x1 << 3 // 8
    static let score: UInt32 = 0x1 << 4 // 16
}
