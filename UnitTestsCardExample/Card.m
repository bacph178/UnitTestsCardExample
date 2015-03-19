//
//  Card.m
//  UnitTestsCardExample
//
//  Created by Stephan B Wessels on 1/23/14.
//  Copyright (c) 2014 Plum Street Software. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

-(int)match:(Card *)otherCard {
    if ([self isCard] && [otherCard isCard]) {
        if (self.level * 10 + self.rank > otherCard.level * 10 + otherCard.rank) {
            return 1;
        } else if (self.level * 10 + self.rank == otherCard.level * 10 + otherCard.rank){
            return 0;
        } else return -1;
    } else return 2;
}

-(BOOL)isCard {
    if (self.rank > 0 && self.rank < 5 && self.level > 0 && self.level < 13) {
        return YES;
    } else return NO;
}

@end
