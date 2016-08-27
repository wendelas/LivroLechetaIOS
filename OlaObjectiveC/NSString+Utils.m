//
//  NSString+Utils.m
//  OlaObjectiveC
//
//  Created by Wendel de Assis da Silva on 26/08/16.
//  Copyright © 2016 Livros Sa. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (_Utils)
- (NSString *) trim {
    NSString *s = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return s;
}

@end
