//
//  OrderdetailsViewController.swift
//  SwapifyApp
//
//  Created by Apple on 10/03/2022.
//

import UIKit

class OrderdetailsViewController: UIViewController {

    @IBOutlet weak var OrderTableView : UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINibRegisterCell()
    }
    
    
    // MARK: - Methods
    
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "OrderDetailsTableViewCell", bundle: nil)
        OrderTableView?.register(nib, forCellReuseIdentifier: "OrderDetailsTableViewCell")
        
    }
    
    
    // MARK: - IBACTION METHODS
    @IBAction func checkoutBtnAction(_ sender: Any) {
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "OrderConfirmedViewController") as! OrderConfirmedViewController
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func backBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
extension OrderdetailsViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderDetailsTableViewCell") as! OrderDetailsTableViewCell
        return cell
    }
    
    
    
}
