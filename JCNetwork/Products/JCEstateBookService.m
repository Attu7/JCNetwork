//
//  JCEstateBookService.m
//  JCNetwork
//
//  Created by Jam on 13-6-25.
//  Copyright (c) 2013年 Jam. All rights reserved.
//

#import "JCEstateBookService.h"

@implementation JCEstateBookService

- (id)init
{
    self = [super init];
    
    if (self) {
            _serviceID = JCEstateBookServiceID;
            _apiName = @"i-estatebook";
            _apiVersion = @"1.0";
            
#ifdef DEBUG
        _hostName = @"dcs.zhaofangtong.com";
        _path = @"AppDataAccess/";
#else
            _hostName = @"dcs.zhaofangtong.com";
            _path = @"AppDataAccess/";
#endif
            NSArray *apiList = [NSArray arrayWithObjects:
                                @"AppGetSubscriberNewsCategory.aspx",
                                @"iosAppNews.aspx",
                                nil];
            
            _methodDict = [[NSMutableDictionary alloc] initWithCapacity:[apiList count]];
            for (id method in apiList) {
                NSString *methodStr = (NSString *)method;
                [_methodDict setValue:[NSString stringWithFormat:@"/%@", method] forKey:methodStr];
            }
        }
        
    return self;
}

- (NSString *)buildPathWithMethod:(NSString *)methodName
{
    return [_path stringByAppendingFormat:@"%@", methodName];
}

@end
