//
//  character.swift
//  SushiNeko
//
//  Created by XIN on 2/2/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import SpriteKit

class Character: SKSpriteNode {
    
    let punch = SKAction(named: "Punch")!
    
    let sound = SKAction.playSoundFileNamed("sfx_swipe.caf", waitForCompletion: false)
    /* Character side */
    var side: Side = .left {
        didSet {
            if side == .left {
                xScale = 1
                position.x = 70
            } else {
                /* An easy way to flip an asset horizontally is to invert the X-axis scale */
                xScale = -1
                position.x = 252
            }
            run(sound)
            run(punch)
            
        }
    }

    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }

    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
