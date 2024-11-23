//
//  SwiftNuggetView3.swift
//  SwiftNuggets
//
//  Created by Jan Armbrust on 23.11.2024.
//

import SwiftUI

struct SwiftNuggetView3: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Address") {
                    TextField(".addressState", text: .constant(""))
                        .textContentType(.addressState)
                    TextField(".addressCity", text: .constant(""))
                        .textContentType(.addressCity)
                    TextField(".addressState", text: .constant(""))
                        .textContentType(.addressCityAndState)
                    TextField(".fullStreetAddress", text: .constant(""))
                        .textContentType(.fullStreetAddress)
                    TextField(".countryName", text: .constant(""))
                        .textContentType(.countryName)
                    TextField(".streetAddressLine1", text: .constant(""))
                        .textContentType(.streetAddressLine1)
                    TextField(".streetAddressLine2", text: .constant(""))
                        .textContentType(.streetAddressLine2)
                    TextField(".sublocality", text: .constant(""))
                        .textContentType(.sublocality)
                    TextField(".postalCode", text: .constant(""))
                        .textContentType(.postalCode)
                }
                Section("Contact") {
                    TextField(".emailAddress", text: .constant(""))
                        .textContentType(.emailAddress)
                    TextField(".telephoneNumber", text: .constant(""))
                        .textContentType(.telephoneNumber)
                    TextField(".givenName", text: .constant(""))
                        .textContentType(.givenName)
                    TextField(".familyName", text: .constant(""))
                        .textContentType(.familyName)
                    TextField(".birthdate", text: .constant(""))
                        .textContentType(.birthdate)
                    TextField(".birthdateDay", text: .constant(""))
                        .textContentType(.birthdateDay)
                    TextField(".birthdateMonth", text: .constant(""))
                        .textContentType(.birthdateMonth)
                    TextField(".birthdateYear", text: .constant(""))
                        .textContentType(.birthdateYear)
                    TextField(".name", text: .constant(""))
                        .textContentType(.name)
                    TextField(".middleName", text: .constant(""))
                        .textContentType(.middleName)
                    TextField(".nameSuffix", text: .constant(""))
                        .textContentType(.nameSuffix)
                    TextField(".namePrefix", text: .constant(""))
                        .textContentType(.namePrefix)
                    
                }
                Section("Credit Card") {
                    TextField(".creditCardName", text: .constant(""))
                        .textContentType(.creditCardName)
                    TextField(".creditCardType", text: .constant(""))
                        .textContentType(.creditCardType)
                    TextField(".creditCardNumber", text: .constant(""))
                        .textContentType(.creditCardNumber)
                    TextField(".creditCardExpiration", text: .constant(""))
                        .textContentType(.creditCardExpiration)
                    TextField(".creditCardGivenName", text: .constant(""))
                        .textContentType(.creditCardGivenName)
                    TextField(".creditCardFamilyName", text: .constant(""))
                        .textContentType(.creditCardFamilyName)
                    TextField(".creditCardMiddleName", text: .constant(""))
                        .textContentType(.creditCardMiddleName)
                    TextField(".creditCardSecurityCode", text: .constant(""))
                        .textContentType(.creditCardSecurityCode)
                    TextField(".creditCardExpirationYear", text: .constant(""))
                        .textContentType(.creditCardExpirationYear)
                    TextField(".creditCardExpirationMonth", text: .constant(""))
                        .textContentType(.creditCardExpirationMonth)
                }
                Section("Uncategorized") {
                    TextField(".URL", text: .constant(""))
                        .textContentType(.URL)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.cellularEID)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.cellularIMEI)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.dateTime)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.flightNumber)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.jobTitle)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.location)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.newPassword)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.password)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.nickname)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.username)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.oneTimeCode)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.organizationName)
                    TextField(".URL", text: .constant(""))
                        .textContentType(.shipmentTrackingNumber)
                }
                
            }
            .navigationTitle("Swift Nugget 3")
        }
    }
}

#Preview {
    SwiftNuggetView3()
}
