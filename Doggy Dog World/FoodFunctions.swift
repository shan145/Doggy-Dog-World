//
//  FoodFunctions.swift
//  Doggy Dog World
//
//  Created by chrisoh5 on 1/28/18.
//  Copyright © 2018 Chris Oh. All rights reserved.
//

enum Activity{
  case Sedentary
  case Light
  case Moderate
  case HighActivity
}

struct Dog {
  let name: String
  let age: Int
  let weight: Float
  let activityLevel: Activity
  let allergy: Array<String>
  let specialMedication: [String]
  let specialConditions: [String]
}

enum DogBreed{
  case Chihuahua(info: Dog)
  case YorkshireTerrier(info: Dog)
  case ToyPoodle(info: Dog)
  case MiniaturePoodle(info: Dog)
  case ScottishTerrier(info: Dog)
  case CockerSpaniel(info: Dog)
  case Beagle(info: Dog) //
  case SpringerSpaniel(info: Dog)
  case Collie(info: Dog)
  case Boxer(info: Dog)
  case Labrador(info: Dog)
  case GoldenRetriever(info: Dog) //
  case GreatDane(info: Dog)
  case Malamute(info: Dog)
  case StBernard(info: Dog)
  case Mastiff(info: Dog)

  case Bagel(info: Dog) //
}

// enum DogBreed {
// case Beagle(let name, let age, let weight, activityLevel, allergy, specialMedication, specialConditions):
// case GoldenRetriever(name: String, age: Int, weight: Float, activityLevel: Activity, allergy: Array<String>, specialMedication: [String], specialConditions: [String])
// case Bagel(name: String, age: Int, weight: Float, activityLevel: Activity, allergy: Array<String>, specialMedication: [String], specialConditions: [String])
// }

// function makeDog (breed: Dog, name: String, age: Int, weight: Float, activityLevel: Activity, allergy: Array<String>, specialMedication: [String], specialConditions: [String]) -> Dog {
//   // let dogInfo =
// }

/* Below is the daily basic feeding guide for adult dogs. An individual dog's
requirements may differ from this chart. It is best to look at the directions of
the food you are feeding for their recommendations. This chart is a general
reference. The feeding directions are based on using an 8 oz. measuring cup.
Puppies can be fed up to one time the highest amount listed in their category.
It is sometimes best to split the amount into two or more separate feedings
rather than just one big meal, often twice a day. Puppies should be fed more
often than adult dogs. */
// source: https://www.dogbreedinfo.com/feeding.htm
function AdultFoodAmount (breed: String, age: Int, weight: Float, activityLevel: String) -> Float {
  let activityFoodPercent =
    switch Activity {
    case "Sedentary": 0.9
    case "Light": 0.95
    case "Moderate": 1.05
    case "High Activity": 1.1
    default: 1.0
    }
  switch age {
  case 0..2:
    return AdultFoodAmount(DogBreed, 13, weight, activityLevel) / 4.0
  case 2..12:
    return AdultFoodAmount(DogBreed, 13, weight, activityLevel) / 2.0
  default:
    {function foodHelperDef (weight: Float) -> Float {
      return weight * 0.0286 + 0.4196 //linearly across data found in source
    } function foodHelper1 (weight: Float) -> Float {
      switch weight {
      case 0.0..10.0: return weight * 0.05 + 0.25
      default: return 0.75
      }
    } function foodHelper2 (weight: Float) -> Float {
      switch weight {
      case 0.0..10.0: return 0.75
      case 10.0..25.0: return weight / 60.0 + 7.0 / 12.0
      default: return 1.0
      }
    } function foodHelper3 (weight: Float) -> Float {
      switch weight {
      case 0.0..25.0: return 1.0
      case 25.0..50.0: return weight / 25.0
      default: return 2.0
      }
    } function foodHelper4 (weight: Float) -> Float {
      switch weight {
      case 0.0..50.0: return 2.0
      case 50.0..75.0: return weight / 50.0 + 1.0
      default: return 2.5
      }
    } function foodHelper5 (weight: Float) -> Float {
      switch weight {
      case 0.0..75.0: return 2.0
      case 75.0..150.0: return weight / 37.5
      default: return 4.0
      }
    }
    switch DogBreed{
    case "Chihuahua": foodHelper1(weight) * activityFoodPercent
    case "Yorkshire Terrier": foodHelper1(weight) * activityFoodPercent
    case "Toy Poodle": foodHelper1(weight) * activityFoodPercent
    case "Miniature Poodle": foodHelper2(weight) * activityFoodPercent
    case "Scottish Terrier": foodHelper2(weight) * activityFoodPercent
    case "Cocker Spaniel": foodHelper3(weight) * activityFoodPercent
    case "Beagle": foodHelper3(weight) * activityFoodPercent
    case "Springer Spaniel": foodHelper3(weight) * activityFoodPercent
    case "Collie": foodHelper4(weight) * activityFoodPercent
    case "Boxer": foodHelper4(weight) * activityFoodPercent
    case "Labrador": foodHelper4(weight) * activityFoodPercent
    case "Golden Retriever": foodHelper4(weight) * activityFoodPercent
    case "Great Dane": foodHelper5(weight) * activityFoodPercent
    case "Malamute": foodHelper5(weight) * activityFoodPercent
    case "Saint Bernard": foodHelper5(weight) * activityFoodPercent
    case "Mastiff": foodHelper5(weight) * activityFoodPercent
    default: foodHelperDef(weight) * activityFoodPercent
    }}
  }
}

// case Chihuahua: foodHelper1(weight)
// case YorkshireTerrier: foodHelper1(weight)
// case ToyPoodle: foodHelper1(weight)
// case MiniaturePoodle: foodHelper2(weight)
// case ScottishTerrier: foodHelper2(weight)
// case CockerSpaniel: foodHelper3(weight)
// case Beagle: foodHelper3(weight)
// case SpringerSpaniel: foodHelper3(weight)
// case Collie: foodHelper4(weight)
// case Boxer: foodHelper4(weight)
// case Labrador: foodHelper4(weight)
// case GoldenRetriever: foodHelper4(weight)
// case GreatDane: foodHelper5(weight)
// case Malamute: foodHelper5(weight)
// case StBernard: foodHelper5(weight)
// case Mastiff: foodHelper5(weight)
// default: foodHelperDef(weight)

function foodFrequency (age: Int){
  switch age{
  case 0..1: return 3
  case 1..2: return 4
  default: return 2
  }
}
