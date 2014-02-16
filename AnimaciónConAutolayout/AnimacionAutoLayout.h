//
//  deslizaVista.h
//  CointanerMenu
//
//  Created by iTwinber on 14/02/14.
//  Copyright (c) 2014 Daniel Aguilera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimacionAutoLayout : UIViewController
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *vistaConstraintIzquierdo;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *vistaConstraintDerecho;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *vistaConstraintInferior;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *vistaConstraintSuperior;

- (IBAction)desliza:(id)sender;
- (IBAction)escala:(id)sender;
- (IBAction)desplaza:(id)sender;

@end
