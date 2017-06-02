//
//  Barracks.h
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import <Foundation/Foundation.h>
#import "Footman.h"
#import "Peasant.h"

@interface Barracks : NSObject

@property (nonatomic, assign) int gold;
@property (nonatomic, assign) int food;

-(Footman*) trainFootman;
-(BOOL) canTrainFootman;
-(Peasant*) trainPeasant;
-(BOOL) canTrainPeasant;
-(void)setGold:(int)gold;
-(void)setFood:(int)food;



@end
