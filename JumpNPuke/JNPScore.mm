//
//  JNPScore.mm
//  JumpNPuke
//
//  Created by Alain Vagner on 29/01/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "JNPScore.h"

static JNPScore * instance = nil;

@implementation JNPScore

+(JNPScore *)jnpscore {
	if (instance == nil) {
		@synchronized(self) {
			if (instance == nil) {
				instance = [[super alloc] init ];
			}
		}
	}
	return instance;
}

- (id)init {
    self = [super init];
    if (self) {
		level=1;
		score=0;
    }
    return self;
}

-(int)getScore
{
	return score;
}

-(void)setScore:(int)s
{
	score = s;
}

-(void)incrementScore:(int)s
{
	score+=s;	
}

-(int)getLevel
{
	return level;
}

-(void)setLevel:(int)l
{
	level = l;
}

-(void)incrementLevel
{
	level++;	
}

@end