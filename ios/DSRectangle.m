//
//  DSRectangle.m
//  react-native-document-scanner
//
//  Created by Lorinc Kovacs on 2023. 12. 05..
//
#import "DSRectangle.h"
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <Vision/Vision.h>

@implementation DSRectangle

- (instancetype)initWithPoints:(CGPoint)topLeft topRight:(CGPoint)topRight bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight boundingBox:(CGRect)boundingBox {
    self = [super init];
    if (self) {
        _topLeft = topLeft;
        _topRight = topRight;
        _bottomLeft = bottomLeft;
        _bottomRight = bottomRight;
        _boundingBox = boundingBox;
    }
    return self;
}

- (instancetype)initWithVNRectangle:(VNRectangleObservation *)rectangle width:(int)width height:(int)height {
    self = [super init];
    if (self) {
        _boundingBox = VNImageRectForNormalizedRect(rectangle.boundingBox, width, height);
        _topLeft = VNImagePointForNormalizedPoint(rectangle.topLeft, width, height);
        _topRight = VNImagePointForNormalizedPoint(rectangle.topRight, width, height);
        _bottomLeft = VNImagePointForNormalizedPoint(rectangle.bottomLeft, width, height);
        _bottomRight = VNImagePointForNormalizedPoint(rectangle.bottomRight, width, height);
    }
    return self;
}

- (instancetype)initWithCIRectangle:(CIRectangleFeature *)rectangle {
    self = [super init];
    if (self) {
        _boundingBox = rectangle.bounds;
        _topLeft = rectangle.topLeft;
        _topRight = rectangle.topRight;
        _bottomLeft = rectangle.bottomLeft;
        _bottomRight = rectangle.bottomRight;
    }
    return self;
}
@end
