//
//  DSRectangle.h
//  Pods
//
//  Created by Lorinc Kovacs on 2023. 12. 05..
//
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <Vision/Vision.h>

@interface DSRectangle : NSObject

@property (nonatomic, assign) CGPoint topLeft;
@property (nonatomic, assign) CGPoint topRight;
@property (nonatomic, assign) CGPoint bottomLeft;
@property (nonatomic, assign) CGPoint bottomRight;
@property (nonatomic, assign) CGRect boundingBox;

- (instancetype)initWithPoints:(CGPoint)topLeft topRight:(CGPoint)topRight bottomLeft:(CGPoint)bottomLeft bottomRight:(CGPoint)bottomRight boundingBox:(CGRect)boundingBox;
- (instancetype)initWithVNRectangle:(VNRectangleObservation *)rectangle width:(int)width height:(int)height;
- (instancetype)initWithCIRectangle:(CIRectangleFeature *)rectangle;

@end
