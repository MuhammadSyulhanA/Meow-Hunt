//
//  TutorController.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 03/07/22.
//

import UIKit

class TutorController: UIViewController {
    
    var lapTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 354, y: 271)
        img.frame.size = CGSize(width: 178, height: 406)
        img.image = UIImage(named: "s2_towel")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var mapTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 208, y: 165)
        img.frame.size = CGSize(width: 951, height: 786)
        img.image = UIImage(named: "s2_map")
        img.contentMode = .scaleAspectFill
        
        return img
    }()

    var waterTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 532, y: 311)
        img.frame.size = CGSize(width: 258, height: 326)
        img.image = UIImage(named: "s2_water")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var checkTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 604, y: 394)
        img.frame.size = CGSize(width: 158, height: 158)
        img.image = UIImage(named: "s2_check")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
//    840 268
    
    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "s2_table")
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 1366, height: 1024))
        imageView.isUserInteractionEnabled = true
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        
        view.addSubview(imageView)
        
        view.addSubview(mapTutor)
        view.addSubview(waterTutor)
        view.addSubview(checkTutor)
        view.addSubview(lapTutor)
        
        checkTutor.isHidden = true
        
        
        UIView.animate(withDuration: 2, animations: {
            self.lapTutor.frame.origin = CGPoint(x: 840, y: 268)
        }, completion: {_ in
            self.waterTutor.alpha = 0.5
            UIView.animate(withDuration: 2, animations: {
                self.lapTutor.frame.origin = CGPoint(x: 208, y: 165)
            }, completion: {_ in
                self.waterTutor.alpha = 0.25
                UIView.animate(withDuration: 2, animations: {
                    self.lapTutor.frame.origin = CGPoint(x: 840, y: 268)
                }, completion: {_ in
                    self.waterTutor.alpha = 0
                    UIView.animate(withDuration: 2, animations: {
                        self.lapTutor.frame.origin = CGPoint(x: 208, y: 165)
                    }, completion: { isComplete in
                        self.checkTutor.isHidden = false
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                            self.navigationController?.pushViewController(Wipe2AVC(), animated: true)
                        } 
                    })
                })
            })
        })

    }
    


}
