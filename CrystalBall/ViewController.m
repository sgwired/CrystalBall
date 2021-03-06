//
//  ViewController.m
//  CrystalBall
//
//  Created by sg62 on 3/11/13.
//  Copyright (c) 2013 sg62. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize perdictionArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"background.png"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    [self.view addSubview:imageView];
    [self.view insertSubview:imageView atIndex:0];
    
	// Do any additional setup after loading the view, typically from a nib.
    self.perdictionArray = [[NSArray alloc] initWithObjects:@"It is certain", @"It is decidedly so",
                                @"All signs says YES!",
                                @"The stars are not aligned",
                                @"My replay is no",
                                @"It is doubtful",
                                @"Better not tell you now",
                                @"Concentrate and ask again",
                                @"Unable to answer now", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) makePerdiction {
    NSUInteger index = arc4random_uniform(self.perdictionArray.count);
    self.predictionLabel.text = [self.perdictionArray objectAtIndex:index];
}

- (BOOL) canBecomeFirstResponder {
    return YES;
}

-(void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    self.predictionLabel.text = @"";
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"motion cancelled");
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makePerdiction];
    }

}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.predictionLabel.text = @"";
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
 
    [self makePerdiction];
   
}


@end

