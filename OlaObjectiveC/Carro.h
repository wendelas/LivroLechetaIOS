//
//  Carro.h
//  OlaObjectiveC
//
//  Created by Wendel de Assis da Silva on 8/26/16.
//  Copyright © 2016 Livros Sa. All rights reserved.
//
//O arquivo H contém somente as declarações de metodos e atributos
#import <Foundation/Foundation.h>
#import "CombustivelGasolina.h"
#import "CombustivelFlex.h"

@interface Carro : NSObject <CombustivelFlex> {
    //Entre as chaves declaramos os atributos
    NSString *nome;
    int ano;
}
//após as chaves declaramos os métodos
@property (nonatomic, retain) NSString* nome;
@property (nonatomic, assign) int ano;


- (void) acelerarComVelocidade: (int) velocidade eDistancia: (int) distancia;
- (Carro *) initWithNome:(NSString *)_nome andAno:(int)_ano;
//o hífen '-' inicia a declaração do metodo e indica que ele é de instância, ou seja método comum
- (void) imprimir;

@end
