//
//  deslizaVista.m
//  CointanerMenu
//
//  Created by iTwinber on 14/02/14.
//  Copyright (c) 2014 Daniel Aguilera. All rights reserved.
//

#import "AnimacionAutoLayout.h"

@interface AnimacionAutoLayout()

@end

@implementation AnimacionAutoLayout

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)desliza:(id)sender {
    // Provacamos que se deslice hacia la derecha 50px
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        _vistaConstraintDerecho.constant = -50;
        _vistaConstraintIzquierdo.constant = 50;
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL ok){
        if (ok) {
            // Lo devolvemos a su sitio
            [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                _vistaConstraintDerecho.constant = 0;
                _vistaConstraintIzquierdo.constant = 0;
                [self.view layoutIfNeeded];
            } completion:nil];
        }
        
    }];
    
}

- (IBAction)escala:(id)sender {
    // Provacamos que se agrande 50 px por cada lado
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        _vistaConstraintDerecho.constant = -50;
        _vistaConstraintIzquierdo.constant = -50;
        _vistaConstraintInferior.constant = -50;
        _vistaConstraintSuperior.constant = -50;
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL ok){
        if (ok) {
            // Lo devolvemos a su sitio
            [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
                _vistaConstraintDerecho.constant = 0;
                _vistaConstraintIzquierdo.constant = 0;
                _vistaConstraintInferior.constant = 0;
                _vistaConstraintSuperior.constant = 0;
                [self.view layoutIfNeeded];
            } completion:nil];
        }
        
    }];
    
}

- (IBAction)desplaza:(id)sender {
    // Provacamos que un movimiento en varias direcciones cada 0.2 segundos
    // Hacia la izquierda
    [UIView animateWithDuration:0.2
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         _vistaConstraintDerecho.constant = 50;
                         _vistaConstraintIzquierdo.constant = -50;
                         _vistaConstraintInferior.constant = 50;
                         _vistaConstraintSuperior.constant = -50;
                         [self.view layoutIfNeeded];
                         
                     } completion:^(BOOL ok){
                         if (ok) {
                             // Hacia arriba
                             [UIView animateWithDuration:0.2
                                                   delay:0.5
                                                 options:UIViewAnimationOptionCurveEaseIn
                                              animations:^{
                                                  
                                                  _vistaConstraintDerecho.constant = -50;
                                                  _vistaConstraintIzquierdo.constant = 50;
                                                  [self.view layoutIfNeeded];
                                                  
                                              } completion:^(BOOL ok){
                                                  if (ok) {
                                                      // Hacia la derecha
                                                      [UIView animateWithDuration:0.2
                                                                            delay:0.5
                                                                          options:UIViewAnimationOptionCurveEaseIn
                                                                       animations:^{
                                                                           
                                                                           _vistaConstraintDerecho.constant = 0;
                                                                           _vistaConstraintIzquierdo.constant = 0;
                                                                           _vistaConstraintInferior.constant = 0;
                                                                           _vistaConstraintSuperior.constant = 0;
                                                                           [self.view layoutIfNeeded];
                                                                           
                                                                       } completion:nil];
                                                  }
                                                  
                                              }];
                         }
                         
                     }];
}
@end
