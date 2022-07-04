//
//  Intro2OneVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit
import AVFoundation

class Intro2OneVC: UIViewController {
    
    // MARK: Music
    var soundURI: URL?
    var audioPlayer = AVAudioPlayer()
    
    // Multimedia
    var soundURIBackground: URL?
    var audioPlayerBackground = AVAudioPlayer()
    
    var viewBG: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 0, y: 0)
        img.frame.size = CGSize(width: 1366, height: 1043)
        img.image = UIImage(named: "bg_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewWall: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 0, y: 730)
        img.frame.size = CGSize(width: 1366, height: 313)
        img.image = UIImage(named: "walldown_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewWindow: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 683, y: -118)
        img.frame.size = CGSize(width: 470, height: 406)
        img.image = UIImage(named: "window_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewPaint: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 120, y: 22)
        img.frame.size = CGSize(width: 353, height: 240)
        img.image = UIImage(named: "paint_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewTable: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 683, y: 508)
        img.frame.size = CGSize(width: 505, height: 392)
        img.image = UIImage(named: "table_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewBook: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1059, y: 604)
        img.frame.size = CGSize(width: 80, height: 51)
        img.image = UIImage(named: "book_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewCat: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: -307, y: 376)
        img.frame.size = CGSize(width: 491, height: 547)
        img.image = UIImage(named: "cat1_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewThud: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 816, y: 203)
        img.frame.size = CGSize(width: 457, height: 400)
        img.image = UIImage(named: "thud_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(viewBG)
        view.addSubview(viewWall)
        view.addSubview(viewWindow)
        view.addSubview(viewPaint)
        view.addSubview(viewTable)
        view.addSubview(viewBook)
        view.addSubview(viewCat)
        view.addSubview(viewThud)
        
        viewThud.isHidden = true

        UIView.animate(withDuration: 3.0, delay: 0) {
            self.viewCat.frame.origin = CGPoint(x: 413, y: 366)
        } completion: { isComplete in
            if isComplete {
                self.viewTable.image = UIImage(named: "table2_intro2")
                self.viewBook.isHidden = true
                self.viewCat.image = UIImage(named: "cat2_intro2")
                self.playThud()
                self.viewThud.isHidden = false
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
            self.navigationController?.pushViewController(Intro2TwoVC(), animated: true)
        }
    }
    
    @objc func playSound(file: String, fileExtension: String, isLoop: Bool = false){
        soundURI = URL(fileURLWithPath: Bundle.main.path(forResource: file, ofType: fileExtension)!)
        do {
            guard let uri = soundURI else {return}
            audioPlayer = try AVAudioPlayer(contentsOf: uri)
            audioPlayer.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    @objc func playSoundLoop(file: String, fileExtension: String, isLoop: Bool = true){
        soundURIBackground = URL(fileURLWithPath: Bundle.main.path(forResource: file, ofType: fileExtension)!)
        do {
            guard let uri = soundURIBackground else {return}
            audioPlayerBackground = try AVAudioPlayer(contentsOf: uri)
            audioPlayerBackground.numberOfLoops =  -1
            audioPlayerBackground.play()
        } catch {
            // couldn't load file :(
        }
    }

    @objc func playThud(){
        self.playSound(file: "scene thud", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }

}
