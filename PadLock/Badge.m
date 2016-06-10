//
//  Badge.m
//  PadLock
//
//  Created by Srinivas Bodhanampati on 6/9/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Badge.h"

@implementation Badge

-(id)initWithBadgeLevel:(NSString *)level andBadgeImage:(NSString *)badgeImage {
    
    self = [super init];
    
    if (self) {
        _level = level;
        _badgeImage = badgeImage;
    }
    
    return self;
}

@end
