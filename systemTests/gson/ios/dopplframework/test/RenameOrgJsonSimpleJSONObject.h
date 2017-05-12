//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_RenameOrgJsonSimpleJSONObject")
#ifdef RESTRICT_RenameOrgJsonSimpleJSONObject
#define INCLUDE_ALL_RenameOrgJsonSimpleJSONObject 0
#else
#define INCLUDE_ALL_RenameOrgJsonSimpleJSONObject 1
#endif
#undef RESTRICT_RenameOrgJsonSimpleJSONObject

#if !defined (RenameOrgJsonSimpleJSONObject_) && (INCLUDE_ALL_RenameOrgJsonSimpleJSONObject || defined(INCLUDE_RenameOrgJsonSimpleJSONObject))
#define RenameOrgJsonSimpleJSONObject_

#define RESTRICT_JavaUtilHashMap 1
#define INCLUDE_JavaUtilHashMap 1
#include "java/util/HashMap.h"

#define RESTRICT_JavaUtilMap 1
#define INCLUDE_JavaUtilMap 1
#include "java/util/Map.h"

#define RESTRICT_RenameOrgJsonSimpleJSONAware 1
#define INCLUDE_RenameOrgJsonSimpleJSONAware 1
#include "RenameOrgJsonSimpleJSONAware.h"

#define RESTRICT_RenameOrgJsonSimpleJSONStreamAware 1
#define INCLUDE_RenameOrgJsonSimpleJSONStreamAware 1
#include "RenameOrgJsonSimpleJSONStreamAware.h"

@class JavaIoWriter;

@interface RenameOrgJsonSimpleJSONObject : JavaUtilHashMap < JavaUtilMap, RenameOrgJsonSimpleJSONAware, RenameOrgJsonSimpleJSONStreamAware >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)map;

+ (NSString *)escapeWithNSString:(NSString *)s;

- (NSString *)toJSONString;

+ (NSString *)toJSONStringWithJavaUtilMap:(id<JavaUtilMap>)map;

- (NSString *)description;

+ (NSString *)toStringWithNSString:(NSString *)key
                            withId:(id)value;

+ (void)writeJSONStringWithJavaUtilMap:(id<JavaUtilMap>)map
                      withJavaIoWriter:(JavaIoWriter *)outArg;

- (void)writeJSONStringWithJavaIoWriter:(JavaIoWriter *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(RenameOrgJsonSimpleJSONObject)

FOUNDATION_EXPORT void RenameOrgJsonSimpleJSONObject_init(RenameOrgJsonSimpleJSONObject *self);

FOUNDATION_EXPORT RenameOrgJsonSimpleJSONObject *new_RenameOrgJsonSimpleJSONObject_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RenameOrgJsonSimpleJSONObject *create_RenameOrgJsonSimpleJSONObject_init();

FOUNDATION_EXPORT void RenameOrgJsonSimpleJSONObject_initWithJavaUtilMap_(RenameOrgJsonSimpleJSONObject *self, id<JavaUtilMap> map);

FOUNDATION_EXPORT RenameOrgJsonSimpleJSONObject *new_RenameOrgJsonSimpleJSONObject_initWithJavaUtilMap_(id<JavaUtilMap> map) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RenameOrgJsonSimpleJSONObject *create_RenameOrgJsonSimpleJSONObject_initWithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT void RenameOrgJsonSimpleJSONObject_writeJSONStringWithJavaUtilMap_withJavaIoWriter_(id<JavaUtilMap> map, JavaIoWriter *outArg);

FOUNDATION_EXPORT NSString *RenameOrgJsonSimpleJSONObject_toJSONStringWithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT NSString *RenameOrgJsonSimpleJSONObject_toStringWithNSString_withId_(NSString *key, id value);

FOUNDATION_EXPORT NSString *RenameOrgJsonSimpleJSONObject_escapeWithNSString_(NSString *s);

J2OBJC_TYPE_LITERAL_HEADER(RenameOrgJsonSimpleJSONObject)

#endif

#pragma pop_macro("INCLUDE_ALL_RenameOrgJsonSimpleJSONObject")