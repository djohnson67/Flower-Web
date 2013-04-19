//
//  FWViewController.h
//  FlowerWeb
//
//  Created by Daniel Reid on 3/4/13.
//  Copyright (c) 2013 TitanTV BIM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FWViewController : UIViewController

//outlets
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorChoice;
@property (weak, nonatomic) IBOutlet UIWebView *flowerView;
@property (weak, nonatomic) IBOutlet UIWebView *flowerDetailView;

//actions
- (IBAction)getFlower:(id)sender;
- (IBAction)toggleFlowerDetails:(id)sender;



@end
