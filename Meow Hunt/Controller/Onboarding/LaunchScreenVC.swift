//
//  LaunchScreenVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 05/07/22.
//

import UIKit

class LaunchScreenVC: UIViewController {

    var imageViewBackground: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 700, height: 1400)
            imgView.image = UIImage(named: "backgroundOnboarding")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()

        var imageViewCloud1: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 180, height: 180)
            imgView.image = UIImage(named: "awan2")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()

        var imageViewCloud2: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 180, height: 180)
            imgView.image = UIImage(named: "awan1")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()

        var imageViewCloud3: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 180, height: 180)
            imgView.image = UIImage(named: "awan1")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()

        var imageViewCloud4: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 150, height: 150)
            imgView.image = UIImage(named: "awan2")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()
        
        var imageViewBanner: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 350, height: 350)
            imgView.image = UIImage(named: "launch")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()
        
        var imageViewLogo: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 35, height: 35)
            imgView.image = UIImage(named: "logoMeowHunt")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()
        
        var textCreate: UILabel = {
            let label = UILabel()
            label.frame.origin = CGPoint(x: 0, y: 0)
            label.frame.size = CGSize(width: 550, height: 370)
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 30)
            label.contentMode = .scaleAspectFill
            label.text = "Created by:"
            label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
            return label
        }()
        
        var textLembut: UILabel = {
            let label = UILabel()
            label.frame.origin = CGPoint(x: 0, y: 0)
            label.frame.size = CGSize(width: 550, height: 370)
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 27)
            label.contentMode = .scaleAspectFill
            label.text = "Lembur United"
            label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
            return label
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            
            imageViewBackground.center = view.center
            view.addSubview(imageViewBackground)

            imageViewCloud1.center = CGPoint(x: view.center.x - 400 , y: view.center.y - 230)
            view.addSubview(imageViewCloud1)

            imageViewCloud2.center = CGPoint(x: view.center.x - 10 , y: view.center.y + 250)
            view.addSubview(imageViewCloud2)

            imageViewCloud4.center = CGPoint(x: view.center.x + 350 , y: view.center.y - 280)
            view.addSubview(imageViewCloud4)
            
            imageViewBanner.center = view.center
            view.addSubview(imageViewBanner)
            
            imageViewLogo.center = CGPoint(x: view.center.x - 110 , y: view.center.y + 430)
            view.addSubview(imageViewLogo)
            
            textCreate.center = view.center
            textCreate.frame.origin.y = 710
            textCreate.frame.origin.x = 600
            view.addSubview(textCreate)
            
            textLembut.center = view.center
            textLembut.frame.origin.y = 755
            textLembut.frame.origin.x = 600
            view.addSubview(textLembut)
            
    //      animation
            UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
                self.imageViewCloud1.center.y -= 80
            } completion: { isComplete in

            }

            UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
                self.imageViewCloud2.center.y -= 70
            } completion: { isComplete in

            }

            UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
                self.imageViewCloud4.center.y -= 50
            } completion: { isComplete in

            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                self.navigationController?.pushViewController(OnboardingOneVC(), animated: false)
            }

        }
    }

