//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"

@implementation Footman

- (instancetype)init
{
    self = [super init];
    if (self) {
        super.healthPoints = 60;
        super.attackPower = 10;
    }
    return self;
}

-(void)damage:(int)damage {
    self.healthPoints = self.healthPoints - damage;
}

-(void)attack:(Unit *)enemy withDamage:(int)damage {
    enemy.healthPoints = enemy.healthPoints - damage;
}

@end


