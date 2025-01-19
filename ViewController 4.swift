//
//  ViewController.swift
//  Constraint4
//
//  Created by Faeze Memari on 19/01/25.
//

import UIKit

class ViewController: UIViewController {

    private let aView: UIView = {
        let aView = UIView()
        aView.translatesAutoresizingMaskIntoConstraints = false
        aView.backgroundColor = .blue
        aView.clipsToBounds = true
        return aView
        
    }()
    
    private let bView: UIView = {
        let bView = UIView()
        bView.translatesAutoresizingMaskIntoConstraints = false
        bView.backgroundColor = .red
        return bView
        
    }()
    
    private let cView: UIView = {
        let bView = UIView()
        bView.translatesAutoresizingMaskIntoConstraints = false
        bView.backgroundColor = .purple
        return bView
        
    }()
    
    private let dView: UIView = {
        let bView = UIView()
        bView.translatesAutoresizingMaskIntoConstraints = false
        bView.backgroundColor = .green
        return bView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(aView)
        aView.addSubview(bView)
        aView.addSubview(cView)
        aView.addSubview(dView)
        addConstraints()
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
        constraints.append(cView.centerYAnchor.constraint(equalTo: aView.centerYAnchor))
        
        // dView - parent: aView
        // measures
        constraints.append(dView.widthAnchor.constraint(equalTo: aView.widthAnchor, multiplier: 0.2))
        constraints.append(dView.heightAnchor.constraint(equalTo: aView.heightAnchor, multiplier: 0.2))
        // places
        constraints.append(dView.centerXAnchor.constraint(equalTo: bView.centerXAnchor))
        
        
        
        NSLayoutConstraint.activate(constraints)
    }

}



