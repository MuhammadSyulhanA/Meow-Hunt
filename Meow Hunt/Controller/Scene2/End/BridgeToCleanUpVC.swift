//
//  BridgeToCleanUpVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit
import AVFoundation

class BridgeToCleanUpVC: UIViewController {
    
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
        img.frame.origin = CGPoint(x: 241, y: 407)
        img.frame.size = CGSize(width: 491, height: 547)
        img.image = UIImage(named: "cat1_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewHover: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 0, y: 0)
        img.frame.size = CGSize(width: 1366, height: 1029)
        img.image = UIImage(named: "hover2_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewBGChat: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 620, y: 119)
        img.frame.size = CGSize(width: 638, height: 384)
        img.image = UIImage(named: "chat2_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var viewButton: UIImageView = {
        let img = UIImageView()
        img.frame.origin = CGPoint(x: 1198, y: 834)
        img.frame.size = CGSize(width: 126, height: 130)
        img.image = UIImage(named: "button_intro2")
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    var textIntroStorytelling: UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 683, y: 184)
        label.frame.size = CGSize(width: 492, height: 200)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        label.contentMode = .scaleAspectFill
        label.text = "Terima kasih sudah membantuku mengelap meja! Sekarang,ayo kita bereskan meja terlebih dahulu agar lebih mudah mencari harta karun!"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        
        return label
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(viewBG)
        view.addSubview(viewWall)
        view.addSubview(viewWindow)
        view.addSubview(viewPaint)
        view.addSubview(viewTable)
        view.addSubview(viewHover)
        view.addSubview(viewBGChat)
        view.addSubview(viewButton)
//        view.addSubview(viewBook)
        view.addSubview(viewCat)
        
//        10 sec
        playAir2()
        textIntroStorytelling.setTypingIntroduction(text: "Terima kasih sudah membantuku mengelap meja! Sekarang,ayo kita bereskan meja terlebih dahulu agar lebih mudah mencari harta karun!", characterDelay: 5)
        view.addSubview(textIntroStorytelling)
        
        let tapSkip = UITapGestureRecognizer(target: self, action: #selector(self.goToWipeTutorial(sender:)))
        viewButton.addGestureRecognizer(tapSkip)
        viewButton.isUserInteractionEnabled = true

    }
    
    @objc func goToWipeTutorial(sender: UITapGestureRecognizer){
        
        viewButton.frame.size = CGSize(width: 126, height: 130)
        UIView.animate(withDuration: 0.5){
            self.viewButton.frame.size = CGSize(width: 116, height: 120)
        }
        navigationController?.pushViewController(TutorCleanController(), animated: false)
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

    @objc func playAir2(){
        self.playSound(file: "scene air 2", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }
}
