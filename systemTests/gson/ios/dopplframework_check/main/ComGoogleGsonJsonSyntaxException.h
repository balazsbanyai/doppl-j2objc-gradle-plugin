//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleGsonJsonSyntaxException")
#ifdef RESTRICT_ComGoogleGsonJsonSyntaxException
#define INCLUDE_ALL_ComGoogleGsonJsonSyntaxException 0
#else
#define INCLUDE_ALL_ComGoogleGsonJsonSyntaxException 1
#endif
#undef RESTRICT_ComGoogleGsonJsonSyntaxException

#if !defined (ComGoogleGsonJsonSyntaxException_) && (INCLUDE_ALL_ComGoogleGsonJsonSyntaxException || defined(INCLUDE_ComGoogleGsonJsonSyntaxException))
#define ComGoogleGsonJsonSyntaxException_

#define RESTRICT_ComGoogleGsonJsonParseException 1
#define INCLUDE_ComGoogleGsonJsonParseException 1
#include "ComGoogleGsonJsonParseException.h"

@interface ComGoogleGsonJsonSyntaxException : ComGoogleGsonJsonParseException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)msg;

- (instancetype)initWithNSString:(NSString *)msg
                 withNSException:(NSException *)cause;

- (instancetype)initWithNSException:(NSException *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonJsonSyntaxException)

FOUNDATION_EXPORT void ComGoogleGsonJsonSyntaxException_initWithNSString_(ComGoogleGsonJsonSyntaxException *self, NSString *msg);

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSString_(NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *create_ComGoogleGsonJsonSyntaxException_initWithNSString_(NSString *msg);

FOUNDATION_EXPORT void ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(ComGoogleGsonJsonSyntaxException *self, NSString *msg, NSException *cause);

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(NSString *msg, NSException *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *create_ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(NSString *msg, NSException *cause);

FOUNDATION_EXPORT void ComGoogleGsonJsonSyntaxException_initWithNSException_(ComGoogleGsonJsonSyntaxException *self, NSException *cause);

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSException_(NSException *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonSyntaxException *create_ComGoogleGsonJsonSyntaxException_initWithNSException_(NSException *cause);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonSyntaxException)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleGsonJsonSyntaxException")