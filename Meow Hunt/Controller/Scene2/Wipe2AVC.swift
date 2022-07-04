//
//  Wipe2AVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 02/07/22.
//

import UIKit

class Wipe2AVC: UIViewController {
    
    var waterLeft: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 219, y: 566)
        img.frame.size = CGSize(width: 105, height: 35)
        img.image = UIImage(named: "s2_left")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var waterUp: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 576, y: 143)
        img.frame.size = CGSize(width: 137, height: 75)
        img.image = UIImage(named: "s2_top")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var waterRight: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1000, y: 461)
        img.frame.size = CGSize(width: 95, height: 138)
        img.image = UIImage(named: "s2_right")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var waterMiddle: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 541, y: 336)
        img.frame.size = CGSize(width: 258, height: 326)
        img.image = UIImage(named: "s2_bigMiddle")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var waterRightCornerTop: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 949, y: 120)
        img.frame.size = CGSize(width: 180, height: 311)
        img.image = UIImage(named: "s2_bigRightCornerTop")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var waterRightCornerBot: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 949, y: 717)
        img.frame.size = CGSize(width: 280, height: 177)
        img.image = UIImage(named: "s2_bigRightCornerBottom")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var waterLeftCornerBot: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 165, y: 766)
        img.frame.size = CGSize(width: 342, height: 122)
        img.image = UIImage(named: "s2_bigLeftCornerBottom")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var waterTowel: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 159, y: 153)
        img.frame.size = CGSize(width: 100, height: 200)
        img.image = UIImage(named: "s2_lap")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var stateUp = 0
    var stateLeft = 0
    var stateRight = 0
    var stateTopRight = 0
    var stateBotRight = 0
    var stateMid = 0
    var stateBotLeft = 0
    
    var cleanDone = 0
    var kiriCount = 0
    var kananCount = 0
    
    var transXTotalUp = 0
    var transYTotalUp = 0
    
    var transXTotalLeft = 0
    var transYTotalLeft = 0
    
    var transXTotalRight = 0
    var transYTotalRight = 0
    
    var transXTotalTopRight = 0
    var transYTotalTopRight = 0
    
    var transXTotalBotRight = 0
    var transYTotalBotRight = 0
    
    var transXTotalMid = 0
    var transYTotalMid = 0
    
    var transXTotalBotLeft = 0
    var transYTotalBotLeft = 0
    
    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "s2_table")
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 1366, height: 1024))
        imageView.isUserInteractionEnabled = true
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        

        
        view.addSubview(waterUp)
        view.addSubview(waterLeft)
        view.addSubview(waterRight)
        view.addSubview(waterMiddle)
        view.addSubview(waterLeftCornerBot)
        view.addSubview(waterRightCornerBot)
        view.addSubview(waterRightCornerTop)

        view.addSubview(waterTowel)

        waterTowel.isUserInteractionEnabled = true
        waterTowel.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerTowel(gesture:))))
        // Do any additional setup after loading the view.
    }
    
    func convertDegreesRadians(degrees: CGFloat) -> CGFloat {
        return degrees / 180.0 * CGFloat.pi
    }
    
    @objc func handlerTowel(gesture: UIPanGestureRecognizer){
        if gesture.state == .changed {
            var center = gesture.view!.center
            let translation = gesture.translation(in: gesture.view?.superview)
            center = CGPoint(x:center.x + translation.x, y:center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: gesture.view)
            
            let location = gesture.location(in: self.view)
            let draggedView = gesture.view
            draggedView?.center = location
            
            if(draggedView!.frame.intersects(waterMiddle.frame)){
                transXTotalMid += abs(Int(translation.x))
                transYTotalMid += abs(Int(translation.y))
                
                print("punya middle: ",transXTotalMid)
                print("punya middle: ",transYTotalMid)
                
                if (transXTotalMid > 1200 && transYTotalMid > 1000){
                    stateMid += 1
                    if stateMid == 1 {
                        waterMiddle.alpha = 0.5
                        transXTotalMid = 0
                        transYTotalMid = 0
                    } else if stateMid == 2 {
                        waterMiddle.alpha = 0.25
                        transXTotalMid = 0
                        transYTotalMid = 0
                    } else if stateMid == 3 {
                        waterMiddle.isHidden = true
                        transXTotalMid = 0
                        transYTotalMid = 0
                        stateMid = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(WipeEndVC(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterUp.frame)){
                transXTotalUp += abs(Int(translation.x))
                transYTotalUp += abs(Int(translation.y))
                
                print("punya up: ",transXTotalUp)
                print("punya up: ",transYTotalUp)
                
                if (transXTotalUp > 500 && transYTotalUp > 150){
                    stateUp += 1
                    if stateUp == 1 {
                        waterUp.alpha = 0.5
                        transXTotalUp = 0
                        transYTotalUp = 0
                    } else if stateUp == 2 {
                        waterUp.alpha = 0.25
                        transXTotalUp = 0
                        transYTotalUp = 0
                    } else if stateUp == 3 {
                        waterUp.isHidden = true
                        transXTotalUp = 0
                        transYTotalUp = 0
                        stateUp = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(WipeEndVC(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterRightCornerTop.frame)){
                transXTotalTopRight += abs(Int(translation.x))
                transYTotalTopRight += abs(Int(translation.y))
                
                print("punya right corner top: ",transXTotalTopRight)
                print("punya right corner top: ",transYTotalTopRight)
                
                if (transXTotalTopRight > 1400 && transYTotalTopRight > 400){
                    stateTopRight += 1
                    if stateTopRight == 1 {
                        waterRightCornerTop.alpha = 0.5
                        transXTotalTopRight = 0
                        transYTotalTopRight = 0
                    } else if stateTopRight == 2 {
                        waterRightCornerTop.alpha = 0.25
                        transXTotalTopRight = 0
                        transYTotalTopRight = 0
                    } else if stateTopRight == 3 {
                        waterRightCornerTop.isHidden = true
                        transXTotalTopRight = 0
                        transYTotalTopRight = 0
                        stateTopRight = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(WipeEndVC(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterRight.frame)){
                transXTotalRight += abs(Int(translation.x))
                transYTotalRight += abs(Int(translation.y))
                
                print("punya right: ",transXTotalRight)
                print("punya right: ",transYTotalRight)
                
                if (transXTotalRight > 1000 && transYTotalRight > 80){
                    stateRight += 1
                    if stateRight == 1 {
                        waterRight.alpha = 0.5
                        transXTotalRight = 0
                        transYTotalRight = 0
                    } else if stateRight == 2 {
                        waterRight.alpha = 0.25
                        transXTotalRight = 0
                        transYTotalRight = 0
                    } else if stateRight == 3 {
                        waterRight.isHidden = true
                        transXTotalRight = 0
                        transYTotalRight = 0
                        stateRight = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(WipeEndVC(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterRightCornerBot.frame)){
                transXTotalBotRight += abs(Int(translation.x))
                transYTotalBotRight += abs(Int(translation.y))
                
                print("punya right corner bot: ",transXTotalBotRight)
                print("punya right corner bot: ",transYTotalBotRight)
                
                if (transXTotalBotRight > 1100 && transYTotalBotRight > 400){
                    stateBotRight += 1
                    if stateBotRight == 1 {
                        waterRightCornerBot.alpha = 0.5
                        transXTotalBotRight = 0
                        transYTotalBotRight = 0
                    } else if stateBotRight == 2 {
                        waterRightCornerBot.alpha = 0.25
                        transXTotalBotRight = 0
                        transYTotalBotRight = 0
                    } else if stateBotRight == 3 {
                        waterRightCornerBot.isHidden = true
                        transXTotalBotRight = 0
                        transYTotalBotRight = 0
                        stateBotRight = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(WipeEndVC(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterLeft.frame)){
                transXTotalLeft += abs(Int(translation.x))
                transYTotalLeft += abs(Int(translation.y))
                
                print("punya left: ",transXTotalLeft)
                print("punya left: ",transYTotalLeft)
                
                if (transXTotalLeft > 600 && transYTotalLeft > 150){
                    stateLeft += 1
                    if stateLeft == 1 {
                        waterLeft.alpha = 0.5
                        transXTotalLeft = 0
                        transYTotalLeft = 0
                    } else if stateLeft == 2 {
                        waterLeft.alpha = 0.25
                        transXTotalLeft = 0
                        transYTotalLeft = 0
                    } else if stateLeft == 3 {
                        waterLeft.isHidden = true
                        transXTotalLeft = 0
                        transYTotalLeft = 0
                        stateLeft = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(WipeEndVC(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterLeftCornerBot.frame)){
                transXTotalBotLeft += abs(Int(translation.x))
                transYTotalBotLeft += abs(Int(translation.y))
                
                print("punya left corner bot: ",transXTotalBotLeft)
                print("punya left corner bot: ",transYTotalBotLeft)
                
                if (transXTotalBotLeft > 1000 && transYTotalBotLeft > 150){
                    stateBotLeft += 1
                    if stateBotLeft == 1 {
                        waterLeftCornerBot.alpha = 0.5
                        transXTotalBotLeft = 0
                        transYTotalBotLeft = 0
                    } else if stateBotLeft == 2 {
                        waterLeftCornerBot.alpha = 0.25
                        transXTotalBotLeft = 0
                        transYTotalBotLeft = 0
                    } else if stateBotLeft == 3 {
                        waterLeftCornerBot.isHidden = true
                        transXTotalBotLeft = 0
                        transYTotalBotLeft = 0
                        stateBotLeft = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(WipeEndVC(), animated: true)
                        }
                    }
                }
            }
            
        }
    }
}
