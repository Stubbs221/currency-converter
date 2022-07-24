//
//  Currency+CoreDataProperties.swift
//  CurrencyPair
//
//  Created by MAC on 22.07.2022.
//
//

import Foundation
import CoreData


extension Currency {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Currency> {
        return NSFetchRequest<Currency>(entityName: "Currency")
    }

    @NSManaged public var secondCurrencyValue: Double
    @NSManaged public var secondCurrency: String?
    @NSManaged public var firstCurrencyValue: Int32
    @NSManaged public var firstCurrency: String?
    @NSManaged public var date: String?

}

extension Currency : Identifiable {

}
