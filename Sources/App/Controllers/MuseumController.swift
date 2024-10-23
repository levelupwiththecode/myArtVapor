//
//  File.swift
//  MIO
//
//  Created by Apprenant 163 on 21/10/2024.
//

import Foundation
import Vapor
import Fluent


struct MuseumController: RouteCollection
{
    func boot(routes: RoutesBuilder) throws
    {
        let museum = routes.grouped("Museums")
        museum.get(use:index)
        museum.post(use:create)
        museum.group("idMusee"){
            museum in museum.get(use:getMuseumById)
        }
    }
    
    @Sendable
    func index(req: Request) async throws -> [Museum]
    {
        let museum = try await Museum.query(on: req.db).all()
        return museum.map{$0}
    }
    @Sendable
    func create(req: Request) async throws -> Museum
    {
        let museum = try req.content.decode(Museum.self)
        try await museum.save(on: req.db )
        return museum
    }
    
    
    @Sendable
    func getMuseumById(req: Request) async throws -> Museum
    {
        guard let museum = try await
                Museum.find(req.parameters.get("idMusee"), on: req.db)else
        {
            throw Abort(.notFound)
        }
        return museum
    }
      
}
