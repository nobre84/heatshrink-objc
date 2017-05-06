//
//  RNHeatshrinkTests.m
//  heatshrink-objc
//
//  Created by Rafael Nobre on 06/05/17.
//  Copyright © 2017 nobre84. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Expecta/Expecta.h>
#import "RNHeatshrinkEncoder.h"
#import "RNHeatshrinkDecoder.h"

@interface RNHeatshrinkTests : XCTestCase

@end

@implementation RNHeatshrinkTests
    
- (NSData *)loadResource:(NSString *)resource ofType:(NSString *)type {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:resource ofType:type];
    return [NSData dataWithContentsOfFile:path];
}

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testEncodeDecodeCycle {
    // Given
    NSData *testData = [self loadResource:@"encodeDecodeCycleTestContent" ofType:@"txt"];
    RNHeatshrinkEncoder *encoder = [RNHeatshrinkEncoder new];
    
    // When
    NSData *encodedData = [encoder encodeData: testData];
    
    // Then
    expect(testData).notTo.beNil();
    expect(encodedData.length).to.beGreaterThan(0);
    expect(encodedData.length).to.beLessThan(testData.length);
    
    // When
    RNHeatshrinkDecoder *decoder = [RNHeatshrinkDecoder new];
    NSData *decodedData = [decoder decodeData:encodedData];
    
    // Then
    expect(decodedData.length).to.beGreaterThan(0);
    expect(decodedData).to.equal(testData);
}

@end
