//
//  Carro.m
//  OlaObjectiveC
//
//  Created by Wendel de Assis da Silva on 8/26/16.
//  Copyright © 2016 Livros Sa. All rights reserved.
//


#import "Carro.h"
@interface Carro()
- (void)imprimirPrivado;//aqui são declarados metodos privados
@end
#import "VelocidadeException.h"


@implementation Carro
//Implementação da classe carro, usando metodos e variavies declarados no header Carro.h
@synthesize nome;
@synthesize ano;

-(Carro *) initWithNome:(NSString *)_nome andAno:(int)_ano{
    self = [super init];
    if (self) {
        //Se a inicialização foi bem sucedida
        [self setNome:_nome];
        [self setAno:_ano ];
    }
    return self;
}


- (void) acelerarComVelocidade:(int) velocidade eDistancia:(int) distancia{
    NSLog(@"Acelerar com velocidade: %d e Distância: %d metros", velocidade, distancia);
    if (velocidade > 120){
        //throw exception
        NSException *e = [VelocidadeException exceptionWithName: @"VelocidadeException" reason: @"Velocidade não permitida, dirija com cuidado." userInfo: nil];
        @throw e;
    }
}

#pragma mark - protocolo combustivel
- (void)abastecerComAlcool {
    NSLog(@"Abastecendo com Àlcool");
    
}

- (void) abastecerComGasolina {
    NSLog(@"Abastecendo com Gasolina");
}

- (void) imprimir{
    [self imprimirPrivado];
    NSLog(@"Nome: %@, Ano: %d", self.nome, self.ano);
}

- (void) imprimirPrivado{
    //aqui voce implementa o método normalmente. a diferença é que ele foi declarado
    //no arquiov .m e portanto é privado
    NSLog(@"Nome: %@, Ano: %d", self.nome, self.ano);
}


@end
