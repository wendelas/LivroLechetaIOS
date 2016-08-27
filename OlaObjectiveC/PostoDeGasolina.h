//
//  PostoDeGasolina.h
//  OlaObjectiveC
//
//  Created by Wendel de Assis da Silva on 26/08/16.
//  Copyright © 2016 Livros Sa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CombustivelGasolina.h"
#import "CombustivelAlcool.h"


@interface PostoDeGasolina : NSObject
+ (void) abastecerCarroComAlcool:(NSObject<CombustivelAlcool> *) tipoAlcool;
+ (void) abastecerCarroComGasolina:(NSObject<CombustivelGasolina> *) tipoGasolina;

@end
