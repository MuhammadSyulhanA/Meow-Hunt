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
        img.frame.origin = CGPoint(x: 492, y: 325)
        img.frame.size = CGSize(width: 242, height: 284)
        img.image = UIImage(named: "s2b_book")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var pen: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 801, y: 791)
        img.frame.size = CGSize(width: 8, height: 218)
        img.image = UIImage(named: "s2b_pen")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var pencil: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 949, y: 529)
        img.frame.size = CGSize(width: 18, height: 302)
        img.image = UIImage(named: "s2b_pencil")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var note: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1143, y: 59)
        img.frame.size = CGSize(width: 200, height: 291)
        img.image = UIImage(named: "s2b_note")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var paper: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 877, y: 221)
        img.frame.size = CGSize(width: 325, height: 360)
        img.image = UIImage(named: "s2b_paper")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var bookShad: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 128, y: 123)
//        img.frame.size = CGSize(width: 250, height: 290)
        img.frame.size = CGSize(width: 250, height: 290)
        img.image = UIImage(named: "s2b_bookShad_new")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var penShad: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1115, y: 596)
        img.frame.size = CGSize(width: 36, height: 293)
//        img.frame.size = CGSize(width: 116, height: 373)
        img.image = UIImage(named: "s2_penShad_new")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var pencilShad: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1186, y: 588)
        img.frame.size = CGSize(width: 18, height: 302)
        img.image = UIImage(named: "s2b_pencil_shadow")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var noteShad: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 149, y: 579)
        img.frame.size = CGSize(width: 200, height: 291)
        img.image = UIImage(named: "s2b_note_shadow")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var paperShad: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 896, y: 94)
        img.frame.size = CGSize(width: 325, height: 360)
        img.image = UIImage(named: "s2b_paper_shadow")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var bookGreen: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 128, y: 123)
        img.frame.size = CGSize(width: 242, height: 284)
        img.image = UIImage(named: "s2b_book_green")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var penGreen: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1115, y: 596)
        img.frame.size = CGSize(width: 36, height: 293)
        img.image = UIImage(named: "s2b_pen_green")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var pencilGreen: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1186, y: 588)
        img.frame.size = CGSize(width: 18, height: 302)
        img.image = UIImage(named: "s2b_pencil_green")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var noteGreen: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 149, y: 579)
        img.frame.size = CGSize(width: 200, height: 291)
        img.image = UIImage(named: "s2b_note_green")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var paperGreen: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 896, y: 94)
        img.frame.size = CGSize(width: 325, height: 360)
        img.image = UIImage(named: "s2b_paper_green")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var bookRed: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 128, y: 123)
        img.frame.size = CGSize(width: 242, height: 284)
        img.image = UIImage(named: "s2b_book_red")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var penRed: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1115, y: 596)
        img.frame.size = CGSize(width: 36, height: 293)
        img.image = UIImage(named: "s2b_pen_red")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var pencilRed: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1186, y: 588)
        img.frame.size = CGSize(width: 18, height: 302)
        img.image = UIImage(named: "s2b_pencil_red")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var noteRed: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 149, y: 579)
        img.frame.size = CGSize(width: 200, height: 291)
        img.image = UIImage(named: "s2b_note_red")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var paperRed: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 896, y: 94)
        img.frame.size = CGSize(width: 325, height: 360)
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
    }
    
    @objc func handlerPen(gesture: UIPanGestureRecognizer){
        pen.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
    }
    
    @objc func handlerPencil(gesture: UIPanGestureRecognizer){
        pencil.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
    }
    
    @objc func handlerNote(gesture: UIPanGestureRecognizer){
        note.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
    }
    
    @objc func handlerPaper(gesture: UIPanGestureRecognizer){
        paper.transform = CGAffineTransform(rotationAngle: convertDegreesRadians(degrees: 0))
        let location = gesture.location(in: self.view)
        let draggedView = gesture.view
        draggedView?.center = location
    }
}
