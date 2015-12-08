//
//  Motivation.swift
//  ios_library
//
//  Created by Jaroslaw Nowosad on 08/12/2015.
//  Copyright © 2015 SkyCorp Ltd. All rights reserved.
//
import Foundation

class Motivation {
    private let _author :String
    private let _quote : String
    
    init (_ quote: String, _ author: String) {
        _author = author
        _quote = quote
    }
    
    convenience init(_ quote: String) {
        self.init ( quote, "unknown")
    }
    
    var author: String {
        get {
            return _author
        }
    }
    
    var quote: String {
        get {
            return _quote
        }
    }
    
}

class MotivationDict {
    
    private let dict = [
        Motivation("act as if what you do makes a difference - it does","william james"),
        Motivation("wise men learn more from fools than fools learn from wise men", "cato"),
        Motivation("formal education will make you a living, self-education will make you a fortune","jim rohn"),
        Motivation("there is only one way to avoid criticism: do nothing, say nothing, and be nothing","aristotele"),
        Motivation("well done is better than well said","benjamin franklin"),
        Motivation("i woke up like this","beyonce"),
        Motivation("if you can count your money, you do not have a billion dollars","j paul getty"),
        Motivation("happy families are all alike; every unhappy family is unhappy in its own way","leo tolstoy"),
        Motivation("to play it safe is not to play","robert altman"),
        Motivation("be miserable or motivate yourself, whatever has to be done, it is always your choice","wayne dyer"),
        Motivation("Ideas are easy. Implementation is hard.","guy kawasaki"),
        Motivation("It’s not about ideas. It’s about making ideas happen","scott belsky"),
        Motivation("Do. Or do not. There is no try.","Yoda"),
        Motivation("The critical ingredient is getting off your butt and doing something. simple as that",""),
        Motivation("The best time to plant a tree was 20 years ago. The second best time is now","chinese"),
        Motivation("A person who never made a mistake never tried anything new.","Albert Einstein"),
        Motivation("Risk more than others think is safe. Dream more than others think is practical","Howard Schultz"),
        Motivation("The way to get started is to quit talking and begin doing","Walt Disney"),
        Motivation("You miss 100 percent of the shots you don't take","Wayne Gretzky"),
        Motivation("It does not matter how slowly you go as long as you do not stop","confucius"),
        Motivation("It's hard to beat a person who never gives up","babe ruth"),
        Motivation("Fail often so you can succeed sooner","Tom Kelley"),
        Motivation("Timing, perseverance, and ten years of trying will eventually make you look like an overnight success","Biz Stone"),
        Motivation("You may be disappointed if you fail, but you are doomed if you don't try","beverly sills"),
        Motivation("When you cease to dream you cease to live","malcolm forbes"),
        Motivation("Your most unhappy customers are your greatest source of learning","bill gates"),
        Motivation("I have not failed. I’ve just found 10,000 ways that won’t work","thomas edison"),
        Motivation("Success is how high you bounce after you hit bottom","general george patton"),
        Motivation("If you’re not embarrassed by the first version of your product, you’ve launched too late","Reid Hoffman"),
        Motivation("Positive thinking will let you do everything better than negative thinking will","zig ziglar"),
        Motivation("Don’t try to be original, just try to be good","paul rand"),
        Motivation("I’m not afraid of dying, I’m afraid of not trying","jay z"),
        Motivation("Whatever the mind can conceive and believe, the mind can achieve","dr napoleon hill"),
        Motivation("You can say anything to anyone, but how you say it will determine how they will react","john rampton"),
        Motivation("People often say that motivation doesn’t last Well, neither does bathing-that’s why we recommend it daily.","zig ziglar"),
        Motivation("Chase the vision, not the money, the money will end up following you",""),
        Motivation("You don’t learn to walk by following rules. You learn by doing and falling over.",""),
        Motivation("",""),
        Motivation("",""),
        Motivation("",""),
        Motivation("",""),
        Motivation("",""),
        Motivation("",""),   
        
        
    ]
    
    func get () -> Motivation {
        let rand = Int(arc4random_uniform(UInt32(dict.count)))
        
        return dict[rand]
    }
    
}