//
//  thirdScreen.swift
//  lecture15
//
//  Created by MacBook Pro on 11.04.24.
//

import UIKit

class thirdScreen: UIViewController {
    var signName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.clipsToBounds = true
        backgroundImageView.image = UIImage(named: "galaxy")
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        giveMePolarSignIcon()
        addTwoButtons()
    }
    
    func giveMePolarSignIcon() {
        guard let signName = signName else { return }
        var polarSign: String?
        switch signName {
        case "ვერძი":
            polarSign = "სასწორი"
        case "კურო":
            polarSign = "მორიელი"
        case "ტყუპები":
            polarSign = "მშვილდოსანი"
        case "კირჩხიბი":
            polarSign = "თხის რქა"
        case "ლომი":
            polarSign = "მერწყული"
        case "ქალწული":
            polarSign = "თევზები"
        case "სასწორი":
            polarSign = "ვერძი"
        case "მორიელი":
            polarSign = "კურო"
        case "მშვილდოსანი":
            polarSign = "ტყუპები"
        case "თხის რქა":
            polarSign = "კირჩხიბი"
        case "მერწყული":
            polarSign = "ლომი"
        case "თევზები":
            polarSign = "ქალწული"
        default:
            polarSign = nil
        }
        
        if let polarSign = polarSign, let image = UIImage(named: polarSign) {
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(imageView)
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
            imageView.widthAnchor.constraint(equalToConstant: 190).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 190).isActive = true
            
            let polarSignTitle = UILabel()
            polarSignTitle.text = polarSign
            polarSignTitle.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            polarSignTitle.textColor = .white
            polarSignTitle.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(polarSignTitle)
            polarSignTitle.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
            polarSignTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
    }
    
    func addTwoButtons() {
        let firstButton = UIButton()
        firstButton.configuration = .filled()
        firstButton.configuration?.title = "წითელი"
        firstButton.configuration?.baseBackgroundColor = .red
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstButton)
        firstButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        firstButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 500).isActive = true
        
        let secondButton = UIButton()
        secondButton.configuration = .filled()
        secondButton.configuration?.title = "ლურჯი"
        secondButton.configuration?.baseBackgroundColor = .blue
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondButton)
        secondButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        secondButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10).isActive = true
    }
}
