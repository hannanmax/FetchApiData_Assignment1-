//
//  ViewController.swift
//  FetchAPI_Data_Assignment1
//
//  Created by Hannan Max on 2023-01-18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func FetchLuciferQuotes(_ sender: UIButton) {
        sender.isEnabled = false
        Task{
            do{
                print(try await Lucifer_Helper.fetchQuoteData())
                sender.isEnabled = true
            } catch let err{
                print("There was an error with the Lucifer API: \(err)")
            }
        }
    }
    
    
    @IBAction func FetchBreakingBadQuotes(_ sender: UIButton) {
        sender.isEnabled = false
        Task{
            do{
                print(try await BreakingBad_Helper.fetchQuoteData())
                sender.isEnabled = true
            } catch let err{
                print("There was an error with the Lucifer API: \(err)")
            }
        }
    }
    
    
    @IBAction func FetchStrangerThingsQuotes(_ sender: UIButton) {
        sender.isEnabled = false
        Task{
            do{
                print(try await StrangerThings_Helper.fetchQuoteData())
                sender.isEnabled = true
            } catch let err{
                print("There was an error with the Lucifer API: \(err)")
            }
        }
    }
}

