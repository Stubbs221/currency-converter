//
//  AddCurrencyView.swift
//  CurrencyPair
//
//  Created by MAC on 24.07.2022.
//

import UIKit

class AddCurrencyView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    
    convenience init(firstCurrency: AllCurrencies) {
        self.init()
        self.firstCurrency = firstCurrency
    }

    var firstCurrency: AllCurrencies!
    var secondCurrency: AllCurrencies!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
