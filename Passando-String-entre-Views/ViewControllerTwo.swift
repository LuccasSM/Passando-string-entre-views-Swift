//
//  ViewControllerTwo.swift
//  Passando-String-entre-Views
//
//  Created by Luccas Santana Marinho on 31/05/22.
//

import UIKit

class ViewControllerTwo: UIViewController {
    var nome: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemOrange
        
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Olá, \(nome!)"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    // MARK: Eventos da Tela
    
    init(nome: String) {
        super.init(nibName: nil, bundle: nil)

        self.nome = nome
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) não foi implementado")
    }
}
