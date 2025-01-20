//
//  ViewController.swift
//  Constraint5
//
//  Created by Faeze Memari on 20/01/25.
//

import UIKit

class ViewController: UIViewController {

    private let aView: UIView = {
        let aView = UIView()
        aView.translatesAutoresizingMaskIntoConstraints = false
        aView.backgroundColor = .purple
        aView.clipsToBounds = true
        return aView
        
    }()
    
    private let bView: UIView = {
        let bView = UIView()
        bView.translatesAutoresizingMaskIntoConstraints = false
        bView.backgroundColor = .blue
        return bView
        
    }()
    
    private let cView: UIView = {
        let cView = UIView()
        cView.translatesAutoresizingMaskIntoConstraints = false
        cView.backgroundColor = .cyan
        return cView
        
    }()
    
    private let dView: UIView = {
        let dView = UIView()
        dView.translatesAutoresizingMaskIntoConstraints = false
        dView.backgroundColor = .darkGray
        return dView
        
    }()
    
    private let eView: UIView = {
        let eView = UIView()
        eView.translatesAutoresizingMaskIntoConstraints = false
        eView.backgroundColor = .yellow
        return eView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(aView)
        aView.addSubview(bView)
        aView.addSubview(cView)
        aView.addSubview(dView)
        aView.addSubview(eView)
        addConstraints()
        addGestures()
        print("aView frame: \(aView.frame)")
    }

    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        // aView
        constraints.append(aView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(aView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(aView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(aView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        // bView - parent: aView
        // measures
        constraints.append(bView.widthAnchor.constraint(equalTo: aView.widthAnchor, multiplier: 0.5))
        constraints.append(bView.safeAreaLayoutGuide.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5))
        // places
        constraints.append(bView.centerYAnchor.constraint(equalTo: aView.centerYAnchor, constant: 200))
        constraints.append(bView.centerXAnchor.constraint(equalTo: aView.centerXAnchor, constant: -100))
        constraints.append(bView.topAnchor.constraint(equalToSystemSpacingBelow: dView.bottomAnchor, multiplier: 2))
        
        // cView - parent: aView
        // measures
        constraints.append(cView.widthAnchor.constraint(equalTo: aView.widthAnchor, multiplier: 0.5))
        constraints.append(cView.heightAnchor.constraint(equalTo: aView.heightAnchor, multiplier: 0.5))
        // places
        constraints.append(cView.leadingAnchor.constraint(equalToSystemSpacingAfter: bView.trailingAnchor, multiplier: 1))
        // constraints.append(cView.centerXAnchor.constraint(equalTo: ))
        constraints.append(cView.topAnchor.constraint(equalToSystemSpacingBelow: eView.bottomAnchor, multiplier: 1))
        constraints.append(cView.centerYAnchor.constraint(equalTo: aView.centerYAnchor))
        
        // dView - parent: aView
        // measures
        constraints.append(dView.widthAnchor.constraint(equalTo: aView.widthAnchor, multiplier: 0.2))
        constraints.append(dView.heightAnchor.constraint(equalTo: aView.heightAnchor, multiplier: 0.2))
        // places
        constraints.append(dView.centerXAnchor.constraint(equalTo: bView.centerXAnchor))
        
        // eView - parent: aView
        // measures
        constraints.append(eView.widthAnchor.constraint(equalTo: aView.widthAnchor, multiplier: 0.09))
        constraints.append(eView.heightAnchor.constraint(equalTo: aView.heightAnchor, multiplier: 0.09))
        // places
        
        constraints.append(eView.leadingAnchor.constraint(equalToSystemSpacingAfter: bView.trailingAnchor, multiplier: 1))
        
        
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func addGestures() {
        //gestures
        let bViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        bViewRecognizer.numberOfTapsRequired = 1
        bViewRecognizer.numberOfTouchesRequired = 1
        bView.addGestureRecognizer(bViewRecognizer)
        bView.isUserInteractionEnabled = true
        
        let cViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        cViewRecognizer.numberOfTapsRequired = 1
        cViewRecognizer.numberOfTouchesRequired = 1
        cView.addGestureRecognizer(cViewRecognizer)
        cView.isUserInteractionEnabled = true
        
        
        let dViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        dViewRecognizer.numberOfTapsRequired = 1
        dViewRecognizer.numberOfTouchesRequired = 1
        dView.addGestureRecognizer(dViewRecognizer)
        dView.isUserInteractionEnabled = true
        
        let eViewRecognizer = UITapGestureRecognizer(target: self, action: #selector(myGesture))
        eViewRecognizer.numberOfTapsRequired = 1
        eViewRecognizer.numberOfTouchesRequired = 1
        eView.addGestureRecognizer(eViewRecognizer)
        eView.isUserInteractionEnabled = true
        
    }
    
    @objc func myGesture(_ sender: UITapGestureRecognizer) {
        let tapped = sender.view
        if sender.state == .ended {
            tapped?.removeFromSuperview()
        }
        
    }

}

