//
//  ViewController.swift
//  SnapKitBootcamp
//
//  Created by Artem on 01.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    private lazy var backgroundImageView: UIImageView = {
        let element = UIImageView()
        element.image = UIImage(named: Constants.background)
        element.contentMode = .scaleAspectFill
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()

    private lazy var mainStackView: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.spacing = 10
        element.alignment = .trailing
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    private lazy var headerStackView: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.alignment = .trailing
        element.distribution = .fill
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    private lazy var geoButton: UIButton = {
        let element = UIButton(type: .system)
        element.setImage(UIImage(systemName: Constants.geoSF), for: .normal)
        element.tintColor = .label
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    private lazy var searchTextField: UITextField = {
        let element = UITextField()
        element.placeholder = Constants.search
        element.borderStyle = .roundedRect
        element.textAlignment = .right
        element.font = .systemFont(ofSize: 25)
        element.textColor = .label
        element.tintColor = .label
        element.backgroundColor = .systemFill
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    private lazy var searchButton: UIButton = {
        let element = UIButton()
        element.setImage(UIImage(systemName: Constants.searchSF), for: .normal)
        element.tintColor = .label
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    private lazy var conditionalImageView: UIImageView = {
        let element = UIImageView ()
        element.image = UIImage(systemName: Constants.conditionSF)
        element.tintColor = UIColor(named: Constants.weatherColor)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    private lazy var tempStackView: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    private lazy var tempLabel: UILabel = {
        let element = UILabel()
        element.tintColor = .label
        element.font = .systemFont(ofSize: 80, weight: .black)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    
    private lazy var typeLabel: UILabel = {
        let element = UILabel()
        element.font = .systemFont(ofSize: 100, weight: .light)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
 
    
    private lazy var cityLabel: UILabel = {
        let element = UILabel()
        element.tintColor = .label
        element.font = .systemFont(ofSize: 30)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    } ()
    
    
let emptyView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViews()
        setupConstraints()
    }
    private func setViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(headerStackView)
        
        headerStackView.addArrangedSubview(geoButton)
        headerStackView.addArrangedSubview(searchTextField)
        headerStackView.addArrangedSubview(searchButton)
        
        
        mainStackView.addArrangedSubview(conditionalImageView)
        mainStackView.addArrangedSubview(tempStackView)
        
        tempStackView.addArrangedSubview(tempLabel)
        tempStackView.addArrangedSubview(typeLabel)
        
        mainStackView.addArrangedSubview(cityLabel)
        mainStackView.addArrangedSubview(emptyView)
        
        
        
        tempLabel.text = "21"
        typeLabel.text = Constants.celsius
        cityLabel.text = "London"
    }
}

extension ViewController {
    
    private func setupConstraints() {
        
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        mainStackView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide).inset(24)
        }
        
        headerStackView.snp.makeConstraints { make in
            make.width.equalToSuperview()
        }
        
        geoButton.snp.makeConstraints { make in
            make.width.height.equalTo(40)
        }
        
        conditionalImageView.snp.makeConstraints { make in
            make.width.height.equalTo(120)
        }
        //
        //        NSLayoutConstraint.activate([
        //            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
        //            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        //            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        //            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        //
        //            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
        //            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24),
        //            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
        //            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
        //
        //            headerStackView.widthAnchor.constraint(equalTo: mainStackView.widthAnchor),
        //            geoButton.widthAnchor.constraint(equalToConstant: 40),
        //            geoButton.heightAnchor.constraint(equalToConstant: 40),
        //
        //            searchButton.widthAnchor.constraint(equalToConstant: 40),
        //            searchButton.heightAnchor.constraint(equalToConstant: 40),
        //
        //            conditionalImageView.widthAnchor.constraint(equalToConstant: 120),
        //            conditionalImageView.heightAnchor.constraint(equalToConstant: 120)
        //
        //        ])
        
    }
    
}

