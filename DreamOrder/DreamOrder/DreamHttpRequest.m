//
//  DreamHttpRequest.m
//  DreamOrder
//
//  Created by Allan on 15/11/25.
//  Copyright © 2015年 Allan. All rights reserved.
//

#import "DreamHttpRequest.h"

@implementation DreamHttpRequest

+(void)userRegister:(NSString*)userName psw:(NSString*)password{
    
    NSString *urlStr = @"http://dream.zhaoweix.cn/user/login.do";
    NSDictionary *parameter = @{@"userName":userName,@"password":password};
    
    [self post:urlStr parameters:parameter success:^(int code, NSString *message, NSDictionary *data) {
        
    } failure:^(NSError *error) {
        
    }];
    
//    [[AFHTTPRequestOperationManager manager] POST:urlStr parameters:parameter success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
//        
//        NSLog(@"suces=%@",responseObject);
//        
//    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
//        NSLog(@"failure =%@",error);
//    }];
}

+ (void)post:(NSString*)urlStr parameters:(id)parameter success:(void(^)(int code ,NSString *message,NSDictionary *data))sucess failure:(void(^)(NSError*error))failure{
    
    [[AFHTTPRequestOperationManager manager]POST:urlStr parameters:parameter success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        int code = [[responseObject objectForKey:@"success"]intValue];
        NSString *msg = [responseObject objectForKey:@"msg"];
        NSDictionary *data = [responseObject objectForKey:@"data"];
        sucess(code,msg,data);
        
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        NSLog(@"error=%@",error);
        failure(error);
    }];
}
    


@end
