//
//  DiccionarioViewController.swift
//  Diccionario del Programador - Top 5
//
//  Created by fernando rossetti on 24/11/16.
//  Copyright © 2016 fernando rossetti. All rights reserved.
//

import UIKit

class DictionariesViewController: UIViewController
{
    var spanishEnglish:[SpanishEnglish] = []
    var position: Int!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let englishSpanish:SpanishEnglish = spanishEnglish[position]
        
        if(segue.identifier == "spanishSegue")
        {
        if let destinationViewController = segue.destinationViewController as? DefinitionsViewController
        {
                destinationViewController.namesLabel = englishSpanish.name
                destinationViewController.desciptionTextView = englishSpanish.descriptionDictionary
                
        }
        }else if(segue.identifier == "englishSegue")
        {
        if let destinationViewController = segue.destinationViewController as? DefinitionsViewController
        {
                destinationViewController.namesLabel = englishSpanish.name
                destinationViewController.desciptionTextView = englishSpanish.descriptionDictionary
        }
        }


    }
    
    @IBAction func abstraccion(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.Spanish)
        
        position = 0
        performSegueWithIdentifier("spanishSegue", sender:0)
        
    }
    
    @IBAction func sistemaBinario(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.Spanish)
        
        position = 1
        self.performSegueWithIdentifier("spanishSegue", sender:1)
        
    }
    
    @IBAction func condicional(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.Spanish)
        
        position = 2
        self.performSegueWithIdentifier("spanishSegue", sender:2)
        
    }
    
    @IBAction func latencia(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.Spanish)
        
        position = 3
        self.performSegueWithIdentifier("spanishSegue", sender:3)
        
    }
    
    @IBAction func memoriaVirtual(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.Spanish)
        
        position = 4
        self.performSegueWithIdentifier("spanishSegue", sender: 4)
        
    }
    
    @IBAction func abstraction(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.English)
        
        position = 0
        performSegueWithIdentifier("englishSegue", sender:0)
        
    }
    
    @IBAction func binarySystem(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.English)
        
        position = 1
        performSegueWithIdentifier("englishSegue", sender:1)
    }
    
    @IBAction func conditional(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.English)
        
        position = 2
        performSegueWithIdentifier("englishSegue", sender:2)
    }
    
    @IBAction func latency(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.English)
        
        position = 3
        performSegueWithIdentifier("englishSegue", sender:3)
    }
    
    @IBAction func virtualMemory(sender: AnyObject)
    {
        spanishEnglish = SpanishEnglish.dictionaries(Type.English)
        
        position = 4
        performSegueWithIdentifier("englishSegue", sender:4)
    }



}
