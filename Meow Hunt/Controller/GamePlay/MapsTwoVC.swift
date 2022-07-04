//
//  MapsTwoVC.swift
//  Meow Hunt
//
//  Created by M. Syulhan Al Ghofany on 04/07/22.
//

import UIKit
import AVFoundation

class MapsTwoVC: UIViewController {
    
    // MARK: Music
    var soundURI: URL?
    var audioPlayer = AVAudioPlayer()
    
    // Multimedia
    var soundURIBackground: URL?
    var audioPlayerBackground = AVAudioPlayer()

    var imageViewBackground: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 1050, height: 1050)
        imgView.image = UIImage(named: "bg_gp2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewTable: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 446, y: 309)
        imgView.frame.size = CGSize(width: 181, height: 153)
        imgView.image = UIImage(named: "table_gp2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewFeet: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 838, y: 142)
        imgView.frame.size = CGSize(width: 204, height: 167)
        imgView.image = UIImage(named: "feet_gp2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
//    var imageViewBed: UIImageView = {
//        let imgView = UIImageView()
//        imgView.frame.origin = CGPoint(x: 0, y: 0)
//        imgView.frame.size = CGSize(width: 180, height: 180)
//        imgView.image = UIImage(named: "bed_gp2")
//        imgView.contentMode = .scaleAspectFill
//        return imgView
//    }()
    
    var imageViewMaps: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 82, y: 107)
        imgView.frame.size = CGSize(width: 1106, height: 805)
        imgView.image = UIImage(named: "maps_gp2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewChat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 417, height: 220)
        imgView.image = UIImage(named: "chat_gp2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewHover: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 39, y: 22)
        imgView.frame.size = CGSize(width: 1289, height: 938)
        imgView.image = UIImage(named: "bghover_gp2")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var imageViewCat: UIImageView = {
        let imgView = UIImageView()
        imgView.frame.origin = CGPoint(x: 0, y: 0)
        imgView.frame.size = CGSize(width: 250, height: 250)
        imgView.image = UIImage(named: "cat")
        imgView.contentMode = .scaleAspectFill
        return imgView
    }()
    
    var textIntroStorytelling: UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.frame.size = CGSize(width: 350, height: 370)
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 25)
        label.contentMode = .scaleAspectFill
        label.text = "Lokasi kedua, tempat kita mencari harta karun adalah meja belajar. Ayo kesana!"
        label.font = UIFont.boldSystemFont(ofSize: label.font.pointSize)
        return label
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageViewBackground.center = view.center
        view.addSubview(imageViewBackground)
        
        view.addSubview(imageViewHover)
//        imageViewMaps.center = CGPoint(x: view.center.x + 50 , y: view.center.y - 60)
        view.addSubview(imageViewMaps)
        
//        imageViewBed.center = CGPoint(x: view.center.x + 330 , y: view.center.y - 260)
        view.addSubview(imageViewFeet)
        view.addSubview(imageViewTable)
        
        imageViewChat.center = CGPoint(x: view.center.x + 170 , y: view.center.y + 340)
        view.addSubview(imageViewChat)
        
        imageViewCat.center = CGPoint(x: view.center.x + 490 , y: view.center.y + 460)
        view.addSubview(imageViewCat)
        
        textIntroStorytelling.center = view.center
        textIntroStorytelling.frame.origin.y = 640
        textIntroStorytelling.frame.origin.x = 685
        playPetaMeja()
        textIntroStorytelling.setTypingIntroduction(text: "Lokasi kedua, tempat kita mencari harta karun adalah meja belajar. Ayo kesana!")
        view.addSubview(textIntroStorytelling)
        
        //automatically move screen
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.navigationController?.pushViewController(Intro2OneVC(), animated: true)
        }

        
        //animation
        UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse]) {
        self.imageViewTable.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        } completion: { isComplete in

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

    @objc func playPetaMeja(){
        self.playSound(file: "peta ke meja belajar", fileExtension: "mp3")
    }
    
    @objc func playGame(){
        self.playSoundLoop(file: "backsound", fileExtension: "mp3", isLoop: true)
    }
}
