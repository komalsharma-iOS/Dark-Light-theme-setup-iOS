//
//  ShowDataTableViewCell.swift
//  ThemeChange
//
//  Created by iApp on 12/07/21.
//

import UIKit

class ShowDataTableViewCell: UITableViewCell {
    
    //MARK:- outlets
    @IBOutlet weak var childView: UIView!
    @IBOutlet weak var dataLbl: UILabel!
    @IBOutlet weak var superView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        childView.layer.cornerRadius = 8
        themeSetup()
        // Initialization code
    }
    
    func themeSetup(){
        
        childView.backgroundColor = Theme.current.cellViewColor
        dataLbl.textColor = Theme.current.textColor
        superView.backgroundColor = Theme.current.backgroundColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
