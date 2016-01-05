//
//  JCRequestObj.m
//  JCNetwork
//
//  Created by Jam on 14-7-14.
//  Copyright (c) 2014年 Jam. All rights reserved.
//

#import "JCRequestObj.h"

@implementation JCRequestObj

@synthesize hostName = _hostName;
@synthesize path = _path;

- (id)init {
    self = [super init];
    
    if (self) {
        self.parameterType = JCNetworkParameterTypeURL;
    }
    return self;
}

@end
