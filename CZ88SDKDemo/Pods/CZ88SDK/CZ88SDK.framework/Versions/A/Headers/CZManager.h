//
//  CZManager.h
//  CZIPSDK
//
//  Created by 杨倩倩 on 2022/10/12.
//

#import <Foundation/Foundation.h>

@class CZIPModel;
typedef void(^CZCompletionBlock)(CZIPModel * _Nullable result, NSError * _Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface CZManager : NSObject

//@property (nonatomic,assign)BOOL isLog;

+(CZManager *)sharedInstance;

//注册appKey
-(void)registerCZ88Key:(NSString *)key;

//是否打印内部sdk的log
- (void)setLogEnabled:(BOOL)bFlag;

//读取当前ip的详情
- (void)cz88_readipdetailcompleted:(CZCompletionBlock)completedBlock;


@end

NS_ASSUME_NONNULL_END
