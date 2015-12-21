# IOS_CollectionView


Sample project to learn functionallity of UICollectionView. The follow steps you have to do for create a IOS app with two collection view on main view (window).


#### Create project

After create project you should add two collection view to ViewController default added by XCode. Add collection view from "Object Library".

### Add ViewCells

The collection view added have a default "CollectionViewCell", keep it. Add the elements you want like a Label, UIImage, etc.

### Add UICollectionViewCell class

Add "New File" from class UICollectionViewCell. Created already, you have to add the outlets property of the elements added by you on last step. Repeat this for the other CollectionView/CollectionViewCell.

### Adding "Tag" for identify

Now, you are ready, but before to coding, you need add something else, a tag nomber to each Collection View. Make click on Collection View Object and go to Show Inspector Properties, search Tag property and set a easy number to remember. Repeat this for each CollectionView Added.

### On file dot H

Add the following lines as Delegates:

    <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

Add CollectionView Objects as outlets:

    @property (strong, nonatomic) IBOutlet UICollectionView *collecOne;
    @property (strong, nonatomic) IBOutlet UICollectionView *collecTwo;

Add Delegates to objects from storyboard on "Inspector Connections". Make sure have did. Now it's time to code. On file dot M add the following lines.

    #pragma mark UICollectionViewDataSource

    -(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
    {
        return 1;
    }
    
    -(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
    {
        if (collectionView.tag == 1) // Do you remember the number tag?
        {
            return _names.count;
        }else if(collectionView.tag == 2) // Do you remember the other number tag added?
        {
            return _namesTwo.count;
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
    
        return nil;
    }


