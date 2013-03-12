//
//  ViewController.h
//  CrystalBall
//
//  Created by sg62 on 3/11/13.
//  Copyright (c) 2013 sg62. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

}
- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *perdictionArray;

@end
