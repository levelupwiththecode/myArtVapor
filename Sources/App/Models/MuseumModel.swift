//
//  File.swift
//  MIO
//
//  Created by Apprenant 163 on 21/10/2024.
//

import Foundation
import Vapor
import Fluent



//
//  Museum.swift
//  myArt
//
//  Created by Apprenant 163 on 21/10/2024.
//

import Foundation

final class Museum: Model,Content,@unchecked Sendable
{
    static let schema = "Musee"
    
    @ID(custom:  "idMusee")
    var id :UUID?
    
    @Field(key:"nomMusee")
    var  nomMusee :String
    
    @Field(key:"descriptionMusee")
    var  descriptionMusee :String
    
    @Field(key:"imageMusee")
    var  imageMusee :String
    
    @Field(key:"adresseMusee")
    var  adresseMusee:String
    
    @Field(key:"postalCodeMusee")
    var  postalCodeMusee :String
    
    @Field(key:"cityMusee")
    var  cityMusee :String
    
    @Field(key:"countryMusee")
    var  countryMusee :String
    
    @Field(key:"latitudeMusee")
    var  latitudeMusee: Float
    
    @Field(key:"longitudeMusee")
    var  longitudeMusee: Float
    
    @Field(key:"heureOuvertureMusee")
    var  heureOuvertureMusee: String
    
    @Field(key:"heureFermetureMusee")
    var heureFermetureMusee : String
    
}
