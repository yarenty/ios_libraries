//
//  CalendarHelper.swift
//  ios_library
//
//  Created by Jaroslaw Nowosad on 08/12/2015.
//  Copyright © 2015 SkyCorp Ltd. All rights reserved.
//

import Foundation

// This class contains all methods  to properdly deal with displaying calendar
class CalendarHelper {
    
    private var _current = NSDate()
    private let _calendar = NSCalendar.currentCalendar()
    
    
    private var _year = 2012
    private var _month = 1
    private var _day = 1
    private var _monthName = "Jan"

    private var _firstWeekStartingIn = 7
    private var _numberOfDaysInMonth = 31
    
    var year: Int {
        return _year
    }

    var month: Int {
        return _month
    }
    
    var day: Int {
        return _day
    }
    
    var monthName : String {
        return _monthName
    }
    
    var firstWeekStartingIn: Int {
        return _firstWeekStartingIn
    }
    
    var numberOfDaysInMonth: Int {
        return _numberOfDaysInMonth
    }
    
    //start with current date
    init() {
        processCalendar()
    }
    
    /**
     Returns number of day in week: 0 - Monday, 6-Sunday
     Input: yyyy-MM-dd
     */
    func getDayOfWeek(today:String)->Int {
        
        let formatter  = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let todayDate = formatter.dateFromString(today)!
        let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        let myComponents = myCalendar.components(.Weekday, fromDate: todayDate)
        var weekDay = myComponents.weekday - 2
        print("\(today) => \(weekDay)")
        
        //if weekDay == 0 { weekDay=6 }
        if weekDay == -1 { weekDay=6 }
        
        return weekDay
    }
    
    
    private func processCalendar() {
        _calendar.date(_current, matchesComponents: NSDateComponents())
        _year = _calendar.components(NSCalendarUnit.Year, fromDate: _current).year
        _month = _calendar.components(NSCalendarUnit.Month, fromDate: _current).month
        _day = _calendar.components(NSCalendarUnit.Day, fromDate: _current).day
        _monthName = _calendar.monthSymbols[month-1]
        _numberOfDaysInMonth = _calendar.rangeOfUnit(.Day, inUnit: .Month, forDate: _current).length
        _firstWeekStartingIn = getDayOfWeek("\(year)-\(month)-01")
    }

    
    func nextMonth() {
        _current = _calendar.dateByAddingUnit(NSCalendarUnit.Month, value: 1, toDate: _current, options: NSCalendarOptions.MatchFirst)!
        processCalendar()
    }
    
    
    func prevMonth() {
        _current = _calendar.dateByAddingUnit(NSCalendarUnit.Month, value: -1, toDate: _current, options: NSCalendarOptions.MatchFirst)!
        processCalendar()
    }
}