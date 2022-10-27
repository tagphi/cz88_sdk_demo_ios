//
//  ViewController.m
//  CZ88SDKDemo
//
//  Created by 杨倩倩 on 2022/10/27.
//

#import "ViewController.h"
#import <CZ88SDK/CZ88Header.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[CZManager sharedInstance]cz88_readipdetailcompleted:^(CZIPModel * _Nullable result, NSError * _Nullable error) {
        if(!error){
            NSLog(@"成功 ip=>%@ 国家=>%@ 省=>%@ 城市=>%@ 运营商=>%@",result.ip,result.country,result.province,result.city,result.isp);
//            self.ipLab.text = [NSString stringWithFormat:@"ip=>%@ \n国家=>%@ \n省=>%@ \n城市=>%@ \n运营商=>%@",result.ip,result.country,result.province,result.city,result.isp];

        }else{
            NSLog(@"错误%@",error);
//            self.ipLab.text = [NSString stringWithFormat:@"错误%@",error];
        }
    }];
    // Do any additional setup after loading the view.
}


@end
