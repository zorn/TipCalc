#import "TipCalc.h"

@implementation TipCalc

- (NSDecimalNumber *)tipForBill:(NSDecimalNumber *)bill percent:(NSDecimalNumber *)tipPercent
{
    return [bill decimalNumberByMultiplyingBy:tipPercent];
}

@end
