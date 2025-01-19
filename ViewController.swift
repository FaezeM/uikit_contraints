//
//  ViewController.swift
//  Constraint
//
//  Created by Faeze Memari on 16/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let aView: UIView = {
        let aView = UIView()
        aView.translatesAutoresizingMaskIntoConstraints = false
        aView.backgroundColor = .blue
        return aView
        
    }()
    
    private let bView: UIView = {
        let bView = UIView()
        bView.translatesAutoresizingMaskIntoConstraints = false
        bView.backgroundColor = .red
        return bView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(aView)
        aView.addSubview(bView)
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
        constraints.append(bView.heightAnchor.constraint(equalTo: aView.heightAnchor, multiplier: 0.5))
        // places
        constraints.append(bView.centerYAnchor.constraint(equalTo: aView.centerYAnchor))
        constraints.append(bView.centerXAnchor.constraint(equalTo: aView.centerXAnchor))
        
        
        
        NSLayoutConstraint.activate(constraints)
    }

}

