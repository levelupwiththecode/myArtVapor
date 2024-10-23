//
//  File.swift
//  myArtVapor
//
//  Created by Apprenant 163 on 23/10/2024.
//

import Foundation
import Fluent
import Vapor

final class Artist:Model,Content, @unchecked Sendable
{
    static  let schema = "Artiste"
    
    @ID(custom: "idArtiste")
    var id: UUID?
    
    @Field(key:"nomArtiste")
    var nomArtiste:String
    
    @Field(key:"prenomArtiste")
    var prenomArtiste:String
    
    @Field(key:"emailArtist")
    var emailArtiste:String
    
  
}
