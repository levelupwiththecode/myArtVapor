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
    let schema = "Artiste"
}
