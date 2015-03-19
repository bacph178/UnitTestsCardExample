//
//  CardTestCase.m
//  UnitTestsCardExample
//
//  Created by Stephan B Wessels on 1/23/14.
//  Copyright (c) 2014 Plum Street Software. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Card.h"

@interface CardTestCase : XCTestCase

@end

@implementation CardTestCase

- (void)setUp
{
    [super setUp];
//    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)tearDown
{
//    NSLog(@"%s", __PRETTY_FUNCTION__);
    [super tearDown];
}

- (void)test1 {
    Card* c1 = [[Card alloc] init];
    c1.rank = 1;
    c1.level = 2;
    Card* c2 = [[Card alloc] init];
    c2.rank = 3;
    c2.level = 1;
    int result = [c2 match:c1];
    XCTAssertEqual(result, 1, @"match");
}

- (void)test2 {
    Card* c1 = [[Card alloc] init];
    c1.rank = 0;
    c1.level = 2;
    Card* c2 = [[Card alloc] init];
    c2.rank = 3;
    c2.level = 1;
    int result = [c2 match:c1];
    XCTAssertEqual(result, 2, @"match");
}

- (void)test3 {
    Card* c1 = [[Card alloc] init];
    c1.rank = 1;
    c1.level = 0;
    Card* c2 = [[Card alloc] init];
    c2.rank = 0;
    c2.level = 1;
    int result = [c2 match:c1];
    XCTAssertEqual(result, 2, @"match");
}

- (void)test4 {
    Card* c1 = [[Card alloc] init];
    c1.rank = 1;
    c1.level = 2;
    Card* c2 = [[Card alloc] init];
    c2.rank = 3;
    c2.level = 0;
    int result = [c2 match:c1];
    XCTAssertEqual(result, 2, @"match");
}

@end
