//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "RenameOrgJsonSimpleJSONArray.h"
#include "RenameOrgJsonSimpleJSONObject.h"
#include "RenameOrgJsonSimpleParserContainerFactory.h"
#include "RenameOrgJsonSimpleParserContentHandler.h"
#include "RenameOrgJsonSimpleParserJSONParser.h"
#include "RenameOrgJsonSimpleParserParseException.h"
#include "RenameOrgJsonSimpleParserYylex.h"
#include "RenameOrgJsonSimpleParserYytoken.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/io/StringReader.h"
#include "java/lang/Error.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "java/util/Map.h"

@interface RenameOrgJsonSimpleParserJSONParser () {
 @public
  JavaUtilLinkedList *handlerStatusStack_;
  RenameOrgJsonSimpleParserYylex *lexer_;
  RenameOrgJsonSimpleParserYytoken *token_;
  jint status_;
}

- (jint)peekStatusWithJavaUtilLinkedList:(JavaUtilLinkedList *)statusStack;

- (void)nextToken;

- (id<JavaUtilMap>)createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory:(id<RenameOrgJsonSimpleParserContainerFactory>)containerFactory;

- (id<JavaUtilList>)createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory:(id<RenameOrgJsonSimpleParserContainerFactory>)containerFactory;

@end

J2OBJC_FIELD_SETTER(RenameOrgJsonSimpleParserJSONParser, handlerStatusStack_, JavaUtilLinkedList *)
J2OBJC_FIELD_SETTER(RenameOrgJsonSimpleParserJSONParser, lexer_, RenameOrgJsonSimpleParserYylex *)
J2OBJC_FIELD_SETTER(RenameOrgJsonSimpleParserJSONParser, token_, RenameOrgJsonSimpleParserYytoken *)

__attribute__((unused)) static jint RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(RenameOrgJsonSimpleParserJSONParser *self, JavaUtilLinkedList *statusStack);

__attribute__((unused)) static void RenameOrgJsonSimpleParserJSONParser_nextToken(RenameOrgJsonSimpleParserJSONParser *self);

__attribute__((unused)) static id<JavaUtilMap> RenameOrgJsonSimpleParserJSONParser_createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory_(RenameOrgJsonSimpleParserJSONParser *self, id<RenameOrgJsonSimpleParserContainerFactory> containerFactory);

__attribute__((unused)) static id<JavaUtilList> RenameOrgJsonSimpleParserJSONParser_createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory_(RenameOrgJsonSimpleParserJSONParser *self, id<RenameOrgJsonSimpleParserContainerFactory> containerFactory);

@implementation RenameOrgJsonSimpleParserJSONParser

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RenameOrgJsonSimpleParserJSONParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)peekStatusWithJavaUtilLinkedList:(JavaUtilLinkedList *)statusStack {
  return RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
}

- (void)reset {
  JreStrongAssign(&token_, nil);
  status_ = RenameOrgJsonSimpleParserJSONParser_S_INIT;
  JreStrongAssign(&handlerStatusStack_, nil);
}

- (void)resetWithJavaIoReader:(JavaIoReader *)inArg {
  [((RenameOrgJsonSimpleParserYylex *) nil_chk(lexer_)) yyresetWithJavaIoReader:inArg];
  [self reset];
}

- (jint)getPosition {
  return [((RenameOrgJsonSimpleParserYylex *) nil_chk(lexer_)) getPosition];
}

- (id)parseWithNSString:(NSString *)s {
  return [self parseWithNSString:s withRenameOrgJsonSimpleParserContainerFactory:nil];
}

- (id)parseWithNSString:(NSString *)s
withRenameOrgJsonSimpleParserContainerFactory:(id<RenameOrgJsonSimpleParserContainerFactory>)containerFactory {
  JavaIoStringReader *in = create_JavaIoStringReader_initWithNSString_(s);
  @try {
    return [self parseWithJavaIoReader:in withRenameOrgJsonSimpleParserContainerFactory:containerFactory];
  }
  @catch (JavaIoIOException *ie) {
    @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_(-1, RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_EXCEPTION, ie);
  }
}

- (id)parseWithJavaIoReader:(JavaIoReader *)inArg {
  return [self parseWithJavaIoReader:inArg withRenameOrgJsonSimpleParserContainerFactory:nil];
}

- (id)parseWithJavaIoReader:(JavaIoReader *)inArg
withRenameOrgJsonSimpleParserContainerFactory:(id<RenameOrgJsonSimpleParserContainerFactory>)containerFactory {
  [self resetWithJavaIoReader:inArg];
  JavaUtilLinkedList *statusStack = create_JavaUtilLinkedList_init();
  JavaUtilLinkedList *valueStack = create_JavaUtilLinkedList_init();
  @try {
    do {
      RenameOrgJsonSimpleParserJSONParser_nextToken(self);
      switch (status_) {
        case RenameOrgJsonSimpleParserJSONParser_S_INIT:
        switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
          case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          [valueStack addFirstWithId:((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->value_];
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_BRACE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          [valueStack addFirstWithId:RenameOrgJsonSimpleParserJSONParser_createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory)];
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_SQUARE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          [valueStack addFirstWithId:RenameOrgJsonSimpleParserJSONParser_createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory)];
          break;
          default:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE:
        if (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_ == RenameOrgJsonSimpleParserYytoken_TYPE_EOF) return [valueStack removeFirst];
        else @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
        case RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT:
        switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
          case RenameOrgJsonSimpleParserYytoken_TYPE_COMMA:
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
          if ([token_->value_ isKindOfClass:[NSString class]]) {
            NSString *key = (NSString *) cast_chk(token_->value_, [NSString class]);
            [valueStack addFirstWithId:key];
            status_ = RenameOrgJsonSimpleParserJSONParser_S_PASSED_PAIR_KEY;
            [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          }
          else {
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
          }
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_RIGHT_BRACE:
          if ([valueStack size] > 1) {
            [statusStack removeFirst];
            [valueStack removeFirst];
            status_ = RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
          }
          else {
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE;
          }
          break;
          default:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
          break;
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_PASSED_PAIR_KEY:
        {
          NSString *key;
          id<JavaUtilMap> parent;
          id<JavaUtilList> newArray;
          id<JavaUtilMap> newObject;
          switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
            case RenameOrgJsonSimpleParserYytoken_TYPE_COLON:
            break;
            case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
            [statusStack removeFirst];
            key = (NSString *) cast_chk([valueStack removeFirst], [NSString class]);
            parent = (id<JavaUtilMap>) cast_check([valueStack getFirst], JavaUtilMap_class_());
            [((id<JavaUtilMap>) nil_chk(parent)) putWithId:key withId:((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->value_];
            status_ = RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
            break;
            case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_SQUARE:
            [statusStack removeFirst];
            key = (NSString *) cast_chk([valueStack removeFirst], [NSString class]);
            parent = (id<JavaUtilMap>) cast_check([valueStack getFirst], JavaUtilMap_class_());
            newArray = RenameOrgJsonSimpleParserJSONParser_createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory);
            [((id<JavaUtilMap>) nil_chk(parent)) putWithId:key withId:newArray];
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY;
            [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
            [valueStack addFirstWithId:newArray];
            break;
            case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_BRACE:
            [statusStack removeFirst];
            key = (NSString *) cast_chk([valueStack removeFirst], [NSString class]);
            parent = (id<JavaUtilMap>) cast_check([valueStack getFirst], JavaUtilMap_class_());
            newObject = RenameOrgJsonSimpleParserJSONParser_createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory);
            [((id<JavaUtilMap>) nil_chk(parent)) putWithId:key withId:newObject];
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT;
            [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
            [valueStack addFirstWithId:newObject];
            break;
            default:
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
          }
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY:
        {
          id<JavaUtilList> val;
          id<JavaUtilMap> newObject;
          id<JavaUtilList> newArray;
          switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
            case RenameOrgJsonSimpleParserYytoken_TYPE_COMMA:
            break;
            case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
            val = (id<JavaUtilList>) cast_check([valueStack getFirst], JavaUtilList_class_());
            [((id<JavaUtilList>) nil_chk(val)) addWithId:((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->value_];
            break;
            case RenameOrgJsonSimpleParserYytoken_TYPE_RIGHT_SQUARE:
            if ([valueStack size] > 1) {
              [statusStack removeFirst];
              [valueStack removeFirst];
              status_ = RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
            }
            else {
              status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE;
            }
            break;
            case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_BRACE:
            val = (id<JavaUtilList>) cast_check([valueStack getFirst], JavaUtilList_class_());
            newObject = RenameOrgJsonSimpleParserJSONParser_createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory);
            [((id<JavaUtilList>) nil_chk(val)) addWithId:newObject];
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT;
            [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
            [valueStack addFirstWithId:newObject];
            break;
            case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_SQUARE:
            val = (id<JavaUtilList>) cast_check([valueStack getFirst], JavaUtilList_class_());
            newArray = RenameOrgJsonSimpleParserJSONParser_createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory);
            [((id<JavaUtilList>) nil_chk(val)) addWithId:newArray];
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY;
            [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
            [valueStack addFirstWithId:newArray];
            break;
            default:
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
          }
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR:
        @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
      }
      if (status_ == RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR) {
        @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
      }
    }
    while (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_ != RenameOrgJsonSimpleParserYytoken_TYPE_EOF);
  }
  @catch (JavaIoIOException *ie) {
    @throw ie;
  }
  @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
}

- (void)nextToken {
  RenameOrgJsonSimpleParserJSONParser_nextToken(self);
}

- (id<JavaUtilMap>)createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory:(id<RenameOrgJsonSimpleParserContainerFactory>)containerFactory {
  return RenameOrgJsonSimpleParserJSONParser_createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory);
}

- (id<JavaUtilList>)createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory:(id<RenameOrgJsonSimpleParserContainerFactory>)containerFactory {
  return RenameOrgJsonSimpleParserJSONParser_createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory_(self, containerFactory);
}

- (void)parseWithNSString:(NSString *)s
withRenameOrgJsonSimpleParserContentHandler:(id<RenameOrgJsonSimpleParserContentHandler>)contentHandler {
  [self parseWithNSString:s withRenameOrgJsonSimpleParserContentHandler:contentHandler withBoolean:false];
}

- (void)parseWithNSString:(NSString *)s
withRenameOrgJsonSimpleParserContentHandler:(id<RenameOrgJsonSimpleParserContentHandler>)contentHandler
              withBoolean:(jboolean)isResume {
  JavaIoStringReader *in = create_JavaIoStringReader_initWithNSString_(s);
  @try {
    [self parseWithJavaIoReader:in withRenameOrgJsonSimpleParserContentHandler:contentHandler withBoolean:isResume];
  }
  @catch (JavaIoIOException *ie) {
    @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_(-1, RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_EXCEPTION, ie);
  }
}

- (void)parseWithJavaIoReader:(JavaIoReader *)inArg
withRenameOrgJsonSimpleParserContentHandler:(id<RenameOrgJsonSimpleParserContentHandler>)contentHandler {
  [self parseWithJavaIoReader:inArg withRenameOrgJsonSimpleParserContentHandler:contentHandler withBoolean:false];
}

- (void)parseWithJavaIoReader:(JavaIoReader *)inArg
withRenameOrgJsonSimpleParserContentHandler:(id<RenameOrgJsonSimpleParserContentHandler>)contentHandler
                  withBoolean:(jboolean)isResume {
  if (!isResume) {
    [self resetWithJavaIoReader:inArg];
    JreStrongAssignAndConsume(&handlerStatusStack_, new_JavaUtilLinkedList_init());
  }
  else {
    if (handlerStatusStack_ == nil) {
      isResume = false;
      [self resetWithJavaIoReader:inArg];
      JreStrongAssignAndConsume(&handlerStatusStack_, new_JavaUtilLinkedList_init());
    }
  }
  JavaUtilLinkedList *statusStack = handlerStatusStack_;
  @try {
    do {
      switch (status_) {
        case RenameOrgJsonSimpleParserJSONParser_S_INIT:
        [((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) startJSON];
        RenameOrgJsonSimpleParserJSONParser_nextToken(self);
        switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
          case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          if (![contentHandler primitiveWithId:((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->value_]) return;
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_BRACE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          if (![contentHandler startObject]) return;
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_SQUARE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          if (![contentHandler startArray]) return;
          break;
          default:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE:
        RenameOrgJsonSimpleParserJSONParser_nextToken(self);
        if (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_ == RenameOrgJsonSimpleParserYytoken_TYPE_EOF) {
          [((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) endJSON];
          status_ = RenameOrgJsonSimpleParserJSONParser_S_END;
          return;
        }
        else {
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
          @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
        }
        case RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT:
        RenameOrgJsonSimpleParserJSONParser_nextToken(self);
        switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
          case RenameOrgJsonSimpleParserYytoken_TYPE_COMMA:
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
          if ([token_->value_ isKindOfClass:[NSString class]]) {
            NSString *key = (NSString *) cast_chk(token_->value_, [NSString class]);
            status_ = RenameOrgJsonSimpleParserJSONParser_S_PASSED_PAIR_KEY;
            [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
            if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) startObjectEntryWithNSString:key]) return;
          }
          else {
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
          }
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_RIGHT_BRACE:
          if ([statusStack size] > 1) {
            [statusStack removeFirst];
            status_ = RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
          }
          else {
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE;
          }
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) endObject]) return;
          break;
          default:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
          break;
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_PASSED_PAIR_KEY:
        RenameOrgJsonSimpleParserJSONParser_nextToken(self);
        switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
          case RenameOrgJsonSimpleParserYytoken_TYPE_COLON:
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
          [statusStack removeFirst];
          status_ = RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) primitiveWithId:((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->value_]) return;
          if (![contentHandler endObjectEntry]) return;
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_SQUARE:
          [statusStack removeFirst];
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(RenameOrgJsonSimpleParserJSONParser_S_IN_PAIR_VALUE)];
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) startArray]) return;
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_BRACE:
          [statusStack removeFirst];
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(RenameOrgJsonSimpleParserJSONParser_S_IN_PAIR_VALUE)];
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) startObject]) return;
          break;
          default:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_IN_PAIR_VALUE:
        [statusStack removeFirst];
        status_ = RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
        if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) endObjectEntry]) return;
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY:
        RenameOrgJsonSimpleParserJSONParser_nextToken(self);
        switch (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_) {
          case RenameOrgJsonSimpleParserYytoken_TYPE_COMMA:
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_VALUE:
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) primitiveWithId:token_->value_]) return;
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_RIGHT_SQUARE:
          if ([statusStack size] > 1) {
            [statusStack removeFirst];
            status_ = RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(self, statusStack);
          }
          else {
            status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE;
          }
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) endArray]) return;
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_BRACE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) startObject]) return;
          break;
          case RenameOrgJsonSimpleParserYytoken_TYPE_LEFT_SQUARE:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY;
          [statusStack addFirstWithId:create_JavaLangInteger_initWithInt_(status_)];
          if (![((id<RenameOrgJsonSimpleParserContentHandler>) nil_chk(contentHandler)) startArray]) return;
          break;
          default:
          status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
        }
        break;
        case RenameOrgJsonSimpleParserJSONParser_S_END:
        return;
        case RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR:
        @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
      }
      if (status_ == RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR) {
        @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
      }
    }
    while (((RenameOrgJsonSimpleParserYytoken *) nil_chk(token_))->type_ != RenameOrgJsonSimpleParserYytoken_TYPE_EOF);
  }
  @catch (JavaIoIOException *ie) {
    status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
    @throw ie;
  }
  @catch (RenameOrgJsonSimpleParserParseException *pe) {
    status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
    @throw pe;
  }
  @catch (JavaLangRuntimeException *re) {
    status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
    @throw re;
  }
  @catch (JavaLangError *e) {
    status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
    @throw e;
  }
  status_ = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR;
  @throw create_RenameOrgJsonSimpleParserParseException_initWithInt_withInt_withId_([self getPosition], RenameOrgJsonSimpleParserParseException_ERROR_UNEXPECTED_TOKEN, token_);
}

- (void)dealloc {
  RELEASE_(handlerStatusStack_);
  RELEASE_(lexer_);
  RELEASE_(token_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 7, 6, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 3, 8, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 4, 9, 8, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 10, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x2, 11, 12, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x2, 13, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 14, 6, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 15, 6, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 16, 8, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 17, 8, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(peekStatusWithJavaUtilLinkedList:);
  methods[2].selector = @selector(reset);
  methods[3].selector = @selector(resetWithJavaIoReader:);
  methods[4].selector = @selector(getPosition);
  methods[5].selector = @selector(parseWithNSString:);
  methods[6].selector = @selector(parseWithNSString:withRenameOrgJsonSimpleParserContainerFactory:);
  methods[7].selector = @selector(parseWithJavaIoReader:);
  methods[8].selector = @selector(parseWithJavaIoReader:withRenameOrgJsonSimpleParserContainerFactory:);
  methods[9].selector = @selector(nextToken);
  methods[10].selector = @selector(createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory:);
  methods[11].selector = @selector(createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory:);
  methods[12].selector = @selector(parseWithNSString:withRenameOrgJsonSimpleParserContentHandler:);
  methods[13].selector = @selector(parseWithNSString:withRenameOrgJsonSimpleParserContentHandler:withBoolean:);
  methods[14].selector = @selector(parseWithJavaIoReader:withRenameOrgJsonSimpleParserContentHandler:);
  methods[15].selector = @selector(parseWithJavaIoReader:withRenameOrgJsonSimpleParserContentHandler:withBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "S_INIT", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_INIT, 0x19, -1, -1, -1, -1 },
    { "S_IN_FINISHED_VALUE", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_IN_FINISHED_VALUE, 0x19, -1, -1, -1, -1 },
    { "S_IN_OBJECT", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_IN_OBJECT, 0x19, -1, -1, -1, -1 },
    { "S_IN_ARRAY", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_IN_ARRAY, 0x19, -1, -1, -1, -1 },
    { "S_PASSED_PAIR_KEY", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_PASSED_PAIR_KEY, 0x19, -1, -1, -1, -1 },
    { "S_IN_PAIR_VALUE", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_IN_PAIR_VALUE, 0x19, -1, -1, -1, -1 },
    { "S_END", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_END, 0x19, -1, -1, -1, -1 },
    { "S_IN_ERROR", "I", .constantValue.asInt = RenameOrgJsonSimpleParserJSONParser_S_IN_ERROR, 0x19, -1, -1, -1, -1 },
    { "handlerStatusStack_", "LJavaUtilLinkedList;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lexer_", "LRenameOrgJsonSimpleParserYylex;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "token_", "LRenameOrgJsonSimpleParserYytoken;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "status_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "peekStatus", "LJavaUtilLinkedList;", "reset", "LJavaIoReader;", "parse", "LNSString;", "LRenameOrgJsonSimpleParserParseException;", "LNSString;LRenameOrgJsonSimpleParserContainerFactory;", "LJavaIoIOException;LRenameOrgJsonSimpleParserParseException;", "LJavaIoReader;LRenameOrgJsonSimpleParserContainerFactory;", "LRenameOrgJsonSimpleParserParseException;LJavaIoIOException;", "createObjectContainer", "LRenameOrgJsonSimpleParserContainerFactory;", "createArrayContainer", "LNSString;LRenameOrgJsonSimpleParserContentHandler;", "LNSString;LRenameOrgJsonSimpleParserContentHandler;Z", "LJavaIoReader;LRenameOrgJsonSimpleParserContentHandler;", "LJavaIoReader;LRenameOrgJsonSimpleParserContentHandler;Z" };
  static const J2ObjcClassInfo _RenameOrgJsonSimpleParserJSONParser = { "JSONParser", "rename.org.json.simple.parser", ptrTable, methods, fields, 7, 0x1, 16, 12, -1, -1, -1, -1, -1 };
  return &_RenameOrgJsonSimpleParserJSONParser;
}

@end

void RenameOrgJsonSimpleParserJSONParser_init(RenameOrgJsonSimpleParserJSONParser *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->lexer_, new_RenameOrgJsonSimpleParserYylex_initWithJavaIoReader_(nil));
  JreStrongAssign(&self->token_, nil);
  self->status_ = RenameOrgJsonSimpleParserJSONParser_S_INIT;
}

RenameOrgJsonSimpleParserJSONParser *new_RenameOrgJsonSimpleParserJSONParser_init() {
  J2OBJC_NEW_IMPL(RenameOrgJsonSimpleParserJSONParser, init)
}

RenameOrgJsonSimpleParserJSONParser *create_RenameOrgJsonSimpleParserJSONParser_init() {
  J2OBJC_CREATE_IMPL(RenameOrgJsonSimpleParserJSONParser, init)
}

jint RenameOrgJsonSimpleParserJSONParser_peekStatusWithJavaUtilLinkedList_(RenameOrgJsonSimpleParserJSONParser *self, JavaUtilLinkedList *statusStack) {
  if ([((JavaUtilLinkedList *) nil_chk(statusStack)) size] == 0) return -1;
  JavaLangInteger *status = (JavaLangInteger *) cast_chk([statusStack getFirst], [JavaLangInteger class]);
  return [((JavaLangInteger *) nil_chk(status)) intValue];
}

void RenameOrgJsonSimpleParserJSONParser_nextToken(RenameOrgJsonSimpleParserJSONParser *self) {
  JreStrongAssign(&self->token_, [((RenameOrgJsonSimpleParserYylex *) nil_chk(self->lexer_)) yylex]);
  if (self->token_ == nil) JreStrongAssignAndConsume(&self->token_, new_RenameOrgJsonSimpleParserYytoken_initWithInt_withId_(RenameOrgJsonSimpleParserYytoken_TYPE_EOF, nil));
}

id<JavaUtilMap> RenameOrgJsonSimpleParserJSONParser_createObjectContainerWithRenameOrgJsonSimpleParserContainerFactory_(RenameOrgJsonSimpleParserJSONParser *self, id<RenameOrgJsonSimpleParserContainerFactory> containerFactory) {
  if (containerFactory == nil) return create_RenameOrgJsonSimpleJSONObject_init();
  id<JavaUtilMap> m = [containerFactory createObjectContainer];
  if (m == nil) return create_RenameOrgJsonSimpleJSONObject_init();
  return m;
}

id<JavaUtilList> RenameOrgJsonSimpleParserJSONParser_createArrayContainerWithRenameOrgJsonSimpleParserContainerFactory_(RenameOrgJsonSimpleParserJSONParser *self, id<RenameOrgJsonSimpleParserContainerFactory> containerFactory) {
  if (containerFactory == nil) return create_RenameOrgJsonSimpleJSONArray_init();
  id<JavaUtilList> l = [containerFactory creatArrayContainer];
  if (l == nil) return create_RenameOrgJsonSimpleJSONArray_init();
  return l;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RenameOrgJsonSimpleParserJSONParser)