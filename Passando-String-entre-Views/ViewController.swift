//
//  ViewController.swift
//  Passando-String-entre-Views
//
//  Created by Luccas Santana Marinho on 31/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemCyan
        
        self.view.addSubview(tf)
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            tf.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 80),
            tf.heightAnchor.constraint(equalToConstant: 50),
            tf.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            tf.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.topAnchor.constraint(equalTo: self.tf.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
    }
    
    private lazy var tf: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite aqui"
        tf.backgroundColor = .white
        return tf
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Clique", for: .normal)
        button.addTarget(self, action: #selector(event), for: .touchUpInside)
        return button
    }()
    
    // MARK: Eventos do Botao
    
    @objc func event() {
        let vc = ViewControllerTwo(nome: tf.text!)
//        vc.nome = tf.text!
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
        print(tf.text!)
    }
}
