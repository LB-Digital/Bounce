//
//  GameScene.swift
//  Bounce
//
//  Created by Lucas Bowers on 28/08/2016.
//  Copyright (c) 2016 Bowers Development. All rights reserved.
//


// Gray: #1f2027 -> rgba(31, 32, 39, 1)

import SpriteKit

let bGround = SKSpriteNode(imageNamed: "bGround")

//HEADER
let header = SKSpriteNode(imageNamed: "header")
let ballSyb = SKShapeNode(circleOfRadius: 7)
let ballsLbl = SKLabelNode()
let ballNumLbl = SKLabelNode()
//.H

//TITLES
let title = SKLabelNode()
let subtitle = SKLabelNode()
let titleDivider = SKShapeNode()
///T

//OTHER
let platformLeft = SKSpriteNode()
let platformRight = SKSpriteNode()
//.O


class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        for familyName in UIFont.familyNames(){
            print("Family Name :: \(familyName)")
            
            for fontName in UIFont.fontNamesForFamilyName(familyName) {
                print("Font ::: \(fontName)")
            }
        }
        
        self.backgroundColor = SKColor.init(red: 242/255, green: 243/255, blue: 245/255, alpha: 1)
        
        
        // SCENE ELEMENTS
        
        //Header
        header.position = CGPoint(x: CGRectGetMidX(self.frame), y: self.frame.height - (header.frame.height * 0.4))
        header.zPosition = 100
        header.size = CGSize(width: self.frame.width, height: (self.frame.width / header.frame.width) * header.frame.height)
        
        self.addChild(header)
        //.H
        
        
        //Ball Label
        ballsLbl.text = "Balls: "
        ballsLbl.fontSize = 20
        ballsLbl.fontColor = SKColor.init(red: 31/255, green: 32/255, blue: 39/255, alpha: 1)
        ballsLbl.position = CGPoint(x: header.frame.width * 0.1, y: header.position.y - (ballsLbl.frame.height / 2))
        ballsLbl.zPosition = 101
        ballsLbl.fontName = "Roboto-Regular"
        
        self.addChild(ballsLbl)
        //.BL
        
        
        //Ball Amount Label
        ballNumLbl.text = "6"
        ballNumLbl.fontSize = 20
        ballNumLbl.fontColor = SKColor.init(red: 31/255, green: 32/255, blue: 39/255, alpha: 1)
        ballNumLbl.position = CGPoint(x: header.frame.width * 0.22, y: header.position.y - (ballNumLbl.frame.height / 2))
        ballNumLbl.zPosition = 101
        ballNumLbl.fontName = "Roboto-Light"
        
        self.addChild(ballNumLbl)
        //.BAL
        
        //Main Title
        title.text = "Bounce!"
        title.fontColor = SKColor.init(red: 31/255, green: 32/255, blue: 39/255, alpha: 1)
        title.fontSize = 40
        title.fontName = "Roboto-Light"
        
        title.position = CGPoint(x: CGRectGetMidX(self.frame), y: self.frame.height * 0.75)
        
        self.addChild(title)
        //.MT
        
        //Title Divider
        let titleDivider = SKShapeNode(rect: CGRect(x: 0, y: 0, width: 100, height: 2))
        titleDivider.position = CGPoint(x: CGRectGetMidX(self.frame) - (titleDivider.frame.width / 2), y: self.frame.height * 0.73)
        titleDivider.fillColor = SKColor.init(red: 31/255, green: 32/255, blue: 39/255, alpha: 1)
        
        self.addChild(titleDivider)
        //.TD
        
        //SubTitle
        subtitle.text = "Tap anywhere to play"
        subtitle.fontColor = SKColor.init(red: 31/255, green: 32/255, blue: 39/255, alpha: 1)
        subtitle.fontSize = 25
        subtitle.fontName = "Roboto-Thin"
        
        subtitle.position = CGPoint(x: CGRectGetMidX(self.frame), y: self.frame.height * 0.68)
        
        self.addChild(subtitle)
        //.ST
        
        //Platform Left
        let platformLeft = SKSpriteNode(imageNamed: "platform_left")
        platformLeft.position = CGPoint(x: self.frame.width / 4, y: platformLeft.frame.height / 2)
        platformLeft.zPosition = 1
        
        self.addChild(platformLeft)
        //.PL
        
        //Platform Right
        let platformRight = SKSpriteNode(imageNamed: "platform_right")
        platformRight.position = CGPoint(x: (self.frame.width / 4) * 3, y: platformRight.frame.height / 2)
        platformRight.zPosition = 1
        
        self.addChild(platformRight)
        //.PR
        
        debugPrint("SCENE SIZE: \(scene?.size)")
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
            

        
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}






