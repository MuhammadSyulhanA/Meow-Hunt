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
    
    var state = 0
    var cleanDone = 0
    var kiriCount = 0
    var kananCount = 0
    
    var transXTotal = 0
    var transYTotal = 0
    
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
                transXTotal += abs(Int(translation.x))
                transYTotal += abs(Int(translation.y))
                
                print("punya middle: ",transXTotal)
                print("punya middle: ",transYTotal)
                
                if (transXTotal > 1200 && transYTotal > 1000){
                    state += 1
                    if state == 1 {
                        waterMiddle.alpha = 0.5
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 2 {
                        waterMiddle.alpha = 0.25
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 3 {
                        waterMiddle.isHidden = true
                        transXTotal = 0
                        transYTotal = 0
                        state = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(TutorCleanController(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterUp.frame)){
                transXTotal += abs(Int(translation.x))
                transYTotal += abs(Int(translation.y))
                
                print("punya up: ",transXTotal)
                print("punya up: ",transYTotal)
                
                if (transXTotal > 700 && transYTotal > 150){
                    state += 1
                    if state == 1 {
                        waterUp.alpha = 0.5
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 2 {
                        waterUp.alpha = 0.25
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 3 {
                        waterUp.isHidden = true
                        transXTotal = 0
                        transYTotal = 0
                        state = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(TutorCleanController(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterRightCornerTop.frame)){
                transXTotal += abs(Int(translation.x))
                transYTotal += abs(Int(translation.y))
                
                print("punya right corner top: ",transXTotal)
                print("punya right corner top: ",transYTotal)
                
                if (transXTotal > 1400 && transYTotal > 400){
                    state += 1
                    if state == 1 {
                        waterRightCornerTop.alpha = 0.5
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 2 {
                        waterRightCornerTop.alpha = 0.25
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 3 {
                        waterRightCornerTop.isHidden = true
                        transXTotal = 0
                        transYTotal = 0
                        state = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(TutorCleanController(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterRight.frame)){
                transXTotal += abs(Int(translation.x))
                transYTotal += abs(Int(translation.y))
                
                print("punya right: ",transXTotal)
                print("punya right: ",transYTotal)
                
                if (transXTotal > 1200 && transYTotal > 700){
                    state += 1
                    if state == 1 {
                        waterRight.alpha = 0.5
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 2 {
                        waterRight.alpha = 0.25
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 3 {
                        waterRight.isHidden = true
                        transXTotal = 0
                        transYTotal = 0
                        state = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(TutorCleanController(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterRightCornerBot.frame)){
                transXTotal += abs(Int(translation.x))
                transYTotal += abs(Int(translation.y))
                
                print("punya right corner bot: ",transXTotal)
                print("punya right corner bot: ",transYTotal)
                
                if (transXTotal > 1100 && transYTotal > 900){
                    state += 1
                    if state == 1 {
                        waterRightCornerBot.alpha = 0.5
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 2 {
                        waterRightCornerBot.alpha = 0.25
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 3 {
                        waterRightCornerBot.isHidden = true
                        transXTotal = 0
                        transYTotal = 0
                        state = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(TutorCleanController(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterLeft.frame)){
                transXTotal += abs(Int(translation.x))
                transYTotal += abs(Int(translation.y))
                
                print("punya left: ",transXTotal)
                print("punya left: ",transYTotal)
                
                if (transXTotal > 600 && transYTotal > 150){
                    state += 1
                    if state == 1 {
                        waterLeft.alpha = 0.5
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 2 {
                        waterLeft.alpha = 0.25
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 3 {
                        waterLeft.isHidden = true
                        transXTotal = 0
                        transYTotal = 0
                        state = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(TutorCleanController(), animated: true)
                        }
                    }
                }
            }
            
            if(draggedView!.frame.intersects(waterLeftCornerBot.frame)){
                transXTotal += abs(Int(translation.x))
                transYTotal += abs(Int(translation.y))
                
                print("punya left corner bot: ",transXTotal)
                print("punya left corner bot: ",transYTotal)
                
                if (transXTotal > 1000 && transYTotal > 150){
                    state += 1
                    if state == 1 {
                        waterLeftCornerBot.alpha = 0.5
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 2 {
                        waterLeftCornerBot.alpha = 0.25
                        transXTotal = 0
                        transYTotal = 0
                    } else if state == 3 {
                        waterLeftCornerBot.isHidden = true
                        transXTotal = 0
                        transYTotal = 0
                        state = 0
                        cleanDone += 1
                        if cleanDone == 7 {
                            navigationController?.pushViewController(TutorCleanController(), animated: true)
                        }
                    }
                }
            }
            
        }
    }
}
