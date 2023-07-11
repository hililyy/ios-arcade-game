//
//  GameScene.swift
//  FlappyBirdLike
//
//  Created by 강조은 on 2023/07/11.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        createBird()
        createEnvironment()
    }
    
    func createBird() {
        let birdTexture = SKTextureAtlas(named: "Bird")
        
        let bird = SKSpriteNode(imageNamed: "bird1")
        bird.position = CGPoint(x: size.width / 2, y: 350)
        bird.zPosition = 4
        addChild(bird)
        
//        var aniArray = [SKTexture]()
//        for i in 1...birdTexture.textureNames.count {
//            aniArray.append(SKTexture(imageNamed: "bird\(i)"))
//        }
//        let flyingAnimation = SKAction.animate(with: aniArray, timePerFrame: 0.1)
//        bird.run(SKAction.repeatForever(flyingAnimation))
        
        guard let flyingBySKS = SKAction(named: "flying") else { return }
        bird.run(flyingBySKS)
    }
    
    func createEnvironment() {
        let land = SKSpriteNode(imageNamed: "land")
        land.position = CGPoint(x: size.width / 2, y: 50)
        land.zPosition = 3
        addChild(land)
        
        let sky = SKSpriteNode(imageNamed: "sky")
        sky.position = CGPoint(x: size.width / 2, y: 100)
        sky.zPosition = 1
        addChild(sky)
        
        let ceiling = SKSpriteNode(imageNamed: "ceiling")
        ceiling.position = CGPoint(x: size.width / 2, y: 300)
        ceiling.zPosition = 3
        addChild(ceiling)
        
        let pipeDown = SKSpriteNode(imageNamed: "pipe")
        pipeDown.position = CGPoint(x: size.width / 2, y: 100)
        pipeDown.zPosition = 2
        addChild(pipeDown)
        
        let pipeUp = SKSpriteNode(imageNamed: "pipe")
        pipeUp.position = CGPoint(x: size.width / 2, y: size.height)
        pipeUp.zPosition = 2
        pipeUp.xScale = -1
        pipeUp.zRotation = .pi
        addChild(pipeUp)
    }
}
