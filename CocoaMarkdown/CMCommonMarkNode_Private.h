//
//  CMCommonMarkNode_Private.h
//  CocoaMarkdown
//
//  Created by Indragie on 1/13/15.
//  Copyright (c) 2015 Indragie Karunaratne. All rights reserved.
//

#import "CMCommonMarkNode.h"

@interface CMCommonMarkNode ()
/**
 *  Designated initializer.
 *
 *  @param node Pointer to the node to wrap.
 *  @param free Whether to free the underlying node when the
 *  receiver is deallocated.
 *
 *  @return An initialized instance of the receiver.
 */
- (instancetype)initWithNode:(cmark_node *)node freeWhenDone:(BOOL)free;

@property (readonly) cmark_node *node;
@end