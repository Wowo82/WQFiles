//
//  WQLocalize.h
//  WQ Files
//  Simplified Chinese text for the interface.
//  GPL-3.0-or-later.
//

#import <Foundation/Foundation.h>

// The Simplified Chinese text for `english`, or `english` itself when the
// device's preferred language is not Chinese or the string has no translation
// yet. English stays the source of truth: the keys are the literals used in
// the sources, so an edited English string simply falls back to English.
NSString *wq_text(NSString *english);
