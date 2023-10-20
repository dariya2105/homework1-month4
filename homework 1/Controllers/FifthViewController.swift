//
//  FifthViewController.swift
//  homework 1
//
//  Created by User on 21/10/23.
//

import UIKit

class FifthViewController: UIViewController {

    var imageSalut1: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "salut1")
        return view
    }()
    
    var imageSalut2: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "salut2")
        return view
    }()
    
    var imageCircle: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "circle")
        return view
    }()
    
    var imageCheckmark: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "checkmark")
        return view
    }()
    
    var successLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Success`"
        view.textColor = UIColor.white
        view.font = .systemFont(ofSize: 23, weight: .semibold)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
  
        view.addSubview(imageSalut1)
        setupConstraintsForImgSalut1()
        
        view.addSubview(imageSalut2)
        setupConstraintsForImgSalut2()
        
        view.addSubview(imageCircle)
        setupConstraintsForImgCircle()
        
        view.addSubview(imageCheckmark)
        setupConstraintsForImgCheckmark()
        
        view.addSubview(successLbl)
        setupConstraintsForSuccessLbl()
    }
    
    private func setupConstraintsForImgSalut1() {
        imageSalut1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 88).isActive = true
        imageSalut1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageSalut1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -88.5).isActive = true
    }

    private func setupConstraintsForImgSalut2() {
        imageSalut2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageSalut2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageSalut2.heightAnchor.constraint(equalToConstant: 183.5).isActive = true
        imageSalut2.widthAnchor.constraint(equalToConstant: 159.33).isActive = true
    }
    
    private func setupConstraintsForImgCircle() {
        imageCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageCircle.centerXAnchor.constraint(equalTo: imageSalut1.centerXAnchor).isActive = true
        imageCircle.heightAnchor.constraint(equalToConstant: 121).isActive = true
        imageCircle.widthAnchor.constraint(equalToConstant: 121).isActive = true
    }
    
    private func setupConstraintsForImgCheckmark() {
        imageCheckmark.topAnchor.constraint(equalTo: imageCircle.topAnchor, constant: 34).isActive = true
        imageCheckmark.leadingAnchor.constraint(equalTo: imageCircle.leadingAnchor, constant: 25).isActive = true
        imageCheckmark.trailingAnchor.constraint(equalTo: imageCircle.trailingAnchor, constant: -24).isActive = true
        imageCheckmark.bottomAnchor.constraint(equalTo: imageCircle.bottomAnchor, constant: -34).isActive = true
    }
    private func setupConstraintsForSuccessLbl() {
        successLbl.topAnchor.constraint(equalTo: imageSalut2.bottomAnchor, constant: 24.5).isActive = true
        successLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        successLbl.heightAnchor.constraint(equalToConstant: 27).isActive = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
