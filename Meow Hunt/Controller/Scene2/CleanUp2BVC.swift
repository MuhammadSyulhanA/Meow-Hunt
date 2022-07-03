//
//  CleanUp2BVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 02/07/22.
//

import UIKit

class CleanUp2BVC: UIViewController {
    
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
            img.frame.origin = CGPoint(x: 352, y: 345)
            img.frame.size = CGSize(width: 242, height: 284)
            img.image = UIImage(named: "s2b_book")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var pen: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 700, y: 571)
            img.frame.size = CGSize(width: 18, height: 280)
            img.image = UIImage(named: "s2b_pen")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var pencil: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1149, y: 349)
            img.frame.size = CGSize(width: 17, height: 280)
            img.image = UIImage(named: "s2b_pencil")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var note: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 983, y: 119)
            img.frame.size = CGSize(width: 200, height: 291)
            img.image = UIImage(named: "s2b_note")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var paper: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 520, y: 41)
            img.frame.size = CGSize(width: 325, height: 360)
            img.image = UIImage(named: "s2b_paper")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var bookShad: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 128, y: 123)
            img.frame.size = CGSize(width: 340, height: 340)
            img.image = UIImage(named: "s2b_bookShad_new")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var penShad: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1075, y: 676)
            img.frame.size = CGSize(width: 130, height: 130)
            img.image = UIImage(named: "s2_penShad_new")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var pencilShad: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1136, y: 588)
            img.frame.size = CGSize(width: 112, height: 305)
            img.image = UIImage(named: "s2b_pencil_shadow")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var noteShad: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 149, y: 579)
            img.frame.size = CGSize(width: 300, height: 300)
            img.image = UIImage(named: "s2b_note_shadow")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var paperShad: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 896, y: 94)
            img.frame.size = CGSize(width: 415, height: 415)
            img.image = UIImage(named: "s2b_paper_shadow")
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
        
        var bookRed: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 128, y: 123)
            img.frame.size = CGSize(width: 340, height: 340)
            img.image = UIImage(named: "s2b_book_red")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var penRed: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1075, y: 676)
            img.frame.size = CGSize(width: 130, height: 130)
            img.image = UIImage(named: "s2b_pen_red")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var pencilRed: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 1136, y: 588)
            img.frame.size = CGSize(width: 112, height: 302)
            img.image = UIImage(named: "s2b_pencil_red")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var noteRed: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 149, y: 579)
            img.frame.size = CGSize(width: 300, height: 300)
            img.image = UIImage(named: "s2b_note_red")
            img.contentMode = .scaleAspectFill
            
            return img
        }()
        
        var paperRed: UIImageView = {
            let img = UIImageView()
            img.frame.origin = CGPoint(x: 896, y: 94)
            img.frame.size = CGSize(width: 415, height: 415)
            img.image = UIImage(named: "s2b_paper_red")
            img.contentMode = .scaleAspectFill
            
            return img
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
        view.addSubview(bookShad)
        view.addSubview(penShad)
        view.addSubview(pencilShad)
        view.addSubview(noteShad)
        view.addSubview(paperShad)
        
        view.addSubview(book)
        view.addSubview(pen)
        view.addSubview(pencil)
        view.addSubview(note)
        view.addSubview(paper)
        
        book.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: -71.39))
        pen.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: -119.37))
        pencil.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: -99.96))
        note.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: -68.51))
        paper.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: -122.92))
        
        book.isUserInteractionEnabled = true
        book.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerBook(gesture:))))
        
        pen.isUserInteractionEnabled = true
        pen.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerPen(gesture:))))
        
        pencil.isUserInteractionEnabled = true
        pencil.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerPencil(gesture:))))
        
        note.isUserInteractionEnabled = true
        note.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerNote(gesture:))))
        
        paper.isUserInteractionEnabled = true
        paper.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlerPaper(gesture:))))
        
    }
    
    func convertDegreesRadians(degrees: CGFloat) -> CGFloat {
        return degrees / 180.0 * CGFloat.pi
    }
    
    @objc func handlerBook(gesture: UIPanGestureRecognizer){
        book.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
        
        if gesture.state == .ended {
            if(draggedView!.frame.intersects(bookShad.frame)){
                book.center = bookShad.center
                bookShad.image = UIImage(named: "s2b_book_green")
            } else {
                bookShad.image = UIImage(named: "s2b_book_red")
            }
        }
    }
    
    @objc func handlerPen(gesture: UIPanGestureRecognizer){
        pen.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
        
        if gesture.state == .ended {
            if(draggedView!.frame.intersects(penShad.frame)){
                pen.center = penShad.center
                penShad.image = UIImage(named: "s2b_pen_green")
            } else {
                penShad.image = UIImage(named: "s2b_pen_red")
            }
        }
    }
    
    @objc func handlerPencil(gesture: UIPanGestureRecognizer){
        pencil.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
        
        if gesture.state == .ended {
            if(draggedView!.frame.intersects(pencilShad.frame)){
                pencil.center = pencilShad.center
                pencilShad.image = UIImage(named: "s2b_pencil_green")
            } else {
                pencilShad.image = UIImage(named: "s2b_pencil_red")
            }
        }
    }
    
    @objc func handlerNote(gesture: UIPanGestureRecognizer){
        note.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
        
        if gesture.state == .ended {
            if(draggedView!.frame.intersects(noteShad.frame)){
                note.center = noteShad.center
                noteShad.image = UIImage(named: "s2b_note_green")
            } else {
                noteShad.image = UIImage(named: "s2b_note_red")
            }
        }
    }
    
    @objc func handlerPaper(gesture: UIPanGestureRecognizer){
        paper.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
        
        if gesture.state == .ended {
            if(draggedView!.frame.intersects(paperShad.frame)){
                paper.center = paperShad.center
                paperShad.image = UIImage(named: "s2b_paper_green")
            } else {
                paperShad.image = UIImage(named: "s2b_paper_red")
            }
        }
    }
}
