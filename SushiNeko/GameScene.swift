import SpriteKit

enum Side {
    case left, right, none
}
class GameScene: SKScene{
    /* Game objects */
    var sushiBasePiece: SushiPiece!

    override func didMove(to view: SKView) {
        super.didMove(to: view)
        /* Connect game objects */
        sushiBasePiece = (childNode(withName: "sushiBasePiece") as! SushiPiece)
        /* Setup chopstick connections */
        
        sushiBasePiece.connectChopsticks()
    }
    

}
