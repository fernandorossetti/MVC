//
//  DefinicionesViewController.swift
//  Diccionario del Programador - Top 5
//
//  Created by fernando rossetti on 21/11/16.
//  Copyright © 2016 fernando rossetti. All rights reserved.
//

import UIKit
//absoluteURL
class DefinitionsViewController: UIViewController
{
    var spanishEnglish:[SpanishEnglish] = []

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    var namesLabel:String!
    var desciptionTextView:String!
    
    override func viewDidLoad() {
        nameLabel.text = namesLabel
        descriptionTextView.text = desciptionTextView
        super.viewDidLoad()
        
    }
    
    
    @IBAction func wikipediaEnglish(sender: AnyObject) {
        if let url = NSURL(string: "https://en.wikipedia.org/wiki/Main_Page")
        {
            UIApplication.sharedApplication().openURL(url)
        }
    }
   
   
    @IBAction func wikipediaSpanish(sender: AnyObject) {
        if let url = NSURL(string: "https://es.wikipedia.org/wiki/Wikipedia:Portada")
        {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    

   
}

