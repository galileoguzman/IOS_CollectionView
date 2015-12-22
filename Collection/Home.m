//
//  ViewController.m
//  Collection
//
//  Created by Galileo Guzman on 21/12/15.
//  Copyright © 2015 Galileo Guzman. All rights reserved.
//

#import "Home.h"
#import "cellOne.h"
#import "cellTwo.h"
#import "cellThree.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _names = @[@"Galileo",@"Carlitros", @"lilianita", @"Ivancito", @"beba", @"Alexis", @"Shantal"];
    _images = @[@"marvel-2.png",@"marvel-3.png", @"marvel-4.png", @"marvel-5.png", @"marvel-6.png",@"marvel-8.png", @"marvel-9.png"];
    
    _namesTwo = @[@"Galileo",@"Augusto", @"Osvaldo", @"Leonel", @"José Manuel", @"Ricardo", @"Jesus", @"Marquitos"];
    
    _namesThree = @[@"Chocolate",@"Tlayudas", @"Chapulines", @"Champurrado", @"Memelitas"];
    
    
    // register nib for collection three
    [self.collectThree registerNib:[UINib nibWithNibName:@"cellThree" bundle:[NSBundle mainBundle]]
        forCellWithReuseIdentifier:@"cellThree"];
    
    
    // flow layout for first collection view
    self.flowLayoutOne = [[UICollectionViewFlowLayout alloc] init];
    [self.flowLayoutOne setItemSize:CGSizeMake(126, 91)];
    [self.flowLayoutOne setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    self.flowLayoutOne.minimumInteritemSpacing = 0.0f;
    [self.collecOne setCollectionViewLayout:self.flowLayoutOne];
    self.collecOne.bounces = YES;
    [self.collecOne setShowsHorizontalScrollIndicator:NO];
    [self.collecOne setShowsVerticalScrollIndicator:NO];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - FlowLayout Delegates
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 0, 0, 0);
}


#pragma mark UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView.tag == 1)
    {
        return _names.count;
    }else if(collectionView.tag == 2)
    {
        return _namesTwo.count;
    }
    else if(collectionView.tag == 3)
    {
        return _namesThree.count;
    }
    
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (collectionView.tag == 1) {
        cellOne *myCell = [collectionView
                           dequeueReusableCellWithReuseIdentifier:@"cellOne"
                           forIndexPath:indexPath];
        
        
        myCell.imgHero.image = [UIImage imageNamed:_images[indexPath.row]];
        myCell.lblName.text = _names[indexPath.row];
        return myCell;
    } else if(collectionView.tag == 2){
        cellTwo *myCell = [collectionView
                           dequeueReusableCellWithReuseIdentifier:@"cellTwo"
                           forIndexPath:indexPath];
        
        myCell.lblName.text =  _namesTwo[indexPath.row];
        
        return myCell;
    }
    else if(collectionView.tag == 3){
        cellThree *myCell = [collectionView
                           dequeueReusableCellWithReuseIdentifier:@"cellThree"
                           forIndexPath:indexPath];
        
        myCell.lblName.text =  _namesThree[indexPath.row];
        
        return myCell;
    }

    return nil;
}



@end
