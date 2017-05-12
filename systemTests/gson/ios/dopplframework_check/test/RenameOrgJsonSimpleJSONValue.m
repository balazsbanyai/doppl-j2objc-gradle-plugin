//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "RenameOrgJsonSimpleJSONArray.h"
#include "RenameOrgJsonSimpleJSONAware.h"
#include "RenameOrgJsonSimpleJSONObject.h"
#include "RenameOrgJsonSimpleJSONStreamAware.h"
#include "RenameOrgJsonSimpleJSONValue.h"
#include "RenameOrgJsonSimpleParserJSONParser.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/io/StringReader.h"
#include "java/io/StringWriter.h"
#include "java/io/Writer.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuffer.h"
#include "java/util/Collection.h"
#include "java/util/Map.h"

@implementation RenameOrgJsonSimpleJSONValue

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RenameOrgJsonSimpleJSONValue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id)parseWithJavaIoReader:(JavaIoReader *)inArg {
  return RenameOrgJsonSimpleJSONValue_parseWithJavaIoReader_(inArg);
}

+ (id)parseWithNSString:(NSString *)s {
  return RenameOrgJsonSimpleJSONValue_parseWithNSString_(s);
}

+ (id)parseWithExceptionWithJavaIoReader:(JavaIoReader *)inArg {
  return RenameOrgJsonSimpleJSONValue_parseWithExceptionWithJavaIoReader_(inArg);
}

+ (id)parseWithExceptionWithNSString:(NSString *)s {
  return RenameOrgJsonSimpleJSONValue_parseWithExceptionWithNSString_(s);
}

+ (void)writeJSONStringWithId:(id)value
             withJavaIoWriter:(JavaIoWriter *)outArg {
  RenameOrgJsonSimpleJSONValue_writeJSONStringWithId_withJavaIoWriter_(value, outArg);
}

+ (NSString *)toJSONStringWithId:(id)value {
  return RenameOrgJsonSimpleJSONValue_toJSONStringWithId_(value);
}

+ (NSString *)escapeWithNSString:(NSString *)s {
  return RenameOrgJsonSimpleJSONValue_escapeWithNSString_(s);
}

+ (void)escapeWithNSString:(NSString *)s
  withJavaLangStringBuffer:(JavaLangStringBuffer *)sb {
  RenameOrgJsonSimpleJSONValue_escapeWithNSString_withJavaLangStringBuffer_(s, sb);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 3, 1, 4, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 3, 2, 5, -1, -1, -1 },
    { NULL, "V", 0x9, 6, 7, 8, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 9, 10, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 11, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x8, 11, 12, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(parseWithJavaIoReader:);
  methods[2].selector = @selector(parseWithNSString:);
  methods[3].selector = @selector(parseWithExceptionWithJavaIoReader:);
  methods[4].selector = @selector(parseWithExceptionWithNSString:);
  methods[5].selector = @selector(writeJSONStringWithId:withJavaIoWriter:);
  methods[6].selector = @selector(toJSONStringWithId:);
  methods[7].selector = @selector(escapeWithNSString:);
  methods[8].selector = @selector(escapeWithNSString:withJavaLangStringBuffer:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "parse", "LJavaIoReader;", "LNSString;", "parseWithException", "LJavaIoIOException;LRenameOrgJsonSimpleParserParseException;", "LRenameOrgJsonSimpleParserParseException;", "writeJSONString", "LNSObject;LJavaIoWriter;", "LJavaIoIOException;", "toJSONString", "LNSObject;", "escape", "LNSString;LJavaLangStringBuffer;" };
  static const J2ObjcClassInfo _RenameOrgJsonSimpleJSONValue = { "JSONValue", "rename.org.json.simple", ptrTable, methods, NULL, 7, 0x1, 9, 0, -1, -1, -1, -1, -1 };
  return &_RenameOrgJsonSimpleJSONValue;
}

@end

void RenameOrgJsonSimpleJSONValue_init(RenameOrgJsonSimpleJSONValue *self) {
  NSObject_init(self);
}

RenameOrgJsonSimpleJSONValue *new_RenameOrgJsonSimpleJSONValue_init() {
  J2OBJC_NEW_IMPL(RenameOrgJsonSimpleJSONValue, init)
}

RenameOrgJsonSimpleJSONValue *create_RenameOrgJsonSimpleJSONValue_init() {
  J2OBJC_CREATE_IMPL(RenameOrgJsonSimpleJSONValue, init)
}

id RenameOrgJsonSimpleJSONValue_parseWithJavaIoReader_(JavaIoReader *inArg) {
  RenameOrgJsonSimpleJSONValue_initialize();
  @try {
    RenameOrgJsonSimpleParserJSONParser *parser = create_RenameOrgJsonSimpleParserJSONParser_init();
    return [parser parseWithJavaIoReader:inArg];
  }
  @catch (JavaLangException *e) {
    return nil;
  }
}

id RenameOrgJsonSimpleJSONValue_parseWithNSString_(NSString *s) {
  RenameOrgJsonSimpleJSONValue_initialize();
  JavaIoStringReader *in = create_JavaIoStringReader_initWithNSString_(s);
  return RenameOrgJsonSimpleJSONValue_parseWithJavaIoReader_(in);
}

id RenameOrgJsonSimpleJSONValue_parseWithExceptionWithJavaIoReader_(JavaIoReader *inArg) {
  RenameOrgJsonSimpleJSONValue_initialize();
  RenameOrgJsonSimpleParserJSONParser *parser = create_RenameOrgJsonSimpleParserJSONParser_init();
  return [parser parseWithJavaIoReader:inArg];
}

id RenameOrgJsonSimpleJSONValue_parseWithExceptionWithNSString_(NSString *s) {
  RenameOrgJsonSimpleJSONValue_initialize();
  RenameOrgJsonSimpleParserJSONParser *parser = create_RenameOrgJsonSimpleParserJSONParser_init();
  return [parser parseWithNSString:s];
}

void RenameOrgJsonSimpleJSONValue_writeJSONStringWithId_withJavaIoWriter_(id value, JavaIoWriter *outArg) {
  RenameOrgJsonSimpleJSONValue_initialize();
  if (value == nil) {
    [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:@"null"];
    return;
  }
  if ([value isKindOfClass:[NSString class]]) {
    [((JavaIoWriter *) nil_chk(outArg)) writeWithInt:'"'];
    [outArg writeWithNSString:RenameOrgJsonSimpleJSONValue_escapeWithNSString_((NSString *) cast_chk(value, [NSString class]))];
    [outArg writeWithInt:'"'];
    return;
  }
  if ([value isKindOfClass:[JavaLangDouble class]]) {
    if ([((JavaLangDouble *) cast_chk(value, [JavaLangDouble class])) isInfinite] || [((JavaLangDouble *) cast_chk(value, [JavaLangDouble class])) isNaN]) [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:@"null"];
    else [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:[value description]];
    return;
  }
  if ([value isKindOfClass:[JavaLangFloat class]]) {
    if ([((JavaLangFloat *) cast_chk(value, [JavaLangFloat class])) isInfinite] || [((JavaLangFloat *) cast_chk(value, [JavaLangFloat class])) isNaN]) [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:@"null"];
    else [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:[value description]];
    return;
  }
  if ([value isKindOfClass:[NSNumber class]]) {
    [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:[value description]];
    return;
  }
  if ([value isKindOfClass:[JavaLangBoolean class]]) {
    [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:[value description]];
    return;
  }
  if (([RenameOrgJsonSimpleJSONStreamAware_class_() isInstance:value])) {
    [((id<RenameOrgJsonSimpleJSONStreamAware>) cast_check(value, RenameOrgJsonSimpleJSONStreamAware_class_())) writeJSONStringWithJavaIoWriter:outArg];
    return;
  }
  if (([RenameOrgJsonSimpleJSONAware_class_() isInstance:value])) {
    [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:[((id<RenameOrgJsonSimpleJSONAware>) cast_check(value, RenameOrgJsonSimpleJSONAware_class_())) toJSONString]];
    return;
  }
  if ([JavaUtilMap_class_() isInstance:value]) {
    RenameOrgJsonSimpleJSONObject_writeJSONStringWithJavaUtilMap_withJavaIoWriter_((id<JavaUtilMap>) cast_check(value, JavaUtilMap_class_()), outArg);
    return;
  }
  if ([JavaUtilCollection_class_() isInstance:value]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithJavaUtilCollection_withJavaIoWriter_((id<JavaUtilCollection>) cast_check(value, JavaUtilCollection_class_()), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSByteArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithByteArray_withJavaIoWriter_((IOSByteArray *) cast_chk(value, [IOSByteArray class]), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSShortArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithShortArray_withJavaIoWriter_((IOSShortArray *) cast_chk(value, [IOSShortArray class]), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSIntArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithIntArray_withJavaIoWriter_((IOSIntArray *) cast_chk(value, [IOSIntArray class]), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSLongArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithLongArray_withJavaIoWriter_((IOSLongArray *) cast_chk(value, [IOSLongArray class]), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSFloatArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithFloatArray_withJavaIoWriter_((IOSFloatArray *) cast_chk(value, [IOSFloatArray class]), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSDoubleArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithDoubleArray_withJavaIoWriter_((IOSDoubleArray *) cast_chk(value, [IOSDoubleArray class]), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSBooleanArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithBooleanArray_withJavaIoWriter_((IOSBooleanArray *) cast_chk(value, [IOSBooleanArray class]), outArg);
    return;
  }
  if ([value isKindOfClass:[IOSCharArray class]]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithCharArray_withJavaIoWriter_((IOSCharArray *) cast_chk(value, [IOSCharArray class]), outArg);
    return;
  }
  if ([IOSClass_arrayType(NSObject_class_(), 1) isInstance:value]) {
    RenameOrgJsonSimpleJSONArray_writeJSONStringWithNSObjectArray_withJavaIoWriter_((IOSObjectArray *) cast_check(value, IOSClass_arrayType(NSObject_class_(), 1)), outArg);
    return;
  }
  [((JavaIoWriter *) nil_chk(outArg)) writeWithNSString:[value description]];
}

NSString *RenameOrgJsonSimpleJSONValue_toJSONStringWithId_(id value) {
  RenameOrgJsonSimpleJSONValue_initialize();
  JavaIoStringWriter *writer = create_JavaIoStringWriter_init();
  @try {
    RenameOrgJsonSimpleJSONValue_writeJSONStringWithId_withJavaIoWriter_(value, writer);
    return [writer description];
  }
  @catch (JavaIoIOException *e) {
    @throw create_JavaLangRuntimeException_initWithNSException_(e);
  }
}

NSString *RenameOrgJsonSimpleJSONValue_escapeWithNSString_(NSString *s) {
  RenameOrgJsonSimpleJSONValue_initialize();
  if (s == nil) return nil;
  JavaLangStringBuffer *sb = create_JavaLangStringBuffer_init();
  RenameOrgJsonSimpleJSONValue_escapeWithNSString_withJavaLangStringBuffer_(s, sb);
  return [sb description];
}

void RenameOrgJsonSimpleJSONValue_escapeWithNSString_withJavaLangStringBuffer_(NSString *s, JavaLangStringBuffer *sb) {
  RenameOrgJsonSimpleJSONValue_initialize();
  jint len = ((jint) [((NSString *) nil_chk(s)) length]);
  for (jint i = 0; i < len; i++) {
    jchar ch = [s charAtWithInt:i];
    switch (ch) {
      case '"':
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\\""];
      break;
      case '\\':
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\\\"];
      break;
      case 0x0008:
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\b"];
      break;
      case 0x000c:
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\f"];
      break;
      case 0x000a:
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\n"];
      break;
      case 0x000d:
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\r"];
      break;
      case 0x0009:
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\t"];
      break;
      case '/':
      [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\/"];
      break;
      default:
      if ((ch >= 0x0000 && ch <= 0x001f) || (ch >= 0x007f && ch <= 0x009f) || (ch >= 0x2000 && ch <= 0x20ff)) {
        NSString *ss = JavaLangInteger_toHexStringWithInt_(ch);
        [((JavaLangStringBuffer *) nil_chk(sb)) appendWithNSString:@"\\u"];
        for (jint k = 0; k < 4 - ((jint) [((NSString *) nil_chk(ss)) length]); k++) {
          [sb appendWithChar:'0'];
        }
        [sb appendWithNSString:[ss uppercaseString]];
      }
      else {
        [((JavaLangStringBuffer *) nil_chk(sb)) appendWithChar:ch];
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RenameOrgJsonSimpleJSONValue)