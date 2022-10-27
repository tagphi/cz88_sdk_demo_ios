//
//  CZIPModel.h
//  CZIPSDK
//
//  Created by 杨倩倩 on 2022/10/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CZIPModel : NSObject

@property (nonatomic ,copy) NSString *ip;//IP地址
@property (nonatomic ,copy) NSString *country;//IP地址归属国家
@property (nonatomic ,copy) NSString *province;//IP地址归属省份
@property (nonatomic ,copy) NSString *city;//IP地址归属城市
@property (nonatomic ,copy) NSString *districts;//IP地址归属区域
@property (nonatomic ,copy) NSString *isp;//IP地址所属运营商

+(instancetype)corpObjectWithDic:(NSDictionary *)dic;

@end

NS_ASSUME_NONNULL_END
