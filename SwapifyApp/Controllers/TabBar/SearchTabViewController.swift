//
//  SearchTabViewController.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class SearchTabViewController: UIViewController {
    
    // MARK: - Interface Components
    
    @IBOutlet weak var searchTableView : UITableView!
    @IBOutlet weak var searchTextField : UITextField!
    
    
    // MARK: - Class Variables
    
    var originalArr = [[String:Any]]();
    var searchArrRes = [[String:Any]]()
    var searching:Bool = false

    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign delegate  don't forget

        searchTextField.delegate = self
        
        UINibRegisterCell()
        setupTextFields()
        
        
        //my array
       originalArr =   [
         ["name": "Bol.com", "number": "+8800000001"],
         ["name": "ICI Paris Xl", "number": "+8800000002"],
         ["name": "Intertoys", "number": "+8800000003"],
         ["name": "Spotify", "number": "+8800000004"],
         ["name": "Bioscoopbon", "number": "+8800000005"],
         ["name": "Zalando", "number": "+8800000006"],
         ["name": "Wehkamp", "number": "+8800000007"],
         ["name": "Cookies", "number": "+8800000008"],
        ]
    }
    
    // MARK: - Methods
    
    func UINibRegisterCell (){
        
        let nib = UINib(nibName: "SearchTableViewCell", bundle: nil)
        searchTableView?.register(nib, forCellReuseIdentifier: "SearchTableViewCell")
        
    }
    
    
    func setupTextFields() {
        let toolbar = UIToolbar()
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                        target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done,
                                         target: self, action: #selector(doneButtonTapped))
        
        toolbar.setItems([flexSpace, doneButton], animated: true)
        toolbar.sizeToFit()
        
        
        searchTextField.inputAccessoryView = toolbar
    }
    
    @objc func doneButtonTapped() {
        view.endEditing(true)
    }
    
    
    
    // MARK: - IBACTION METHODS
    
    
    @IBAction func cancelButton (_ sender : UIButton ){
        
        searchTextField.resignFirstResponder()

    }
    
    @IBAction func clearButton (_ sender : UIButton ){
        
        searchTextField.text = ""
        searching = false
        searchTableView.reloadData()

    }
    @IBAction func cancelbtnButton (_ sender : UIButton ){
        self.navigationController?.popViewController(animated: true)
    }
}

extension SearchTabViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //check search text & original text
        if( searching == true){
           return searchArrRes.count
        }else{
           return originalArr.count
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as! SearchTableViewCell
        
        //check search text & original text
         if( searching == true){
            let dict = searchArrRes[indexPath.row]
          cell.searchLabel.text = dict["name"] as? String
        }else{
            let dict = originalArr[indexPath.row]
            cell.searchLabel.text = dict["name"] as? String

        }
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = MAIN_STORYBOARD.instantiateViewController(withIdentifier: "SearchResultViewController") as! SearchResultViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

extension SearchTabViewController : UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("TextField should change in call")

        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
        let searchText  = textField.text!
        
        if searchText.count >= 3 {

            searchArrRes = self.originalArr.filter({(($0["name"] as! String).localizedCaseInsensitiveContains(searchText))})
            
            if(searchArrRes.count == 0){
              searching = false
            }else{
              searching = true
            }

        }
        else{
            searchArrRes = []
            searching = false
        }

        searchTableView.reloadData()

    }
}


func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
 textField.resignFirstResponder()
 return true
}



