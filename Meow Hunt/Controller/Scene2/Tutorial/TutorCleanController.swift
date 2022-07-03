//
//  TutorCleanController.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 03/07/22.
//

import UIKit

class TutorCleanController: UIViewController {
    
    var mapTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 210, y: 119)
        img.frame.size = CGSize(width: 946, height: 786)
        img.image = UIImage(named: "s2_map")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var bookTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 357, y: 362)
        img.frame.size = CGSize(width: 200, height: 242)
        img.image = UIImage(named: "s2_books")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var arrowTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 590, y: 443)
        img.frame.size = CGSize(width: 204, height: 1)
        img.image = UIImage(named: "s2_arrow")
        img.contentMode = .scaleAspectFill
        
        return img
    }()

    var shadowBookTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 824, y: 322)
        img.frame.size = CGSize(width: 220, height: 322)
        img.image = UIImage(named: "s2b_book_shadow")
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
    
    var noTutor: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 604, y: 394)
        img.frame.size = CGSize(width: 158, height: 158)
        img.image = UIImage(named: "s2_no")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
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
        view.addSubview(arrowTutor)
        view.addSubview(shadowBookTutor)
        view.addSubview(bookTutor)
        view.addSubview(checkTutor)
        view.addSubview(noTutor)
        
//        bookTutor.center = shadowBookTutor.center
        
        checkTutor.isHidden = true
        noTutor.isHidden = true
        
        
        UIView.animate(withDuration: 2, animations: {
            self.bookTutor.frame.origin = CGPoint(x: 547, y: 362)
        }, completion: {_ in
            UIView.animate(withDuration: 2, animations: {
                self.arrowTutor.isHidden = true
                self.bookTutor.center = self.shadowBookTutor.center
            }, completion: {_ in
                self.shadowBookTutor.image = UIImage(named: "s2b_book_green")
                self.checkTutor.isHidden = false
                UIView.animate(withDuration: 2, animations: {
                    self.checkTutor.isHidden = true
                    self.bookTutor.frame.origin = CGPoint(x: 357, y: 362)
                    self.arrowTutor.isHidden = false
                    self.shadowBookTutor.image = UIImage(named: "s2b_paper_shadow")
                }, completion: {_ in
                    UIView.animate(withDuration: 2, animations: {
                        self.bookTutor.frame.origin = CGPoint(x: 547, y: 362)
                    }, completion: {_ in
                        UIView.animate(withDuration: 2, animations: {
                            self.arrowTutor.isHidden = true
                            self.bookTutor.center = self.shadowBookTutor.center
                        }, completion: {_ in
                            self.shadowBookTutor.image = UIImage(named: "s2b_paper_red")
                            self.noTutor.isHidden = false
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                                self.navigationController?.pushViewController(CleanUp2BVC(), animated: true)
                            }
                        })
                    })
                })
            })
        })
    }

}
