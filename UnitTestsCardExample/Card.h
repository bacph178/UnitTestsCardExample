//
//  Card.h
//  UnitTestsCardExample
//
//  Created by Stephan B Wessels on 1/23/14.
//  Copyright (c) 2014 Plum Street Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property int level;
@property int rank;


- (int)match:(Card *)otherCard;

@end
