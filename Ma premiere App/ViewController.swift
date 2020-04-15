//
//  ViewController.swift
//  Ma premiere App
//
//  Created by Ken Gassy on 08/04/2020.
//  Copyright © 2020 Ken Gassy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet var littleButton: [UIButton]!
    @IBOutlet weak var ButtonA: UIButton!
    @IBOutlet weak var ButtonB: UIButton!
    @IBOutlet weak var holderView: UIView!
    @IBOutlet weak var textLabel: UILabel!
    
    
    var couleur: [UIColor] = [.white, .systemTeal, .systemGray]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Ajouter des interactions (gestures)
        let tap = UITapGestureRecognizer(target: self, action: #selector(holderViewTapped))
        tap.numberOfTapsRequired = 2
//        let long = UILongPressGestureRecognizer(target: self, action: #selector(holderViewTapped))
        holderView.addGestureRecognizer(tap)
        
        
        holderView.backgroundColor = UIColor.white
        ButtonA.setTitle("Texte en vert", for: .normal)
        ButtonA.backgroundColor = .green
        ButtonA.setImage(UIImage(systemName: "pencil"), for: .normal)
        ButtonA.layer.cornerRadius = 20
        
        ButtonB.backgroundColor = .red
        ButtonB.setTitle("Texte en rouge", for: .normal)
        ButtonB.setImage(UIImage(systemName: "pencil"), for: .normal)
        ButtonB.layer.cornerRadius = 20
        
        for index in 0..<littleButton.count {
            littleButton[index].setTitle("", for: .normal)
            littleButton[index].backgroundColor = couleur[index]
            littleButton[index].layer.cornerRadius = littleButton[index].frame.width / 2
            littleButton[index].layer.borderWidth = 2
        }
        
        textLabel.text = "J'ai changé de texte"
        //textLabel.textColor = .red
        //textLabel.font = UIFont(name: "Chalkduster", size: 30)
        holderView.layer.cornerRadius = 20
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.layer.borderWidth = 2
        profileImageView.layer.borderColor = UIColor.white.cgColor
    }
    
    @objc func holderViewTapped() {
        textLabel.isHidden = !textLabel.isHidden
    }
    
    @IBAction func buttonAPressed(_ sender: UIButton) {
        textLabel.textColor = .green
    }
    @IBAction func buttonBPressed(_ sender: Any) {
        textLabel.textColor = .red
    }
    @IBAction func littleButtonPressed(_ sender: UIButton) {
        print(sender.tag)
        holderView.backgroundColor = couleur[sender.tag]
    }
    
    
    
}

