//
//  SceneOneVC.swift
//  Meow Hunt
//
//  Created by Ferry Julian on 02/07/22.
//

import UIKit
import Foundation
import AVFoundation

class SceneOneVC: UIViewController {
    
    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1050, height: 1050)
        imgView.image = UIImage(named: "background")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBigCupboard: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 350, height: 450)
        imgView.image = UIImage(named: "bigCupboard")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewCupboard: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 250, height: 250)
        imgView.image = UIImage(named: "cupboard")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBox: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "box")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBed: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 300, height: 300)
        imgView.image = UIImage(named: "bed")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewPhoto: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 130, height: 130)
        imgView.image = UIImage(named: "photoFrame")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewLamp: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "lamp")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewWindows: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 400, height: 400)
        imgView.image = UIImage(named: "windows")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBooks1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "books1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBooks2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "books2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetBooks: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 155, height: 155)
        imgView.image = UIImage(named: "siluetBooks")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetGreenBooks: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 155, height: 155)
        imgView.image = UIImage(named: "siluetGreenBooks")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRedBooks: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 155, height: 155)
        imgView.image = UIImage(named: "siluetRedBooks")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewRobot: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 70, height: 70)
        imgView.image = UIImage(named: "robot")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRobot: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 170, height: 170)
        imgView.image = UIImage(named: "siluetRobot")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetGreenRobot: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 170, height: 170)
        imgView.image = UIImage(named: "siluetGreenRobot")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRedRobot: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 170, height: 170)
        imgView.image = UIImage(named: "siluetRedRobot")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewPlane: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "plane")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetPlane: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "siluetPlane")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetGreenPlane: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "siluetGreenPlane")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRedPlane: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "siluetRedPlane")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBall: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "ball")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetBall: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "siluetBall")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetGreenBall: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "siluetGreenBall")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRedBall: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 80, height: 80)
        imgView.image = UIImage(named: "siluetRedBall")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBag: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "bag")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetBag: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 160, height: 160)
        imgView.image = UIImage(named: "siluetBag")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetGreenBag: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 160, height: 160)
        imgView.image = UIImage(named: "siluetGreenBag")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRedBag: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 160, height: 160)
        imgView.image = UIImage(named: "siluetRedBag")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewDoll: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 100, height: 100)
        imgView.image = UIImage(named: "doll")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetDoll: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 170, height: 170)
        imgView.image = UIImage(named: "siluetDoll")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetGreenDoll: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "siluetGreenDoll")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRedDoll: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 180, height: 180)
        imgView.image = UIImage(named: "siluetRedDoll")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTowel1: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 40, height: 40)
        imgView.image = UIImage(named: "towel1")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTowel2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 43, height: 43)
        imgView.image = UIImage(named: "towel2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetTowel: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 140, height: 140)
        imgView.image = UIImage(named: "siluetTowel")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetGreenTowel: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 140, height: 140)
        imgView.image = UIImage(named: "siluetGreenTowel")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewSiluetRedTowel: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 140, height: 140)
        imgView.image = UIImage(named: "siluetRedTowel")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageViewBackground.center = view.center
        view.addSubview(imageViewBackground)
        
        imageViewBigCupboard.center = CGPoint(x: view.center.x - 510 , y: view.center.y + 70)
        view.addSubview(imageViewBigCupboard)
        
        imageViewBed.center = CGPoint(x: view.center.x + 528 , y: view.center.y + 245)
        view.addSubview(imageViewBed)
        
        imageViewCupboard.center = CGPoint(x: view.center.x + 250 , y: view.center.y + 235)
        view.addSubview(imageViewCupboard)
        
        imageViewPhoto.center = CGPoint(x: view.center.x + 530 , y: view.center.y - 215)
        view.addSubview(imageViewPhoto)
        
        imageViewLamp.center = CGPoint(x: view.center.x + 533 , y: view.center.y - 445)
        view.addSubview(imageViewLamp)
        
        imageViewWindows.center = CGPoint(x: view.center.x - 33 , y: view.center.y - 215)
        view.addSubview(imageViewWindows)
        
        imageViewSiluetDoll.center = CGPoint(x: view.center.x + 530 , y: view.center.y + 135)
        view.addSubview(imageViewSiluetDoll)
        
        imageViewSiluetBooks.center = CGPoint(x: view.center.x - 603 , y: view.center.y + 0)
        view.addSubview(imageViewSiluetBooks)
        
        imageViewSiluetTowel.center = CGPoint(x: view.center.x - 445 , y: view.center.y + 156)
        view.addSubview(imageViewSiluetTowel)
        
        imageViewSiluetBag.center = CGPoint(x: view.center.x - 600 , y: view.center.y + 315)
        view.addSubview(imageViewSiluetBag)
        
        imageViewSiluetRobot.center = CGPoint(x: view.center.x - 420 , y: view.center.y + 310)
        view.addSubview(imageViewSiluetRobot)
        
        imageViewSiluetBall.center = CGPoint(x: view.center.x - 100 , y: view.center.y + 355)
        view.addSubview(imageViewSiluetBall)
        
        imageViewSiluetPlane.center = CGPoint(x: view.center.x + 250 , y: view.center.y + 60)
        view.addSubview(imageViewSiluetPlane)
        
        imageViewBox.center = CGPoint(x: view.center.x - 528 , y: view.center.y - 297)
        view.addSubview(imageViewBox)
        
        imageViewDoll.center = CGPoint(x: view.center.x - 390 , y: view.center.y - 297)
        view.addSubview(imageViewDoll)
        
        imageViewBall.center = CGPoint(x: view.center.x - 520 , y: view.center.y - 165)
        view.addSubview(imageViewBall)
        
        imageViewBooks2.center = CGPoint(x: view.center.x - 437 , y: view.center.y - 0)
        view.addSubview(imageViewBooks2)
        
        imageViewTowel1.center = CGPoint(x: view.center.x - 575 , y: view.center.y + 156)
        view.addSubview(imageViewTowel1)
        
        imageViewPlane.center = CGPoint(x: view.center.x - 590 , y: view.center.y + 455)
        view.addSubview(imageViewPlane)
        
        imageViewBooks1.center = CGPoint(x: view.center.x - 250 , y: view.center.y + 405)
        view.addSubview(imageViewBooks1)
        
        imageViewTowel2.center = CGPoint(x: view.center.x + 250 , y: view.center.y + 455)
        view.addSubview(imageViewTowel2)
        
        imageViewRobot.center = CGPoint(x: view.center.x + 510 , y: view.center.y + 360)
        view.addSubview(imageViewRobot)
        
        imageViewBag.center = CGPoint(x: view.center.x + 630 , y: view.center.y + 190)
        view.addSubview(imageViewBag)

        // drag & drop handler
        imageViewBag.isUserInteractionEnabled = true
        imageViewBag.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerBag(gesture:))))
        
        imageViewBall.isUserInteractionEnabled = true
        imageViewBall.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerBall(gesture:))))
        
        imageViewBooks1.isUserInteractionEnabled = true
        imageViewBooks1.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerBooks(gesture:))))
        imageViewBooks1.transform = CGAffineTransform(rotationAngle: convertDegreesRadians (degrees: -31.39))
        
        imageViewDoll.isUserInteractionEnabled = true
        imageViewDoll.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerDoll(gesture:))))
        
        imageViewPlane.isUserInteractionEnabled = true
        imageViewPlane.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerPlane(gesture:))))
        imageViewPlane.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: -390.96))
        
        imageViewRobot.isUserInteractionEnabled = true
        imageViewRobot.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerRobot(gesture:))))
        imageViewRobot.transform = CGAffineTransform(rotationAngle:convertDegreesRadians(degrees: -270.00))
        
        imageViewTowel2.isUserInteractionEnabled = true
        imageViewTowel2.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerTowel(gesture:))))
        
    }
    
    func convertDegreesRadians(degrees:CGFloat)-> CGFloat {
        return degrees / 180.0 * CGFloat.pi
    }
    
    @objc func handlerBag(gesture: UIPanGestureRecognizer){
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location

        if ((draggedView!.frame.origin.x == imageViewBag.frame.origin.x) && (draggedView!.frame.origin.y == imageViewBag.frame.origin.y)){
            imageViewBag.image = UIImage(named: "bag")
        }
    }
    
    @objc func handlerBall(gesture: UIPanGestureRecognizer){
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location

        if ((draggedView!.frame.origin.x == imageViewBall.frame.origin.x) && (draggedView!.frame.origin.y == imageViewBall.frame.origin.y)){
            imageViewBall.image = UIImage(named: "ball")
        }
    }
    
    @objc func handlerBooks(gesture: UIPanGestureRecognizer){
        imageViewBooks1.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
    }
    
    @objc func handlerPlane(gesture: UIPanGestureRecognizer){
        imageViewPlane.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
    }
    
    @objc func handlerRobot(gesture: UIPanGestureRecognizer){
        imageViewRobot.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
    }
    
    @objc func handlerDoll(gesture: UIPanGestureRecognizer){
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location

        if ((draggedView!.frame.origin.x == imageViewDoll.frame.origin.x) && (draggedView!.frame.origin.y == imageViewDoll.frame.origin.y)){
            imageViewDoll.image = UIImage(named: "doll")
        }
    }
    
    @objc func handlerTowel(gesture: UIPanGestureRecognizer){
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location

        if ((draggedView!.frame.origin.x == imageViewTowel2.frame.origin.x) && (draggedView!.frame.origin.y == imageViewTowel2.frame.origin.y)){
            imageViewTowel2.image = UIImage(named: "towel2")
        }
    }
}
