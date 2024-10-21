//
//  ArtworkController.swift
//
//
//  Created by Massidé Dosso on 20/10/2024.
//

import Fluent
import Vapor

struct ArtworkController: RouteCollection {
    func boot(routes: any Vapor.RoutesBuilder) throws {
        let artworks = routes.grouped("artworks")
        
        artworks.get(use: index)
    }
    
    @Sendable
    func index(req: Request) async throws -> [Artwork] {
        return try await Artwork.query(on: req.db).all()
    }
    
    
    
}
