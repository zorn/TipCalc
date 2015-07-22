#import <Foundation/Foundation.h>

@interface TipCalc : NSObject

- (NSDecimalNumber *)tipForBill:(NSDecimalNumber *)bill percent:(NSDecimalNumber *)tipPercent;

@end
