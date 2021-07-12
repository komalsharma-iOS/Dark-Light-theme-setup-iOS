//
//  DataViewController.swift
//  ThemeChange
//
//  Created by iApp on 12/07/21.
//

import UIKit

class DataViewController: UIViewController {

    //MARK:- outlets
    @IBOutlet weak var dataTextView: UITextView!
    @IBOutlet weak var childView: UIView!
    @IBOutlet var superView: UIView!
    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var themeLbl: UILabel!
    
    //MARK:- variables
    var data = ""
    
    //MARK:- view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.navigationBar.isHidden = false
        setupTheme()
        dataTextView.text = data

    }
    
    
    /****Theme setup */
    func setupTheme(){
        
        navigationController?.navigationBar.barTintColor = Theme.current.navigationColor
        navigationController?.navigationBar.tintColor = Theme.current.navigationTitleColor
        navigationController?.navigationBar.isTranslucent = false
        
        childView.backgroundColor = Theme.current.cellViewColor
        dataTextView.textColor = Theme.current.textColor
        superView.backgroundColor = Theme.current.backgroundColor
        
        if Theme.current.isLightTheme == true{
            themeSwitch.thumbTintColor = .black
            themeSwitch.isOn = false
            themeLbl.textColor = .black
            //navigationController?.navigationBar.backgroundColor = .white
        }
        else{
            themeSwitch.thumbTintColor = .white
            themeSwitch.isOn = true
            themeLbl.textColor = .white
           // navigationController?.navigationBar.backgroundColor = .black
        }
        
    }

   
    /****Switch button action */
    @IBAction func themeSwitchAction(_ sender: Any) {
        
        if themeSwitch.isOn == false{
            //light theme
            Theme.current = LightTheme()
            overrideUserInterfaceStyle = .light
            setupTheme()
        }
        else{
            //Dark Theme
            Theme.current = DarkTheme()
            overrideUserInterfaceStyle = .dark
            setupTheme()
            
        }
        
    }
    
}
