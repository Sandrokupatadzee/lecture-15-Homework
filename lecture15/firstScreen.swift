//
//  firstScreen.swift
//  lecture15
//
//  Created by MacBook Pro on 10.04.24.
//

import UIKit

class firstScreen: UIViewController {
    
    var addSignName: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.clipsToBounds = true
        backgroundImageView.image = UIImage(named: "galaxy")
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        firstScreenStackView ()
    }
    
    func firstScreenStackView () {
        
        let titleLabel = UILabel()
        titleLabel.text = "მიშა ცაგარელის ჰაბი"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        let justSpace = UIView()
        justSpace.translatesAutoresizingMaskIntoConstraints = false
        justSpace.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        let descriptionText = UILabel()
        descriptionText.text = "მოცემულ აპლიკაციაში შეგიძლიათ გაიგოთ თქვენი ზოდიაქოს ყველაზე გამოკვეთილი უნარები და თვისებები."
        descriptionText.textColor = .lightGray
        descriptionText.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        descriptionText.numberOfLines = 5
        
        let titleStackView = UIStackView(arrangedSubviews: [titleLabel,justSpace,descriptionText])
        titleStackView.axis = .vertical
        titleStackView.spacing = 8
        titleStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let justSpace1 = UIView()
        justSpace1.translatesAutoresizingMaskIntoConstraints = false
        justSpace1.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        let signTitle = UILabel()
        signTitle.text = "ზოდიაქოს სახელი"
        signTitle.textColor = .white
        signTitle.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        
        addSignName = UITextField()
        addSignName?.backgroundColor = .clear
        addSignName?.layer.cornerRadius = 5
        addSignName?.layer.borderWidth = 1
        addSignName?.layer.borderColor = UIColor.gray.cgColor
        addSignName?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        addSignName?.textColor = .lightGray
        addSignName?.attributedPlaceholder = NSAttributedString(
            string: "მაგ: ქალწული",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        addSignName?.translatesAutoresizingMaskIntoConstraints = false
        addSignName?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let justSpace2 = UIView()
        justSpace2.translatesAutoresizingMaskIntoConstraints = false
        justSpace2.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        let nextButton = UIButton()
        nextButton.configuration = .filled()
        nextButton.configuration?.title = "შემდეგ"
        nextButton.configuration?.baseBackgroundColor = .purple
        
        nextButton.addTarget(self, action: #selector(goTosecondScreen), for: .touchUpInside)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let firstScreenStackView = UIStackView(arrangedSubviews: [titleStackView,justSpace1,signTitle,addSignName!,justSpace2,nextButton])
        firstScreenStackView.axis = .vertical
        firstScreenStackView.spacing = 8
        view.addSubview(firstScreenStackView)
        firstScreenStackView.translatesAutoresizingMaskIntoConstraints = false
        firstScreenStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        firstScreenStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        firstScreenStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
    }
    
    @objc func goTosecondScreen() {
        let nextScreen = secondScreen()
        if let signName = addSignName?.text {
            nextScreen.signName = signName
        }
        navigationController?.pushViewController(nextScreen, animated: false)
    }
}

