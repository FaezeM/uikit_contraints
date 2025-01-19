//
//  ViewController.swift
//  Constraint2
//
//  Created by Faeze Memari on 17/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView = UIImageView()
    let label = UILabel()
    let label2 = UILabel()
    let imageView2 = UIImageView()

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        addStackView()

        
        // Do any additional setup after loading the view.
        
//
//        

    }
    

    
    
    func addStackView() {

        //gestures
        let labelRecognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        labelRecognizer.numberOfTapsRequired = 1
        labelRecognizer.numberOfTouchesRequired = 1
        
        let label2Recognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        label2Recognizer.numberOfTapsRequired = 1
        label2Recognizer.numberOfTouchesRequired = 1
        
        
        let imageRecognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        imageRecognizer.numberOfTapsRequired = 1
        imageRecognizer.numberOfTouchesRequired = 1
        
        let image2Recognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        imageRecognizer.numberOfTapsRequired = 1
        imageRecognizer.numberOfTouchesRequired = 1
        
        //image
        imageView.backgroundColor = .green
        imageView.image = UIImage(systemName: "bell")
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/4).isActive = true
        //imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        
        imageView.addGestureRecognizer(imageRecognizer)
        imageView.isUserInteractionEnabled = true
        
        //label
        label.backgroundColor = .tintColor
        label.text = "Ayo"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 21, weight: .bold)
        //label.widthAnchor.constraint(equalToConstant: view.frame.size.width/4).isActive = true
        //label.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        
        label.addGestureRecognizer(labelRecognizer)
        label.isUserInteractionEnabled = true
        
        //label2
        label2.backgroundColor = .tintColor
        label2.text = "Hey"
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize: 21, weight: .bold)
        //label2.widthAnchor.constraint(equalToConstant: view.frame.size.width/4).isActive = true
        //label2.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        
        label2.addGestureRecognizer(label2Recognizer)
        label2.isUserInteractionEnabled = true
        
        //image
        imageView2.backgroundColor = .green
        imageView2.image = UIImage(systemName: "bell")
        imageView2.contentMode = .scaleAspectFit
        imageView2.widthAnchor.constraint(equalToConstant: view.frame.size.width/4).isActive = true
        //imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        
        imageView2.addGestureRecognizer(image2Recognizer)
        imageView2.isUserInteractionEnabled = true

        
        //stackview
        let stackView = UIStackView(arrangedSubviews: [imageView, label, label2, imageView2]) // Can pass in an ordered array
        stackView.frame = view.bounds
        stackView.backgroundColor = .systemMint
        
        //config
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        print(imageView.frame.size.height)
        view.addSubview(stackView)


        

        
        
        
    }
    
    @objc func myGesture(_ sender: UITapGestureRecognizer) {
        let tapped = sender.view
        if sender.state == .ended {
            tapped?.removeFromSuperview()
        }
        
    }


}

