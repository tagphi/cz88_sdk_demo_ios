//
//  CZIPModel.h
//  CZIPSDK
//
//  Created by 杨倩倩 on 2022/10/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CZIPModel : NSObject

@property (nonatomic ,copy) NSString *ip;
@property (nonatomic ,copy) NSString *country;//国家
@property (nonatomic ,copy) NSString *province;//省份
@property (nonatomic ,copy) NSString *city;//城市
@property (nonatomic ,copy) NSString *isp;//运营商

+(instancetype)corpObjectWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
