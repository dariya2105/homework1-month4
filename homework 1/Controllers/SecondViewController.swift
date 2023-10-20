//
//  SecondViewController.swift
//  homework 1
//
//  Created by User on 21/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var imageChild: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "child")
        return view
    }()
    
    var contentScrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 40
        return view
    }()
    
    var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.clipsToBounds = true
        view.layer.cornerRadius = 40
        return view
    }()
    
    var fullnameLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Full Name"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var fullnameTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let dividerone = UIView()
    
    var mobilenumberLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Mobile Number"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var mobilenumberTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let dividertwo = UIView()
    
    var emailLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Email"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var emailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let divider3 = UIView()
    
    var usernameLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "User Name"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var usernameTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let divider4 = UIView()
    
    var passwordLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Password"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var eyeBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeimage = UIImage(systemName: "eye.fill")
        view.tintColor = .gray
        view.setImage(eyeimage, for: .normal)
        
        return view
    }()
    
    var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let divider5 = UIView()
    
    var confirmPasswordLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Confirm Password"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var eyeBtn2: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        let eyeimage = UIImage(systemName: "eye.fill")
        view.tintColor = .gray
        view.setImage(eyeimage, for: .normal)
        
        return view
    }()

    
    var confirmPasswordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let divider6 = UIView()
    
    var signUpBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitleColor(UIColor.white, for: .normal)
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.layer.backgroundColor = UIColor(red: 0.157, green: 0.333, blue: 0.682, alpha: 1).cgColor
        view.layer.cornerRadius = 15
        return view
    }()
    
    var groupOfImages2: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Mask group")
        return view
    }()
    
    var alreadyHaveAnAccountLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Already have an Account? "
        view.font = .systemFont(ofSize: 13, weight: .medium)
        view.textColor = .black
        return view
    }()
    
    var signInBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Sign In", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        view.setTitleColor(UIColor.tintColor, for: .normal)
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 78/255, green: 156/255, blue: 177/255, alpha: 1)
        
        view.addSubview(imageChild)
        setupConstraintsForImagechild()
        
        view.addSubview(contentScrollView)
        setupConstraintsForScrollView()
        
        contentScrollView.addSubview(containerView)
        setupConstraintsForContainerView()
        
        view.addSubview(fullnameLbl)
        setupConstraintsForFullnameLbl()
        
        view.addSubview(fullnameTF)
        setupConstraintsForFullnameTF()
        
        view.addSubview(dividerone)
        setupConstraintsForDivider()
        
        view.addSubview(mobilenumberLbl)
        setupConstraintsForMobileNumberLbl()
        
        view.addSubview(mobilenumberTF)
        setupConstraintsForMobileNumberTF()
        
        view.addSubview(dividertwo)
        setupConstraintsForDividerTwo()
        
        view.addSubview(emailLabel)
        setupConstraintsForEmailLabel()
        
        view.addSubview(emailTextField)
        setupConstraintsForEmailTextField()
        
        view.addSubview(divider3)
        setupConstraintsForDivider3()
        
        view.addSubview(usernameLbl)
        setupConstraintsForUsernameLbl()
        
        view.addSubview(usernameTF)
        setupConstraintsForUsernameTF()
        
        view.addSubview(divider4)
        setupConstraintsForDivider4()
        
        view.addSubview(passwordLabel)
        setupConstraintsForPasswordLabel()
        
        view.addSubview(eyeBtn)
        setupConstraintsForEyeButton()
        
        view.addSubview(passwordTextField)
        setupConstraintsForPasswordTextField()
        
        view.addSubview(divider5)
        setupConstraintsForDivider5()
        
        view.addSubview(confirmPasswordLbl)
        setupConstraintsForConfirmPswrdLbl()
        
        view.addSubview(eyeBtn2)
        setupConstraintsForEyeButton2()
        
        view.addSubview(confirmPasswordTF)
        setupConstraintsForConfirmPasswordTF()
        
        view.addSubview(divider6)
        setupConstraintsForDivider6()
        
        view.addSubview(signUpBtn)
        setupConstraintsForSignUpBtn()
        
        view.addSubview(groupOfImages2)
        setupConstraintsForgroupOfImages2()
        
        view.addSubview(alreadyHaveAnAccountLbl)
        setupConstraintsForgalreadyHaveAnAccountLbl()
        
        view.addSubview(signInBtn)
        setupConstraintsForSignInBtn()
    }
    
    private func setupConstraintsForImagechild() {
        imageChild.topAnchor.constraint(equalTo: view.topAnchor, constant: 49).isActive = true
        imageChild.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    private func setupConstraintsForScrollView() {
        contentScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 192).isActive = true
        contentScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        contentScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsForContainerView() {
        containerView.topAnchor.constraint(equalTo: contentScrollView.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: contentScrollView.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: contentScrollView.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: contentScrollView.bottomAnchor, constant: 0).isActive = true
        
        containerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        containerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    private func setupConstraintsForFullnameLbl() {
        fullnameLbl.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 55).isActive = true
        fullnameLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForFullnameTF() {
        fullnameTF.topAnchor.constraint(equalTo: fullnameLbl.bottomAnchor, constant: 13).isActive = true
        fullnameTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        fullnameTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider() {
        dividerone.backgroundColor = .systemGray5
        dividerone.translatesAutoresizingMaskIntoConstraints = false
        dividerone.topAnchor.constraint(equalTo: fullnameTF.bottomAnchor, constant: 13).isActive = true
        dividerone.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        dividerone.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        dividerone.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForMobileNumberLbl() {
        mobilenumberLbl.topAnchor.constraint(equalTo: dividerone.bottomAnchor, constant: 13).isActive = true
        mobilenumberLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForMobileNumberTF() {
        mobilenumberTF.topAnchor.constraint(equalTo: mobilenumberLbl.bottomAnchor, constant: 13).isActive = true
        mobilenumberTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        mobilenumberTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDividerTwo() {
        dividertwo.backgroundColor = .systemGray5
        dividertwo.translatesAutoresizingMaskIntoConstraints = false
        dividertwo.topAnchor.constraint(equalTo: mobilenumberTF.bottomAnchor, constant: 13).isActive = true
        dividertwo.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        dividertwo.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        dividertwo.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForEmailLabel() {
        emailLabel.topAnchor.constraint(equalTo: dividertwo.bottomAnchor, constant: 13).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForEmailTextField() {
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 13).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider3() {
        divider3.backgroundColor = .systemGray5
        divider3.translatesAutoresizingMaskIntoConstraints = false
        divider3.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 13).isActive = true
        divider3.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        divider3.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        divider3.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForUsernameLbl() {
        usernameLbl.topAnchor.constraint(equalTo: divider3.bottomAnchor, constant: 13).isActive = true
        usernameLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForUsernameTF() {
        usernameTF.topAnchor.constraint(equalTo: usernameLbl.bottomAnchor, constant: 13).isActive = true
        usernameTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        usernameTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider4() {
        divider4.backgroundColor = .systemGray5
        divider4.translatesAutoresizingMaskIntoConstraints = false
        divider4.topAnchor.constraint(equalTo: usernameTF.bottomAnchor, constant: 13).isActive = true
        divider4.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        divider4.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        divider4.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForPasswordLabel() {
        passwordLabel.topAnchor.constraint(equalTo: divider4.bottomAnchor, constant: 13).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForEyeButton() {
        eyeBtn.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10).isActive = true
        eyeBtn.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -31).isActive = true
        eyeBtn.heightAnchor.constraint(equalToConstant: 13).isActive = true
        eyeBtn.widthAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    private func setupConstraintsForPasswordTextField() {
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 13).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider5() {
        divider5.backgroundColor = .systemGray5
        divider5.translatesAutoresizingMaskIntoConstraints = false
        divider5.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 13).isActive = true
        divider5.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        divider5.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        divider5.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForConfirmPswrdLbl() {
        confirmPasswordLbl.topAnchor.constraint(equalTo: divider5.bottomAnchor, constant: 13).isActive = true
        confirmPasswordLbl.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForEyeButton2() {
        eyeBtn2.topAnchor.constraint(equalTo: confirmPasswordLbl.bottomAnchor, constant: 10).isActive = true
        eyeBtn2.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -31).isActive = true
        eyeBtn2.heightAnchor.constraint(equalToConstant: 13).isActive = true
        eyeBtn2.widthAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    private func setupConstraintsForConfirmPasswordTF() {
        confirmPasswordTF.topAnchor.constraint(equalTo: confirmPasswordLbl.bottomAnchor, constant: 13).isActive = true
        confirmPasswordTF.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        confirmPasswordTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider6() {
        divider6.backgroundColor = .systemGray5
        divider6.translatesAutoresizingMaskIntoConstraints = false
        divider6.topAnchor.constraint(equalTo: confirmPasswordTF.bottomAnchor, constant: 13).isActive = true
        divider6.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 22).isActive = true
        divider6.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -22).isActive = true
        divider6.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForSignUpBtn() {
        signUpBtn.topAnchor.constraint(equalTo: divider6.bottomAnchor, constant: 33).isActive = true
        signUpBtn.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        signUpBtn.widthAnchor.constraint(equalToConstant: 168).isActive = true
        
        signUpBtn.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
    }
    @objc func signUpTapped(_ sender: UIButton) {
        var shouldNavigate = true
        
        if fullnameTF.text?.isEmpty ?? true {
            fullnameTF.layer.borderColor = UIColor.red.cgColor
            fullnameTF.layer.borderWidth = 0.4
            fullnameTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if mobilenumberTF.text?.isEmpty ?? true {
            mobilenumberTF.layer.borderColor = UIColor.red.cgColor
            mobilenumberTF.layer.borderWidth = 0.4
            mobilenumberTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 0.4
            emailTextField.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if usernameTF.text?.isEmpty ?? true {
            usernameTF.layer.borderColor = UIColor.red.cgColor
            usernameTF.layer.borderWidth = 0.4
            usernameTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if passwordTextField.text?.isEmpty ?? true {
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 0.4
            passwordTextField.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if confirmPasswordTF.text?.isEmpty ?? true {
            confirmPasswordTF.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTF.layer.borderWidth = 0.4
            confirmPasswordTF.placeholder = "  Fill the field  "
            shouldNavigate = false
        }
        
        if shouldNavigate {
            let vc = FifthViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private func setupConstraintsForgroupOfImages2() {
        groupOfImages2.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 17.46).isActive = true
        groupOfImages2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        groupOfImages2.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsForgalreadyHaveAnAccountLbl() {
        alreadyHaveAnAccountLbl.topAnchor.constraint(equalTo: groupOfImages2.topAnchor, constant: 18.54).isActive = true
        alreadyHaveAnAccountLbl.leadingAnchor.constraint(equalTo: groupOfImages2.leadingAnchor, constant: 10.22).isActive = true
        alreadyHaveAnAccountLbl.heightAnchor.constraint(equalToConstant: 16).isActive = true
    }
    
    private func setupConstraintsForSignInBtn() {
        signInBtn.topAnchor.constraint(equalTo: groupOfImages2.topAnchor, constant: 18.54).isActive = true
        signInBtn.leadingAnchor.constraint(equalTo: alreadyHaveAnAccountLbl.trailingAnchor, constant: 5).isActive = true
        signInBtn.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        signInBtn.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
    }
    
    @objc func signInTapped(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
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
