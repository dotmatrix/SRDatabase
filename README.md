SRDatabase
==========

Expanded NSUserDefaults

More specific permanent saving for iOS and Mac OS X.

Example:

#import "SRDatabase.h"

- (void) viewDidLoad
{
    NSString *string = [[SRDatabase sharedDatabase] stringForKey:@"key"];
    float number = [[[SRDatabase sharedDatabase] numberForKey:@"anotherKey"] floatValue];

    //Non foundation object calling
    
    CCSprite *sprite = [[SRDatabase sharedDatabase] objectForKey:@"sprite"];
}
