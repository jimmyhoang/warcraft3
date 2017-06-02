//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gold = 1000;
        _food = 80;
    }
    return self;
}

-(Footman *)trainFootman {
    Footman* trainedFootman = [[Footman alloc] init];
    if ([self canTrainFootman]) {
        self.gold = self.gold - 135;
        self.food = self.food - 2;
        return trainedFootman;
    }
    return nil;
}

-(BOOL)canTrainFootman {
    if ((self.gold >= 135) && (self.food >= 2)) {
        return YES;
    } else {
        return NO;
    }
}

-(Peasant *)trainPeasant {
    Peasant* trainedPeasant = [[Peasant alloc] init];
    if ([self canTrainPeasant]) {
        self.gold = self.gold - 90;
        self.food = self.food - 5;
        return trainedPeasant;
    }
    return nil;
}

-(BOOL)canTrainPeasant {
    if((self.gold >=90) && (self.food >= 5)) {
        return YES;
    } else {
        return NO;
    }
}

-(void)setFood:(int)food {
    _food = food;
    
}

-(void)setGold:(int)gold {
    _gold = gold;
}

@end
