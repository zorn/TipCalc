#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "TipCalc.h"

@interface TipCalcTests : XCTestCase
@property (strong) TipCalc *sharedTipCalc;
@end

@implementation TipCalcTests

- (void)setUp {
    [super setUp];
    self.sharedTipCalc = [[TipCalc alloc] init];
}

- (void)tearDown {
    self.sharedTipCalc = nil;
    [super tearDown];
}

- (void)test10PercentTipOn50Bill {
    NSDecimalNumber *tipPercent = [NSDecimalNumber decimalNumberWithString:@"0.10"];
    NSDecimalNumber *bill = [NSDecimalNumber decimalNumberWithString:@"50"];
    NSDecimalNumber *expectedTip = [NSDecimalNumber decimalNumberWithString:@"5"];
    NSDecimalNumber *actualTip = [self.sharedTipCalc tipForBill:bill percent:tipPercent];
    XCTAssertEqualObjects(actualTip, expectedTip);
}

@end
