//
//  ViewController.swift
//  ThemeChange
//
//  Created by iApp on 12/07/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    

    //MARK:- outlets
    @IBOutlet var superView: UIView!
    @IBOutlet weak var showDataTableView: UITableView!
    
    //MARK:- variables
    let dataArray = ["efdsfdfsffsdfsdfsdsdfsdfsfd","wefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwe","wefwefwewefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwewefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwewefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwewefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwewefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwewefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwewefbwehfbwehbfjhwebfjhwbefjbewjfbjwebfjbwefjbwefjhbwejfhbjwehbfjwebfjbwejbwe"]
    
    
    //MARK:- view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK:- view will appear
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        ThemeSetup()
    }
    
    func ThemeSetup(){
        
        superView.backgroundColor = Theme.current.backgroundColor
        showDataTableView.backgroundColor = Theme.current.backgroundColor
        showDataTableView.reloadData()
        
    }
    
    //MARK:- tableview delegates
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = showDataTableView.dequeueReusableCell(withIdentifier: "ShowDataTableViewCell") as? ShowDataTableViewCell else {return UITableViewCell()}
        
        cell.dataLbl.text = dataArray[indexPath.row]
        
        ///Theme setup for cell outlets
        cell.childView.backgroundColor = Theme.current.cellViewColor
        cell.dataLbl.textColor = Theme.current.textColor
        cell.superView.backgroundColor = Theme.current.backgroundColor
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "DataViewController") as? DataViewController else {return}
        
        vc.data = dataArray[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }


}

