//
//  SushiPiece.swift
//  SushiNeko
//
//  Created by XIN on 2/2/20.
//  Copyright © 2020 XIN. All rights reserved.
//

import SpriteKit

class SushiPiece: SKSpriteNode {

    /* Chopsticks objects */
    var rightChopstick: SKSpriteNode!
    var leftChopstick: SKSpriteNode!

    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }

    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}

