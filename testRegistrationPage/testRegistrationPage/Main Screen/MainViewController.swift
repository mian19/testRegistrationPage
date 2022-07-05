//
//  ViewController.swift
//  testRegistrationPage
//
//  Created by Kyzu on 5.07.22.
//

import UIKit

class MainViewController: UIViewController {

    private var logoImageView: UIImageView!
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = UIColor.init(hex: "e2e2e2")
        view = customView
        setLogoView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setElements()
    }
    
    private func setLogoView() {
        logoImageView = UIImageView()
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "logo")
        view.addSubview(logoImageView)
    }
    
    private func setElements() {
        NSLayoutConstraint.activate([
        
            logoImageView.heightAnchor.constraint(equalToConstant: 25),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            view.trailingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 30),
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200)
            
        ])
        
    }


}

