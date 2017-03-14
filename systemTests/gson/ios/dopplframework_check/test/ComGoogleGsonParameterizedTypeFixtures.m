//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "ComGoogleGsonInternal$Gson$Types.h"
#include "ComGoogleGsonInternalPrimitives.h"
#include "ComGoogleGsonJsonDeserializationContext.h"
#include "ComGoogleGsonJsonElement.h"
#include "ComGoogleGsonJsonObject.h"
#include "ComGoogleGsonJsonSerializationContext.h"
#include "ComGoogleGsonParameterizedTypeFixtures.h"
#include "ComGoogleGsonPrimitiveTypeAdapter.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/SecurityException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/reflect/InvocationTargetException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/ParameterizedType.h"
#include "java/lang/reflect/Type.h"

@interface ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType ()

- (NSString *)getExpectedJsonWithId:(id)obj;

@end

__attribute__((unused)) static NSString *ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_getExpectedJsonWithId_(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *self, id obj);

@interface ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator () {
 @public
  id instanceOfT_;
}

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator, instanceOfT_, id)

@implementation ComGoogleGsonParameterizedTypeFixtures

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonParameterizedTypeFixtures_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LComGoogleGsonParameterizedTypeFixtures_MyParameterizedType;LComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator;LComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter;" };
  static const J2ObjcClassInfo _ComGoogleGsonParameterizedTypeFixtures = { "ParameterizedTypeFixtures", "com.google.gson", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, 0, -1, -1, -1 };
  return &_ComGoogleGsonParameterizedTypeFixtures;
}

@end

void ComGoogleGsonParameterizedTypeFixtures_init(ComGoogleGsonParameterizedTypeFixtures *self) {
  NSObject_init(self);
}

ComGoogleGsonParameterizedTypeFixtures *new_ComGoogleGsonParameterizedTypeFixtures_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonParameterizedTypeFixtures, init)
}

ComGoogleGsonParameterizedTypeFixtures *create_ComGoogleGsonParameterizedTypeFixtures_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonParameterizedTypeFixtures, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonParameterizedTypeFixtures)

@implementation ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType

- (instancetype)initWithId:(id)value {
  ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_initWithId_(self, value);
  return self;
}

- (id)getValue {
  return value_;
}

- (NSString *)getExpectedJson {
  NSString *valueAsJson = ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_getExpectedJsonWithId_(self, value_);
  return NSString_java_formatWithNSString_withNSObjectArray_(@"{\"value\":%s}", [IOSObjectArray arrayWithObjects:(id[]){ valueAsJson } count:1 type:NSObject_class_()]);
}

- (NSString *)getExpectedJsonWithId:(id)obj {
  return ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_getExpectedJsonWithId_(self, obj);
}

- (NSUInteger)hash {
  return value_ == nil ? 0 : ((jint) [value_ hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if (obj == nil) {
    return false;
  }
  if ([self java_getClass] != [obj java_getClass]) {
    return false;
  }
  ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *other = (ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *) cast_chk(obj, [ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType class]);
  if (value_ == nil) {
    if (other->value_ != nil) {
      return false;
    }
  }
  else if (![value_ isEqual:other->value_]) {
    return false;
  }
  return true;
}

- (void)dealloc {
  RELEASE_(value_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 2, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, 3, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:);
  methods[1].selector = @selector(getValue);
  methods[2].selector = @selector(getExpectedJson);
  methods[3].selector = @selector(getExpectedJsonWithId:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LNSObject;", .constantValue.asLong = 0, 0x11, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;", "(TT;)V", "()TT;", "getExpectedJson", "hashCode", "equals", "TT;", "LComGoogleGsonParameterizedTypeFixtures;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType = { "MyParameterizedType", "com.google.gson", ptrTable, methods, fields, 7, 0x9, 6, 1, 7, -1, -1, 8, -1 };
  return &_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType;
}

@end

void ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_initWithId_(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *self, id value) {
  NSObject_init(self);
  JreStrongAssign(&self->value_, value);
}

ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *new_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_initWithId_(id value) {
  J2OBJC_NEW_IMPL(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType, initWithId_, value)
}

ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *create_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_initWithId_(id value) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType, initWithId_, value)
}

NSString *ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_getExpectedJsonWithId_(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *self, id obj) {
  IOSClass *clazz = [nil_chk(obj) java_getClass];
  if (ComGoogleGsonInternalPrimitives_isWrapperTypeWithJavaLangReflectType_(ComGoogleGsonInternalPrimitives_wrapWithIOSClass_(clazz))) {
    return [obj description];
  }
  else if ([[obj java_getClass] isEqual:NSString_class_()]) {
    return JreStrcat("C$C", '"', [obj description], '"');
  }
  else {
    @try {
      JavaLangReflectMethod *method = [clazz getMethod:@"getExpectedJson" parameterTypes:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]];
      id results = [((JavaLangReflectMethod *) nil_chk(method)) invokeWithId:obj withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSObject_class_()]];
      return (NSString *) cast_chk(results, [NSString class]);
    }
    @catch (JavaLangSecurityException *e) {
      @throw create_JavaLangRuntimeException_initWithNSException_(e);
    }
    @catch (JavaLangNoSuchMethodException *e) {
      @throw create_JavaLangRuntimeException_initWithNSException_(e);
    }
    @catch (JavaLangIllegalArgumentException *e) {
      @throw create_JavaLangRuntimeException_initWithNSException_(e);
    }
    @catch (JavaLangIllegalAccessException *e) {
      @throw create_JavaLangRuntimeException_initWithNSException_(e);
    }
    @catch (JavaLangReflectInvocationTargetException *e) {
      @throw create_JavaLangRuntimeException_initWithNSException_(e);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType)

@implementation ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator

- (instancetype)initWithId:(id)instanceOfT {
  ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator_initWithId_(self, instanceOfT);
  return self;
}

- (ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *)createInstanceWithJavaLangReflectType:(id<JavaLangReflectType>)type {
  return create_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_initWithId_(instanceOfT_);
}

- (void)dealloc {
  RELEASE_(instanceOfT_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LComGoogleGsonParameterizedTypeFixtures_MyParameterizedType;", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithId:);
  methods[1].selector = @selector(createInstanceWithJavaLangReflectType:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "instanceOfT_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LNSObject;", "(TT;)V", "createInstance", "LJavaLangReflectType;", "(Ljava/lang/reflect/Type;)Lcom/google/gson/ParameterizedTypeFixtures$MyParameterizedType<TT;>;", "TT;", "LComGoogleGsonParameterizedTypeFixtures;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/google/gson/InstanceCreator<Lcom/google/gson/ParameterizedTypeFixtures$MyParameterizedType<TT;>;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator = { "MyParameterizedTypeInstanceCreator", "com.google.gson", ptrTable, methods, fields, 7, 0x9, 2, 1, 6, -1, -1, 7, -1 };
  return &_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator;
}

@end

void ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator_initWithId_(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator *self, id instanceOfT) {
  NSObject_init(self);
  JreStrongAssign(&self->instanceOfT_, instanceOfT);
}

ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator *new_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator_initWithId_(id instanceOfT) {
  J2OBJC_NEW_IMPL(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator, initWithId_, instanceOfT)
}

ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator *create_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator_initWithId_(id instanceOfT) {
  J2OBJC_CREATE_IMPL(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator, initWithId_, instanceOfT)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeInstanceCreator)

@implementation ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)getExpectedJsonWithComGoogleGsonParameterizedTypeFixtures_MyParameterizedType:(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *)obj {
  return ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter_getExpectedJsonWithComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_(obj);
}

- (ComGoogleGsonJsonElement *)serializeWithId:(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *)src
                      withJavaLangReflectType:(id<JavaLangReflectType>)classOfSrc
    withComGoogleGsonJsonSerializationContext:(id<ComGoogleGsonJsonSerializationContext>)context {
  ComGoogleGsonJsonObject *json = create_ComGoogleGsonJsonObject_init();
  id value = [((ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *) nil_chk(src)) getValue];
  [json addWithNSString:[[nil_chk(value) java_getClass] getSimpleName] withComGoogleGsonJsonElement:[((id<ComGoogleGsonJsonSerializationContext>) nil_chk(context)) serializeWithId:value]];
  return json;
}

- (ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *)deserializeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)json
                                                                                withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT
                                                            withComGoogleGsonJsonDeserializationContext:(id<ComGoogleGsonJsonDeserializationContext>)context {
  id<JavaLangReflectType> genericClass = IOSObjectArray_Get(nil_chk([((id<JavaLangReflectParameterizedType>) nil_chk(((id<JavaLangReflectParameterizedType>) cast_check(typeOfT, JavaLangReflectParameterizedType_class_())))) getActualTypeArguments]), 0);
  IOSClass *rawType = ComGoogleGsonInternal_Gson_Types_getRawTypeWithJavaLangReflectType_(genericClass);
  NSString *className_ = [((IOSClass *) nil_chk(rawType)) getSimpleName];
  ComGoogleGsonJsonElement *jsonElement = [((ComGoogleGsonJsonObject *) nil_chk([((ComGoogleGsonJsonElement *) nil_chk(json)) getAsJsonObject])) getWithNSString:className_];
  id value;
  if (genericClass == (id) JavaLangInteger_class_()) {
    value = JavaLangInteger_valueOfWithInt_([((ComGoogleGsonJsonElement *) nil_chk(jsonElement)) getAsInt]);
  }
  else if (genericClass == (id) NSString_class_()) {
    value = [((ComGoogleGsonJsonElement *) nil_chk(jsonElement)) getAsString];
  }
  else {
    value = jsonElement;
  }
  if (ComGoogleGsonInternalPrimitives_isPrimitiveWithJavaLangReflectType_(genericClass)) {
    ComGoogleGsonPrimitiveTypeAdapter *typeAdapter = create_ComGoogleGsonPrimitiveTypeAdapter_init();
    value = [typeAdapter adaptTypeWithId:value withIOSClass:rawType];
  }
  return create_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_initWithId_(value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "LComGoogleGsonJsonElement;", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "LComGoogleGsonParameterizedTypeFixtures_MyParameterizedType;", 0x1, 6, 7, 8, 9, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getExpectedJsonWithComGoogleGsonParameterizedTypeFixtures_MyParameterizedType:);
  methods[2].selector = @selector(serializeWithId:withJavaLangReflectType:withComGoogleGsonJsonSerializationContext:);
  methods[3].selector = @selector(deserializeWithComGoogleGsonJsonElement:withJavaLangReflectType:withComGoogleGsonJsonDeserializationContext:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getExpectedJson", "LComGoogleGsonParameterizedTypeFixtures_MyParameterizedType;", "<T:Ljava/lang/Object;>(Lcom/google/gson/ParameterizedTypeFixtures$MyParameterizedType<TT;>;)Ljava/lang/String;", "serialize", "LComGoogleGsonParameterizedTypeFixtures_MyParameterizedType;LJavaLangReflectType;LComGoogleGsonJsonSerializationContext;", "(Lcom/google/gson/ParameterizedTypeFixtures$MyParameterizedType<TT;>;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;", "deserialize", "LComGoogleGsonJsonElement;LJavaLangReflectType;LComGoogleGsonJsonDeserializationContext;", "LComGoogleGsonJsonParseException;", "(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/google/gson/ParameterizedTypeFixtures$MyParameterizedType<TT;>;", "LComGoogleGsonParameterizedTypeFixtures;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/google/gson/JsonSerializer<Lcom/google/gson/ParameterizedTypeFixtures$MyParameterizedType<TT;>;>;Lcom/google/gson/JsonDeserializer<Lcom/google/gson/ParameterizedTypeFixtures$MyParameterizedType<TT;>;>;" };
  static const J2ObjcClassInfo _ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter = { "MyParameterizedTypeAdapter", "com.google.gson", ptrTable, methods, NULL, 7, 0x19, 4, 0, 10, -1, -1, 11, -1 };
  return &_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter;
}

@end

void ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter_init(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter *self) {
  NSObject_init(self);
}

ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter *new_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter_init() {
  J2OBJC_NEW_IMPL(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter, init)
}

ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter *create_ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter_init() {
  J2OBJC_CREATE_IMPL(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter, init)
}

NSString *ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter_getExpectedJsonWithComGoogleGsonParameterizedTypeFixtures_MyParameterizedType_(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *obj) {
  ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter_initialize();
  IOSClass *clazz = [nil_chk(((ComGoogleGsonParameterizedTypeFixtures_MyParameterizedType *) nil_chk(obj))->value_) java_getClass];
  jboolean addQuotes = ![clazz isArray] && ![((IOSClass *) nil_chk(ComGoogleGsonInternalPrimitives_unwrapWithIOSClass_(clazz))) isPrimitive];
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithNSString_(@"{\"");
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:[[obj->value_ java_getClass] getSimpleName]])) appendWithNSString:@"\":"];
  if (addQuotes) {
    [sb appendWithNSString:@"\""];
  }
  [sb appendWithNSString:[obj->value_ description]];
  if (addQuotes) {
    [sb appendWithNSString:@"\""];
  }
  [sb appendWithNSString:@"}"];
  return [sb description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonParameterizedTypeFixtures_MyParameterizedTypeAdapter)
