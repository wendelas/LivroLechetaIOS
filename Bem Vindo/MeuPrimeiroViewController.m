//
//  MeuPrimeiroViewController.m
//  Bem Vindo
//
//  Created by Wendel de Assis da Silva on 26/08/16.
//  Copyright © 2016 Bitcom. All rights reserved.
//

#import "MeuPrimeiroViewController.h"

@implementation MeuPrimeiroViewController

#pragma mark - View lifecycle
-(void)viewDidLoad {
    meuPrimeiroLabel.text = @"Tela iniciada com sucesso!";
}

-(IBAction)olaMundo:(id)sender {
    NSLog(@"Olá");
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        meuPrimeiroLabel.text = @"Olá Mundo iPhone!";
    } else {
        meuPrimeiroLabel.text = @"Olá Mundo iPad!";
    }
}
@end
