//
//  CleanTreasureVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit

class CleanTreasureVC: UIViewController {
    
    var imageViewTreasure: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 74, y: 87)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "coin_s2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTreasure2: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 74, y: 87)
        imgView.frame.size = CGSize(width: 150, height: 150)
        imgView.image = UIImage(named: "coin_s2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewBigTreasure: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 300, height: 300)
        imgView.image = UIImage(named: "coin_s2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()

    var penCase: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1089, y: 569)
            img.frame.size = CGSize(width: 150, height: 340)
            img.image = UIImage(named: "s2b_pencase")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var book: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 128, y: 123)
            img.frame.size = CGSize(width: 242, height: 284)
            img.image = UIImage(named: "s2_books")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var pen: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1075, y: 676)
            img.frame.size = CGSize(width: 18, height: 280)
            img.image = UIImage(named: "s2b_pen")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var pencil: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1136, y: 588)
            img.frame.size = CGSize(width: 17, height: 280)
            img.image = UIImage(named: "s2b_pencil")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var note: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 149, y: 579)
            img.frame.size = CGSize(width: 200, height: 291)
            img.image = UIImage(named: "s2_notes")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var paper: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 896, y: 94)
            img.frame.size = CGSize(width: 325, height: 360)
            img.image = UIImage(named: "s2b_paper")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var bookGreen: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 128, y: 123)
            img.frame.size = CGSize(width: 340, height: 340)
            img.image = UIImage(named: "s2b_book_green")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var penGreen: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1075, y: 676)
            img.frame.size = CGSize(width: 130, height: 130)
            img.image = UIImage(named: "s2b_pen_green")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var pencilGreen: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1136, y: 588)
            img.frame.size = CGSize(width: 112, height: 302)
            img.image = UIImage(named: "s2b_pencil_green")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var noteGreen: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 149, y: 579)
            img.frame.size = CGSize(width: 300, height: 300)
            img.image = UIImage(named: "s2b_note_green")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var paperGreen: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 896, y: 94)
            img.frame.size = CGSize(width: 415, height: 415)
            img.image = UIImage(named: "s2b_paper_green")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
    
    var imageViewBackgroundShadow: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1366, height: 1024)
        imgView.image = UIImage(named: "bgtreasure_s2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "s2b_table")
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 1366, height: 1024))
        imageView.isUserInteractionEnabled = true
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        
        view.addSubview(imageView)
        
        view.addSubview(penCase)
        view.addSubview(bookGreen)
        view.addSubview(penGreen)
        view.addSubview(pencilGreen)
        view.addSubview(noteGreen)
        view.addSubview(paperGreen)
        
        view.addSubview(imageViewTreasure)
        
        book.center = bookGreen.center
        pen.center = penGreen.center
        pencil.center = pencilGreen.center
        note.center = noteGreen.center
        paper.center = paperGreen.center
        
        view.addSubview(book)
        view.addSubview(pen)
        view.addSubview(pencil)
        view.addSubview(note)
        view.addSubview(paper)
        
        view.addSubview(imageViewBackgroundShadow)
        imageViewBackgroundShadow.isHidden = true
        
        view.addSubview(imageViewTreasure2)
        imageViewTreasure2.isHidden = true
        
        imageViewBigTreasure.center = view.center
        view.addSubview(imageViewBigTreasure)
        imageViewBigTreasure.isHidden = true
        
        
        
        UIView.animate(withDuration: 1.0, delay: 0, options: .autoreverse) {
            self.imageViewTreasure.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            } completion: { isComplete in
                if isComplete {
                    UIView.animate(withDuration: 2.0, delay: 0) {
                        self.imageViewTreasure2.frame.origin = CGPoint(x: 511, y: 345)
                        self.imageViewTreasure2.frame.size = CGSize(width: 400, height: 400)
                        self.imageViewBackgroundShadow.isHidden = false
                        self.imageViewTreasure.isHidden = true
                        self.imageViewTreasure2.isHidden = false
                    } completion: { isComplete in
                        if isComplete {
                            UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse]) {
                                self.imageViewTreasure2.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                                  self.navigationController?.pushViewController(Scene2DoneVC(), animated: true)
                                }
                        }
                    }
                }
            }
        }

    }
    
    func convertDegreesRadians(degrees: CGFloat) -> CGFloat {
        return degrees / 180.0 * CGFloat.pi
    }
    
}
