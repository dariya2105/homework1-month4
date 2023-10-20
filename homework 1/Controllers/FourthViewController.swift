//
//  FourthViewController.swift
//  homework 1
//
//  Created by User on 22/10/23.
//

import UIKit

class FourthViewController: UIViewController {

    var vector2Img: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Vector")
        return view
    }()
    
    var receivedText: String?
    
    var smsTF2: UITextField = {
        let view = UITextField()
        view.layer.backgroundColor = CGColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
        view.textColor = .systemGray4
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.font = .systemFont(ofSize: 15, weight: .regular)
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: view.frame.size.height))
        view.leftView = paddingView
        view.leftViewMode = .always
        
        let paddingViewRight = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: view.frame.size.height))
        view.rightView = paddingViewRight
        view.rightViewMode = .always
        return view
    }()
    
    var codeCheckingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.clipsToBounds = true
        view.layer.cornerRadius = 35
        return view
    }()
    
    var newPasswordLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "New Password"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var newPasswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.isSecureTextEntry = true
        return view
    }()
    
    var newConfirmPasswordLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Confirm Password"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    private let dividerview = UIView()
    
    var grayEyeBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeimage = UIImage(systemName: "eye.fill")
        view.tintColor = .gray
        view.setImage(eyeimage, for: .normal)
        return view
    }()
    
    var isPasswordVisible2 = false
    
    var newConfirmPasswordTF2: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.isSecureTextEntry = true
        return view
    }()
    
    var grayEyeBtn2: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeimage = UIImage(systemName: "eye.fill")
        view.tintColor = .gray
        view.setImage(eyeimage, for: .normal)
        return view
    }()
    
    var isPasswordVisible1 = false
    
    private let dividerview2 = UIView()
    
    var submitButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Submit", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemGreen
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
        smsTF2.text = receivedText
        
        view.addSubview(vector2Img)
        setupConstraintsForVectorImg2()
        
        view.addSubview(smsTF2)
        setupConstraintsForSmsTF2()
        
        view.addSubview(codeCheckingView)
        setupConstraintsForCodeCheckingView()
        
        view.addSubview(newPasswordLbl)
        setupConstraintsForNewPasswordLbl()
        
        view.addSubview(newPasswordTF)
        setupConstraintsForNewPasswordTF()
        
        view.addSubview(dividerview)
        setupConstraintsForDividerView()
        
        view.addSubview(grayEyeBtn)
        setupConstraintsGrayEyeBtn()
        
        view.addSubview(newConfirmPasswordLbl)
        setupConstraintsForNewConfirmPasswordLbl()
        
        view.addSubview(newConfirmPasswordTF2)
        setupConstraintsForNewConfirmPasswordTF2()
        
        view.addSubview(grayEyeBtn2)
        setupConstraintsGrayEyeBtn2()
        
        view.addSubview(dividerview2)
        setupConstraintsForDividerView2()
        
        view.addSubview(submitButton)
        setupConstraintsForsubmitButton()
    }
    
    private func setupConstraintsForVectorImg2() {
        vector2Img.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        vector2Img.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vector2Img.heightAnchor.constraint(equalToConstant: 148).isActive = true
        vector2Img.widthAnchor.constraint(equalToConstant: 148).isActive = true
    }

    private func setupConstraintsForSmsTF2() {
        smsTF2.topAnchor.constraint(equalTo: vector2Img.bottomAnchor, constant: 34).isActive = true
        smsTF2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        smsTF2.widthAnchor.constraint(equalToConstant: 279).isActive = true
        smsTF2.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        smsTF2.isEnabled = false
    }
    
    private func setupConstraintsForCodeCheckingView() {
        codeCheckingView.topAnchor.constraint(equalTo: view.topAnchor, constant: 334).isActive = true
        codeCheckingView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        codeCheckingView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        codeCheckingView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsForNewPasswordLbl() {
        newPasswordLbl.topAnchor.constraint(equalTo: codeCheckingView.topAnchor, constant: 120).isActive = true
        newPasswordLbl.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setupConstraintsForNewPasswordTF() {
        newPasswordTF.topAnchor.constraint(equalTo: newPasswordLbl.bottomAnchor, constant: 13).isActive = true
        newPasswordTF.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        newPasswordTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDividerView() {
        dividerview.backgroundColor = .systemGray5
        dividerview.translatesAutoresizingMaskIntoConstraints = false
        dividerview.topAnchor.constraint(equalTo: newPasswordTF.bottomAnchor, constant: 13).isActive = true
        dividerview.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        dividerview.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -22).isActive = true
        dividerview.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsGrayEyeBtn() {
        grayEyeBtn.topAnchor.constraint(equalTo: newPasswordLbl.bottomAnchor, constant: 10).isActive = true
        grayEyeBtn.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -31).isActive = true
        grayEyeBtn.heightAnchor.constraint(equalToConstant: 13).isActive = true
        grayEyeBtn.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        grayEyeBtn.addTarget(self, action: #selector(grayEyeBtnTapped), for: .touchUpInside)
    }
    
    @objc func grayEyeBtnTapped(_ sender: UIButton) {
        isPasswordVisible1.toggle()
                newPasswordTF.isSecureTextEntry = !isPasswordVisible1
        
    }
    
    private func setupConstraintsForNewConfirmPasswordLbl() {
        newConfirmPasswordLbl.topAnchor.constraint(equalTo: dividerview.topAnchor, constant: 25).isActive = true
        newConfirmPasswordLbl.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setupConstraintsForNewConfirmPasswordTF2() {
        newConfirmPasswordTF2.topAnchor.constraint(equalTo: newConfirmPasswordLbl.bottomAnchor, constant: 13).isActive = true
        newConfirmPasswordTF2.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        newConfirmPasswordTF2.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsGrayEyeBtn2() {
        grayEyeBtn2.topAnchor.constraint(equalTo: newConfirmPasswordLbl.bottomAnchor, constant: 10).isActive = true
        grayEyeBtn2.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -31).isActive = true
        grayEyeBtn2.heightAnchor.constraint(equalToConstant: 13).isActive = true
        grayEyeBtn2.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        grayEyeBtn2.addTarget(self, action: #selector(grayEyeBtn2Tapped), for: .touchUpInside)
    }
    
    @objc func grayEyeBtn2Tapped(_ sender: UIButton) {
        isPasswordVisible1.toggle()
                newConfirmPasswordTF2.isSecureTextEntry = !isPasswordVisible1
        
    }
    
    private func setupConstraintsForDividerView2() {
        dividerview2.backgroundColor = .systemGray5
        dividerview2.translatesAutoresizingMaskIntoConstraints = false
        dividerview2.topAnchor.constraint(equalTo: newConfirmPasswordTF2.bottomAnchor, constant: 13).isActive = true
        dividerview2.leadingAnchor.constraint(equalTo: codeCheckingView.leadingAnchor, constant: 23).isActive = true
        dividerview2.trailingAnchor.constraint(equalTo: codeCheckingView.trailingAnchor, constant: -22).isActive = true
        dividerview2.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForsubmitButton() {
        submitButton.topAnchor.constraint(equalTo: dividerview2.bottomAnchor, constant: 67).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        submitButton.widthAnchor.constraint(equalToConstant: 95).isActive = true
        
        submitButton.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
    }
    @objc func submitButtonTapped(_ sender: UIButton) {
        var shouldNavigate = true
        if newPasswordTF.text?.isEmpty ?? true {
            newPasswordTF.layer.borderColor = UIColor.red.cgColor
            newPasswordTF.layer.borderWidth = 0.4
            newPasswordTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        } 
        
        if newConfirmPasswordTF2.text?.isEmpty ?? true {
            newConfirmPasswordTF2.layer.borderColor = UIColor.red.cgColor
            newConfirmPasswordTF2.layer.borderWidth = 0.4
            newConfirmPasswordTF2.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        if newPasswordTF.text != newConfirmPasswordTF2.text {
            newPasswordTF.layer.borderColor = UIColor.red.cgColor
            newPasswordTF.layer.borderWidth = 0.4
            newConfirmPasswordTF2.layer.borderColor = UIColor.red.cgColor
            newConfirmPasswordTF2.layer.borderWidth = 0.4
            shouldNavigate = false
        }
            if shouldNavigate {
                let vc = FifthViewController()
                navigationController?.pushViewController(vc, animated: true)
            }
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
