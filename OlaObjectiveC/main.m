//
//  main.m
//  OlaObjectiveC
//
//  Created by Wendel de Assis da Silva on 8/26/16.
//  Copyright © 2016 Livros Sa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Carro.h"
#import "VelocidadeException.h"
#import "PostoDeGasolina.h"
#import "NSString+Utils.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        // Cria os três carros
        Carro *c1 = [[Carro alloc] initWithNome:@"Fusca" andAno:1934];
        Carro *c2 = [[Carro alloc] initWithNome:@"Chevette" andAno:1973];
        Carro *c3 = [[Carro alloc] initWithNome:@"Brasilia" andAno:1973];
        
        NSArray *array1 = [[NSArray alloc] initWithObjects:c1, c2, c3, nil];
        
        //Cria um array dinamicamente
        NSMutableArray *array2 = [[NSMutableArray alloc] init];
        [array2 addObject:c1];
        [array2 addObject:c2];
        [array2 addObject:c3];
        
        //imprime os dados de um dos arrays
        NSInteger count = [array1 count];
        for (int i = 0; i <count; i++){
            Carro *c = [array1 objectAtIndex:i];
            NSLog(@"Carro[%d] = %@ (%d)", i, c.nome, c.ano);
        }
    
    
    }
    return 0;
    
}
