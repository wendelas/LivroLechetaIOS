//
//  PostoDeGasolina.m
//  OlaObjectiveC
//
//  Created by Wendel de Assis da Silva on 26/08/16.
//  Copyright © 2016 Livros Sa. All rights reserved.
//

#import "PostoDeGasolina.h"

@implementation PostoDeGasolina

+(void) abastecerCarroComAlcool:(NSObject<CombustivelAlcool> *)tipoAlcool{
    //apenas delega para o método do protocolo
    [tipoAlcool abastecerComAlcool];
}

+(void) abastecerCarroComGasolina:(NSObject<CombustivelGasolina> *)tipoGasolina{
    [tipoGasolina abastecerComGasolina];
}

@end
