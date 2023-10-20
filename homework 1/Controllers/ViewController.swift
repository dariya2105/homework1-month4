//
//  ViewController.swift
//  homework 1
//
//  Created by User on 20/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var image: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "child")
        return view
    }()
    
    var textLbl1: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Welcome Back"
        view.font = .systemFont(ofSize: 34, weight: .bold)
        view.textColor = .white
        return view
    }()
    
    var textLbl2: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Sign in to continue"
        view.textColor = UIColor(red: 178/255, green: 215/255, blue: 225/255, alpha: 1)
        view.font = .systemFont(ofSize: 20, weight: .regular)
        return view
    }()
    
    var registrationView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.clipsToBounds = true
        view.layer.cornerRadius = 35
        return view
    }()
    
    var idemailLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Employee id / Email"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var emailTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let divider = UIView()
    
    var passwordLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Password"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var passwordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        view.isSecureTextEntry = true
        return view
    }()
    
    private let divider2 = UIView()
    
    var eyeButton: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeimage = UIImage(systemName: "eye.fill")
        view.tintColor = .gray
        view.setImage(eyeimage, for: .normal)
        return view
    }()
    
    var isPasswordVisible = false
    
    var forgotPasswordBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Forgot Password?", for: .normal)
        view.setTitleColor(UIColor.tintColor, for: .normal)
        view.backgroundColor = .clear
        return view
    }()
    
    var checkBoxBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        let checkmarkImage = UIImage(systemName: "checkmark.square.fill")
        view.tintColor = .black
        view.setImage(checkmarkImage, for: .selected)
        return view
    }()
    
    var rememberLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Remember Me"
        view.font = .systemFont(ofSize: 18, weight: .medium)
        view.textColor = .black
        return view
    }()
    
    var signInBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitleColor(UIColor.white, for: .normal)
        view.setTitle("Sign In", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.layer.backgroundColor = UIColor(red: 0.157, green: 0.333, blue: 0.682, alpha: 1).cgColor
        view.layer.cornerRadius = 15
        return view
    }()
    
    var groupOfImages: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Mask group")
        return view
    }()
    
    var donthHaveAccountLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Don't have an Account?"
        view.font = .systemFont(ofSize: 13, weight: .medium)
        view.textColor = .black
        return view
    }()
    
    var signUpBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        view.setTitleColor(UIColor.tintColor, for: .normal)
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
        
        view.addSubview(image)
        setupConstraintsForImage()
        
        view.addSubview(textLbl1)
        setupConstraintsForText1()
        
        view.addSubview(textLbl2)
        setupConstraintsForText2()
        
        view.addSubview(registrationView)
        setupConstraintsForRegistartionView()
        
        view.addSubview(idemailLbl)
        setupConstraintsForEmailLbl()
        
        view.addSubview(emailTF)
        setupConstraintsForEmailTF()
        view.addSubview(divider)
        setupConstraintsForDivider()
        
        view.addSubview(passwordLbl)
        setupConstraintsForPasswordLbl()
        
        view.addSubview(passwordTF)
        setupConstraintsForPasswordTF()
        view.addSubview(divider2)
        setupConstraintsForDivider2()
        
        view.addSubview(forgotPasswordBtn)
        setupConstraintsForForgotPasswordBtn()
        
        
        view.addSubview(eyeButton)
        setupConstraintsForEyeBtn()
        
        view.addSubview(checkBoxBtn)
        setupConstraintsForCheckBoxBtn()
        
        view.addSubview(rememberLbl)
        setupConstraintsForRememberLbl()
        
        view.addSubview(signInBtn)
        setupConstraintsSignInBtn()
        
        view.addSubview(groupOfImages)
        setupConstraintsForGroupOfImages()
        
        view.addSubview(donthHaveAccountLbl)
        setupConstraintsFordonthHaveAccountLbl()
        
        view.addSubview(signUpBtn)
        setupConstraintsSignUpBtn()
    }
    
    private func setupConstraintsForImage() {
        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 49).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForText1() {
        textLbl1.topAnchor.constraint(equalTo: image.topAnchor, constant: 244).isActive = true //273
        textLbl1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        textLbl1.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
    private func setupConstraintsForText2() {
        textLbl2.topAnchor.constraint(equalTo: textLbl1.bottomAnchor, constant: 4).isActive = true
        textLbl2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
    }
    
    private func setupConstraintsForRegistartionView() {
        registrationView.topAnchor.constraint(equalTo: textLbl2.bottomAnchor, constant: 8).isActive = true
        registrationView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0).isActive = true
        registrationView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        registrationView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsForEmailLbl() {
        idemailLbl.topAnchor.constraint(equalTo: registrationView.topAnchor, constant: 43).isActive = true
        idemailLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setupConstraintsForEmailTF() {
        emailTF.topAnchor.constraint(equalTo: idemailLbl.bottomAnchor, constant: 13).isActive = true
        emailTF.leadingAnchor.constraint(equalTo: registrationView.leadingAnchor, constant: 23).isActive = true
        emailTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider() {
        divider.backgroundColor = .systemGray5
        divider.translatesAutoresizingMaskIntoConstraints = false
        divider.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 13).isActive = true
        divider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        divider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        divider.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForPasswordLbl() {
        passwordLbl.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 13).isActive = true
        passwordLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
    }
    
    private func setupConstraintsForPasswordTF() {
        passwordTF.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 13).isActive = true
        passwordTF.leadingAnchor.constraint(equalTo: registrationView.leadingAnchor, constant: 23).isActive = true
        passwordTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider2() {
        divider2.backgroundColor = .systemGray5
        divider2.translatesAutoresizingMaskIntoConstraints = false
        divider2.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 13).isActive = true
        divider2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        divider2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        divider2.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForEyeBtn() {
        eyeButton.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 50).isActive = true
        eyeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        eyeButton.heightAnchor.constraint(equalToConstant: 13).isActive = true
        eyeButton.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        eyeButton.addTarget(self, action: #selector(eyeBtnTapped), for: .touchUpInside)
    }
    
    @objc func eyeBtnTapped(_ sender: UIButton) {
        isPasswordVisible.toggle()
                passwordTF.isSecureTextEntry = !isPasswordVisible
        
    }
    
    private func setupConstraintsForForgotPasswordBtn() {
        forgotPasswordBtn.topAnchor.constraint(equalTo: divider2.bottomAnchor, constant: 3).isActive = true
        forgotPasswordBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        forgotPasswordBtn.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        forgotPasswordBtn.addTarget(self, action: #selector(forgotPasswordTapped), for: .touchUpInside)
    }
    
    @objc func forgotPasswordTapped(_ sender: UIButton) {
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setupConstraintsForCheckBoxBtn() {
        checkBoxBtn.topAnchor.constraint(equalTo: forgotPasswordBtn.bottomAnchor, constant: 18).isActive = true
        checkBoxBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        checkBoxBtn.heightAnchor.constraint(equalToConstant: 24).isActive = true
        checkBoxBtn.widthAnchor.constraint(equalToConstant: 19).isActive = true
        
        checkBoxBtn.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
    }
    @objc func checkboxTapped() {
        checkBoxBtn.isSelected.toggle()
    }
    
    private func setupConstraintsForRememberLbl() {
        rememberLbl.topAnchor.constraint(equalTo: forgotPasswordBtn.bottomAnchor, constant: 18).isActive = true
        rememberLbl.leadingAnchor.constraint(equalTo: checkBoxBtn.trailingAnchor, constant: 13.11).isActive = true
    }
    
    private func setupConstraintsSignInBtn() {
        signInBtn.topAnchor.constraint(equalTo: rememberLbl.bottomAnchor, constant: 35).isActive = true
        signInBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        signInBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        signInBtn.widthAnchor.constraint(equalToConstant: 168).isActive = true
        
        signInBtn.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }
    
    @objc func signInTapped(_ sender: UIButton) {
        var shouldNavigate = true
        
        if emailTF.text?.isEmpty ?? true {
            emailTF.layer.borderColor = UIColor.red.cgColor
            emailTF.layer.borderWidth = 0.4
            emailTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if passwordTF.text?.isEmpty ?? true {
            passwordTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderWidth = 0.4
            passwordTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if shouldNavigate {
            let vc = FifthViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private func setupConstraintsForGroupOfImages() {
        groupOfImages.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        groupOfImages.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        groupOfImages.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsFordonthHaveAccountLbl() {
        donthHaveAccountLbl.topAnchor.constraint(equalTo: groupOfImages.topAnchor, constant: 13.54).isActive = true
        donthHaveAccountLbl.leadingAnchor.constraint(equalTo: groupOfImages.leadingAnchor, constant: 10.22).isActive = true
        donthHaveAccountLbl.heightAnchor.constraint(equalToConstant: 16).isActive = true
    }
    
    private func setupConstraintsSignUpBtn() {
        signUpBtn.topAnchor.constraint(equalTo: groupOfImages.topAnchor, constant: 13.54).isActive = true
        signUpBtn.leadingAnchor.constraint(equalTo: donthHaveAccountLbl.trailingAnchor, constant: 5).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        signUpBtn.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    }
    
    @objc func signUpTapped(_ sender: UIButton) {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension UIView {
        
        var safeTopAnchor: NSLayoutYAxisAnchor {
            if #available(iOS 11.0, *) {
                return safeAreaLayoutGuide.topAnchor
            }
            return topAnchor
        }
        
        var safeLeftAnchor: NSLayoutXAxisAnchor {
            if #available(iOS 11.0, *){
                return safeAreaLayoutGuide.leftAnchor
            }
            return leftAnchor
        }
        
        var safeRightAnchor: NSLayoutXAxisAnchor {
            if #available(iOS 11.0, *){
                return safeAreaLayoutGuide.rightAnchor
            }
            return rightAnchor
        }
        
        var safeBottomAnchor: NSLayoutYAxisAnchor {
            if #available(iOS 11.0, *) {
                return safeAreaLayoutGuide.bottomAnchor
            }
            return bottomAnchor
        }
    }


