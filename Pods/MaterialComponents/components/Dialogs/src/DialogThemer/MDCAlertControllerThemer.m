// Copyright 2018-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCAlertControllerThemer.h"

#import "../MDCAlertController+ButtonForAction.h"
#import "MDCAlertColorThemer.h"
#import "MDCAlertTypographyThemer.h"
#import "MaterialButtons+ColorThemer.h"
#import "MaterialButtons+ShapeThemer.h"
#import "MaterialButtons+TypographyThemer.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-implementations"
@implementation MDCAlertControllerThemer
#pragma clang diagnostic pop

+ (void)applyScheme:(nonnull id<MDCAlertScheming>)alertScheme
    toAlertController:(nonnull MDCAlertController *)alertController {
  [MDCAlertColorThemer applySemanticColorScheme:alertScheme.colorScheme
                              toAlertController:alertController];

  [MDCAlertTypographyThemer applyTypographyScheme:alertScheme.typographyScheme
                                toAlertController:alertController];

  alertController.cornerRadius = alertScheme.cornerRadius;
  alertController.elevation = alertScheme.elevation;

  // Apply theming to buttons based on the action emphasis
  for (MDCAlertAction *action in alertController.actions) {
    MDCButton *button = [alertController buttonForAction:action];
    // todo: b/117265609: Incorporate dynamic type support in semantic themers
    switch (action.emphasis) {
      case MDCActionEmphasisHigh:
        [MDCContainedButtonThemer applyScheme:alertScheme.buttonScheme toButton:button];
        break;
      case MDCActionEmphasisMedium:
        [self applyOutlinedScheme:alertScheme.buttonScheme toButton:button];
        break;
      case MDCActionEmphasisLow:  // fallthrough
      default:
        [MDCTextButtonThemer applyScheme:alertScheme.buttonScheme toButton:button];
        break;
    }
  }
}

#pragma mark - Helpers
+ (void)applyOutlinedScheme:(nonnull id<MDCButtonScheming>)scheme
                   toButton:(nonnull MDCButton *)button {
  [MDCOutlinedButtonColorThemer applySemanticColorScheme:scheme.colorScheme toButton:button];
  [MDCButtonShapeThemer applyShapeScheme:scheme.shapeScheme toButton:button];
  [MDCButtonTypographyThemer applyTypographyScheme:scheme.typographyScheme toButton:button];
  button.minimumSize = CGSizeMake(0, scheme.minimumHeight);
  button.layer.cornerRadius = scheme.cornerRadius;

  NSUInteger maximumStateValue = UIControlStateNormal | UIControlStateSelected |
                                 UIControlStateHighlighted | UIControlStateDisabled;
  for (NSUInteger state = 0; state <= maximumStateValue; ++state) {
    [button setBorderWidth:1 forState:state];
  }
}

@end
