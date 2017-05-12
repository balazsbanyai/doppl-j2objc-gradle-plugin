//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidDatabaseCursor")
#ifdef RESTRICT_AndroidDatabaseCursor
#define INCLUDE_ALL_AndroidDatabaseCursor 0
#else
#define INCLUDE_ALL_AndroidDatabaseCursor 1
#endif
#undef RESTRICT_AndroidDatabaseCursor

#if !defined (AndroidDatabaseCursor_) && (INCLUDE_ALL_AndroidDatabaseCursor || defined(INCLUDE_AndroidDatabaseCursor))
#define AndroidDatabaseCursor_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class AndroidDatabaseCharArrayBuffer;
@class AndroidDatabaseDataSetObserver;
@class AndroidOsBundle;
@class IOSByteArray;
@class IOSObjectArray;

@protocol AndroidDatabaseCursor < JavaIoCloseable, JavaObject >

- (jint)getCount;

- (jint)getPosition;

- (jboolean)moveWithInt:(jint)offset;

- (jboolean)moveToPositionWithInt:(jint)position;

- (jboolean)moveToFirst;

- (jboolean)moveToLast;

- (jboolean)moveToNext;

- (jboolean)moveToPrevious;

- (jboolean)isFirst;

- (jboolean)isLast;

- (jboolean)isBeforeFirst;

- (jboolean)isAfterLast;

- (jint)getColumnIndexWithNSString:(NSString *)columnName;

- (jint)getColumnIndexOrThrowWithNSString:(NSString *)columnName;

- (NSString *)getColumnNameWithInt:(jint)columnIndex;

- (IOSObjectArray *)getColumnNames;

- (jint)getColumnCount;

- (IOSByteArray *)getBlobWithInt:(jint)columnIndex;

- (NSString *)getStringWithInt:(jint)columnIndex;

- (void)copyStringToBufferWithInt:(jint)columnIndex
withAndroidDatabaseCharArrayBuffer:(AndroidDatabaseCharArrayBuffer *)buffer OBJC_METHOD_FAMILY_NONE;

- (jshort)getShortWithInt:(jint)columnIndex;

- (jint)getIntWithInt:(jint)columnIndex;

- (jlong)getLongWithInt:(jint)columnIndex;

- (jfloat)getFloatWithInt:(jint)columnIndex;

- (jdouble)getDoubleWithInt:(jint)columnIndex;

- (jint)getTypeWithInt:(jint)columnIndex;

- (jboolean)isNullWithInt:(jint)columnIndex;

- (void)deactivate;

- (jboolean)requery;

- (void)close;

- (jboolean)isClosed;

- (void)registerDataSetObserverWithAndroidDatabaseDataSetObserver:(AndroidDatabaseDataSetObserver *)observer;

- (void)unregisterDataSetObserverWithAndroidDatabaseDataSetObserver:(AndroidDatabaseDataSetObserver *)observer;

- (jboolean)getWantsAllOnMoveCalls;

- (AndroidOsBundle *)getExtras;

- (AndroidOsBundle *)respondWithAndroidOsBundle:(AndroidOsBundle *)extras;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseCursor)

inline jint AndroidDatabaseCursor_get_FIELD_TYPE_NULL();
#define AndroidDatabaseCursor_FIELD_TYPE_NULL 0
J2OBJC_STATIC_FIELD_CONSTANT(AndroidDatabaseCursor, FIELD_TYPE_NULL, jint)

inline jint AndroidDatabaseCursor_get_FIELD_TYPE_INTEGER();
#define AndroidDatabaseCursor_FIELD_TYPE_INTEGER 1
J2OBJC_STATIC_FIELD_CONSTANT(AndroidDatabaseCursor, FIELD_TYPE_INTEGER, jint)

inline jint AndroidDatabaseCursor_get_FIELD_TYPE_FLOAT();
#define AndroidDatabaseCursor_FIELD_TYPE_FLOAT 2
J2OBJC_STATIC_FIELD_CONSTANT(AndroidDatabaseCursor, FIELD_TYPE_FLOAT, jint)

inline jint AndroidDatabaseCursor_get_FIELD_TYPE_STRING();
#define AndroidDatabaseCursor_FIELD_TYPE_STRING 3
J2OBJC_STATIC_FIELD_CONSTANT(AndroidDatabaseCursor, FIELD_TYPE_STRING, jint)

inline jint AndroidDatabaseCursor_get_FIELD_TYPE_BLOB();
#define AndroidDatabaseCursor_FIELD_TYPE_BLOB 4
J2OBJC_STATIC_FIELD_CONSTANT(AndroidDatabaseCursor, FIELD_TYPE_BLOB, jint)

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseCursor)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidDatabaseCursor")