//
//  ModelData.swift
//  CreatingAndCombiningViews
//
//  Created by Diego Montaño on 19/05/21.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
  let data: Data;
  
  guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {fatalError("No se encontró \(filename)")}
  
  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("Error con el archivo \(filename). Error: \(error)");
  }
  
  do {
    let decoder = JSONDecoder();
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("Couldnt parse \(filename) as \(T.self). Error: \(error)");
  }
}
