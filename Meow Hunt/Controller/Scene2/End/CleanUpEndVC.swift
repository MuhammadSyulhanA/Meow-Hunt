//
//  CleanUpEndVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit

class CleanUpEndVC: UIViewController {

    var imageViewBackground: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 1050, height: 1050)
            imgView.image = UIImage(named: "s2_bgyey2")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()
        
        var imageViewYeay: UIImageView = {
            let imgView = UIImageView()
            imgView.frame.origin = CGPoint(x: 0, y: 0)
            imgView.frame.size = CGSize(width: 300, height: 300)
            imgView.image = UIImage(named: "yeay")
            imgView.contentMode = .scaleAspectFill
            return imgView
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            
            imageViewBackground.center = view.center
            view.addSubview(imageViewBackground)
            
            imageViewYeay.center = view.center
            view.addSubview(imageViewYeay)
            
            createLayer()
            
            UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse]) {
                self.imageViewYeay.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                } completion: { isComplete in
            
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                self.navigationController?.pushViewController(CleanTreasureVC(), animated: false)
            }

        }
        
        private func createLayer() {
            let layer = CAEmitterLayer()
            layer.emitterPosition = CGPoint (x: view.center.x, y: 1181)
            
            let colors: [UIColor] = [
                .systemRed,
                .systemBlue,
                .systemOrange,
                .systemGreen,
                .systemPink,
                .systemYellow,
                .systemPurple
            ]
            let cells: [CAEmitterCell] = colors.compactMap {
                let cell = CAEmitterCell()
                cell.scale = 0.3
                cell.emissionRange = .pi * 2
                cell.lifetime = 20
                cell.birthRate = 100
                cell.velocity = 250
                cell.color = $0.cgColor
                cell.contents = UIImage(named: "confetti")!.cgImage
                return cell
            }
            layer.emitterCells = cells
            
            view.layer.addSublayer(layer)
        }
    }
