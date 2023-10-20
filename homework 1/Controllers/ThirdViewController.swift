//
//  ThirdViewController.swift
//  homework 1
//
//  Created by User on 22/10/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var vectorImg: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Vector")
        return view
    }()
    
    var smsTF: UITextField = {
        let view = UITextField()
        view.layer.backgroundColor = CGColor(red: 0.471, green: 0.471, blue: 0.471, alpha: 1)
        view.placeholder = "  000-000"
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
    
    var troubleLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Trouble Logging in?"
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.textColor = .systemGray6
        return view
    }()
    
    var bigTextLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Enter your email or  mobile number and we'll \n send you a OTP to get back into your account."
        view.font = .systemFont(ofSize: 11, weight: .regular)
        view.textColor = .systemGray4
        view.numberOfLines = 2
        view.textAlignment = .center
        return view
    }()
    
    var receiveTheCodeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.clipsToBounds = true
        view.layer.cornerRadius = 35
        return view
    }()
    
    var emplyeeIDLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Employee id"
        view.font = .systemFont(ofSize: 12, weight: .medium)
        view.textColor = .systemGray2
        return view
    }()
    
    var employeeIDTF: UITextField = {
        let view = UITextField()
        view.placeholder = "..."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .regular)
        return view
    }()
    
    private let divider7 = UIView()
    
    var entertextLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Enter your mobile number or Email id"
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 15, weight: .regular)
        view.textColor = .black
        view.layer.borderWidth = 0.3
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.cornerRadius = 10
        return view
    }()
    
    var getOTPBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Get OTP", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 15
        view.backgroundColor = .systemYellow
        return view
    }()
    
    var viewButtons: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    var stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
                view.alignment = .center
                view.distribution = .equalSpacing
                view.spacing = 7
        return view
    }()

    var submitBtn: UIButton = {
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
        
        view.addSubview(vectorImg)
        setupConstraintsForVectorImg()
        
        view.addSubview(smsTF)
        setupConstraintsForSmsTF()
        
        view.addSubview(troubleLbl)
        setupConstraintsForTroubleLbl()
        
        view.addSubview(bigTextLbl)
        setupConstraintsForBigTextLbl()
        
        view.addSubview(receiveTheCodeView)
        setupConstraintsForReceiveView()
        
        view.addSubview(emplyeeIDLbl)
        setupConstraintsForEmployeeIDLbl()
        
        view.addSubview(employeeIDTF)
        setupConstraintsForEmployeeIDTF()
        
        view.addSubview(divider7)
        setupConstraintsForDivider7()
        
        view.addSubview(entertextLbl)
        setupConstraintsForEnterTextLbl()
        
        view.addSubview(getOTPBtn)
        setupConstraintsForGetBtn()
        
        view.addSubview(viewButtons)
        setupConstraintsForViewButtons()
        
        viewButtons.addSubview(stackView)
        setupConstraintsForStackView()
        
        view.addSubview(submitBtn)
        setupConstraintsForSubmitBtn()
    }
    
    private func setupConstraintsForVectorImg() {
        vectorImg.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        vectorImg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vectorImg.heightAnchor.constraint(equalToConstant: 148).isActive = true
        vectorImg.widthAnchor.constraint(equalToConstant: 148).isActive = true
    }
    
    private func setupConstraintsForSmsTF() {
        smsTF.topAnchor.constraint(equalTo: vectorImg.bottomAnchor, constant: 34).isActive = true
        smsTF.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        smsTF.widthAnchor.constraint(equalToConstant: 279).isActive = true
        smsTF.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        smsTF.isEnabled = false
    }
    
    private func setupConstraintsForTroubleLbl() {
        troubleLbl.topAnchor.constraint(equalTo: smsTF.bottomAnchor, constant: 34).isActive = true
        troubleLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForBigTextLbl() {
        bigTextLbl.topAnchor.constraint(equalTo: troubleLbl.bottomAnchor, constant: 25).isActive = true
        bigTextLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setupConstraintsForReceiveView() {
        receiveTheCodeView.topAnchor.constraint(equalTo: bigTextLbl.bottomAnchor, constant: 38).isActive = true
        receiveTheCodeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        receiveTheCodeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        receiveTheCodeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupConstraintsForEmployeeIDLbl() {
        emplyeeIDLbl.topAnchor.constraint(equalTo: receiveTheCodeView.topAnchor, constant: 42).isActive = true
        emplyeeIDLbl.leadingAnchor.constraint(equalTo: receiveTheCodeView.leadingAnchor, constant: 22).isActive = true
    }
    
    private func setupConstraintsForEmployeeIDTF() {
        employeeIDTF.topAnchor.constraint(equalTo: emplyeeIDLbl.bottomAnchor, constant: 13).isActive = true
        employeeIDTF.leadingAnchor.constraint(equalTo: receiveTheCodeView.leadingAnchor, constant: 22).isActive = true
        employeeIDTF.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    private func setupConstraintsForDivider7() {
        divider7.backgroundColor = .systemGray5
        divider7.translatesAutoresizingMaskIntoConstraints = false
        divider7.topAnchor.constraint(equalTo: employeeIDTF.bottomAnchor, constant: 13).isActive = true
        divider7.leadingAnchor.constraint(equalTo: receiveTheCodeView.leadingAnchor, constant: 22).isActive = true
        divider7.trailingAnchor.constraint(equalTo: receiveTheCodeView.trailingAnchor, constant: -22).isActive = true
        divider7.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    private func setupConstraintsForEnterTextLbl() {
        entertextLbl.topAnchor.constraint(equalTo: divider7.bottomAnchor, constant: 30).isActive = true
        entertextLbl.centerXAnchor.constraint(equalTo: receiveTheCodeView.centerXAnchor).isActive = true
        entertextLbl.heightAnchor.constraint(equalToConstant: 45).isActive = true
        entertextLbl.widthAnchor.constraint(equalToConstant: 315).isActive = true
    }
    
    private func setupConstraintsForGetBtn() {
        getOTPBtn.topAnchor.constraint(equalTo: entertextLbl.bottomAnchor, constant: 16).isActive = true
        getOTPBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23).isActive = true
        getOTPBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        getOTPBtn.widthAnchor.constraint(equalToConstant: 95).isActive = true
        
        getOTPBtn.addTarget(self, action: #selector(getBtnTapped), for: .touchUpInside)
    }
    
    @objc func getBtnTapped(_ sender: UIButton) {
        
        if employeeIDTF.text?.isEmpty ?? true {
            employeeIDTF.layer.borderColor = UIColor.red.cgColor
            employeeIDTF.layer.borderWidth = 0.4
            employeeIDTF.placeholder = "  Fill the field  "
        } else {
            smsTF.isEnabled = true
        }
    }
    
    private func setupConstraintsForViewButtons() {
        viewButtons.topAnchor.constraint(equalTo: getOTPBtn.bottomAnchor, constant: 30).isActive = true
        viewButtons.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewButtons.widthAnchor.constraint(equalToConstant: 275).isActive = true
        //viewButtons.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 42).isActive = true
        //viewButtons.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -43).isActive = true
        viewButtons.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    private func setupConstraintsForStackView() {
        stackView.topAnchor.constraint(equalTo: viewButtons.topAnchor, constant: 0).isActive = true
        stackView.leadingAnchor.constraint(equalTo: viewButtons.leadingAnchor, constant: 0).isActive = true
        stackView.trailingAnchor.constraint(equalTo: viewButtons.trailingAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: viewButtons.bottomAnchor, constant: 0).isActive = true

        for _ in 1...6 {
                    let button = UIButton()
                    button.setTitle("x", for: .normal)
                    button.setTitleColor(.black, for: .normal)
                    button.backgroundColor = .white
                    button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            button.layer.cornerRadius = 10
            button.contentEdgeInsets = UIEdgeInsets(top: 9, left: 15, bottom: 10, right: 15)
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.gray.cgColor
            stackView.addArrangedSubview(button)
                }
    }
    @objc func buttonTapped(sender: UIButton) {
        sender.backgroundColor = .gray
        }
    
    private func setupConstraintsForSubmitBtn() {
        submitBtn.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 25).isActive = true
        submitBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        submitBtn.heightAnchor.constraint(equalToConstant: 35).isActive = true
        submitBtn.widthAnchor.constraint(equalToConstant: 95).isActive = true
        
        submitBtn.addTarget(self, action: #selector(submitBtnTapped), for: .touchUpInside)
    }
    
    @objc func submitBtnTapped(_ sender: UIButton) {
        if smsTF.text?.isEmpty ?? true {
            smsTF.layer.borderColor = UIColor.red.cgColor
            smsTF.layer.borderWidth = 0.4
            smsTF.placeholder = "  Fill the field  "
        } else {
            let vc = FourthViewController()
            navigationController?.pushViewController(vc, animated: true)
            vc.receivedText = smsTF.text
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

