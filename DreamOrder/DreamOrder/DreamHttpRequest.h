//
//  DreamHttpRequest.h
//  DreamOrder
//
//  Created by Allan on 15/11/25.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface DreamHttpRequest : NSObject

+(void)userRegister:(NSString*)userName psw:(NSString*)password;
@end
