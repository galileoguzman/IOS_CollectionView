//
//  ViewController.h
//  Collection
//
//  Created by Galileo Guzman on 21/12/15.
//  Copyright © 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) IBOutlet UICollectionView *collecOne;
@property (strong, nonatomic) IBOutlet UICollectionView *collecTwo;
@property (strong, nonatomic) IBOutlet UICollectionView *collectThree;

@property (strong, nonatomic) NSArray *names;
@property (strong, nonatomic) NSArray *images;

@property (strong, nonatomic) NSArray *namesTwo;

@property (strong, nonatomic) NSArray *namesThree;

@end

