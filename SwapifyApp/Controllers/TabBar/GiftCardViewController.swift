//
//  GiftCardViewController.swift
//  SwapifyApp
//
//  Created by Apple on 11/03/2022.
//

import UIKit

class GiftCardViewController: UIViewController {

    
    @IBOutlet weak var GiftCardTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINibRegisterCell ()
    }
    
    // MARK: - Methods
    
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "GiftCardTableViewCell", bundle: nil)
        GiftCardTableView?.register(nib, forCellReuseIdentifier: "GiftCardTableViewCell")
        
    }
    
    
    
    
}
extension GiftCardViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GiftCardTableViewCell") as! GiftCardTableViewCell
        return cell
        
    }
    
}

