//
//  ViewController.swift
//  Constraint3
//
//  Created by Faeze Memari on 19/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "Hello This is a test to understand how constraints work "
        label.numberOfLines = 0 // without it would be like "Hello This is a tes..."
        label.font = .systemFont(ofSize: 50)
        label.backgroundColor = .systemRed
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let label2: UILabel = {
        let label = UILabel()
        label.text = "in swift "
        label.numberOfLines = 0 // this needs to be set so the hugging priorities would work
        label.font = .systemFont(ofSize: 50)
        label.backgroundColor = .systemGray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let label3: UILabel = {
        let label = UILabel()
        label.text = "and this is some "
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 50)
        label.backgroundColor = .systemCyan
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let label4: UILabel = {
        let label = UILabel()
        label.text = "extra views "
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 50)
        label.backgroundColor = .systemBrown
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        
        NSLayoutConstraint.activate([
            
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor),
            label2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
            label3.topAnchor.constraint(equalTo: label2.bottomAnchor),
            label3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
            label4.topAnchor.constraint(equalTo: label3.bottomAnchor),
            label4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            label4.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
        ])
        
        label1.setContentHuggingPriority(.defaultLow, for: .vertical) // hugs less:)))
        label2.setContentHuggingPriority(.defaultHigh, for: .vertical) // hugs more:)))
        label3.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label4.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }


}

