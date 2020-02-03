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
    
    var side: Side = .none {
        didSet {
            switch side {
            case .left:
                /* Show left chopstick */
                leftChopstick.isHidden = false
            case .right:
                /* Show right chopstick */
                rightChopstick.isHidden = false
            case .none:
                /* Hide all chopsticks */
                leftChopstick.isHidden = true
                rightChopstick.isHidden = true
            }
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
    /* Sushi type */

    func connectChopsticks() {
        /* Connect our child chopstick nodes */
        rightChopstick = (childNode(withName: "rightChopstick") as! SKSpriteNode)
        leftChopstick = (childNode(withName: "leftChopstick") as! SKSpriteNode)
        /* Set the default side */
        side = .none

    }
}

