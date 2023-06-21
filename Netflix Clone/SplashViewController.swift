//
//  SplashViewController.swift
//  Netflix Clone
//
//  Created by Đinh Thái Sơn on 21/06/2023.
//

import UIKit

class SplashViewController: UIViewController {
    
    private let imageView: UIImageView = {
        var imageGif = UIImage()
        DispatchQueue.main.async {
            imageGif = UIImage.gifImageWithURL("http://www.gifbin.com/bin/4802swswsw04.gif") ?? UIImage(named: "applogo")!
        }
        let imageView = UIImageView(image: imageGif)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        //imageView.image = UIImage(named: "applogo")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        
        let imageViewConstrains = [
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(imageViewConstrains)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        imageView.frame = view.bounds
    }
}
