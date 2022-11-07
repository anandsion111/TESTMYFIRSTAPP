#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Kiwi.h"
#import "KiwiBlockMacros.h"
#import "KiwiConfiguration.h"
#import "KiwiMacros.h"
#import "KWAny.h"
#import "KWBlock.h"
#import "KWCallSite.h"
#import "KWCaptureSpy.h"
#import "KWCountType.h"
#import "KWDeviceInfo.h"
#import "KWExample.h"
#import "KWExampleDelegate.h"
#import "KWExampleNodeVisitor.h"
#import "KWExampleSuite.h"
#import "KWExampleSuiteBuilder.h"
#import "KWExpectationType.h"
#import "KWFailure.h"
#import "KWFormatter.h"
#import "KWFutureObject.h"
#import "KWInvocationCapturer.h"
#import "KWLet.h"
#import "KWMatcher.h"
#import "KWMatcherFactory.h"
#import "KWMatchers.h"
#import "KWMatching.h"
#import "KWMessageSpying.h"
#import "KWMessageTracker.h"
#import "KWNull.h"
#import "KWObjCUtilities.h"
#import "KWProbe.h"
#import "KWProbePoller.h"
#import "KWReporting.h"
#import "KWSpec.h"
#import "KWStringUtilities.h"
#import "KWSymbolicator.h"
#import "KWValue.h"
#import "KWWorkarounds.h"
#import "NSInvocation+KiwiAdditions.h"
#import "NSInvocation+OCMAdditions.h"
#import "NSMethodSignature+KiwiAdditions.h"
#import "NSNumber+KiwiAdditions.h"
#import "NSObject+KiwiSpyAdditions.h"
#import "NSObject+KiwiVerifierAdditions.h"
#import "NSProxy+KiwiVerifierAdditions.h"
#import "NSValue+KiwiAdditions.h"
#import "KWBeBetweenMatcher.h"
#import "KWBeEmptyMatcher.h"
#import "KWBeIdenticalToMatcher.h"
#import "KWBeKindOfClassMatcher.h"
#import "KWBeMemberOfClassMatcher.h"
#import "KWBeSubclassOfClassMatcher.h"
#import "KWBeTrueMatcher.h"
#import "KWBeWithinMatcher.h"
#import "KWBeZeroMatcher.h"
#import "KWBlockRaiseMatcher.h"
#import "KWChangeMatcher.h"
#import "KWConformToProtocolMatcher.h"
#import "KWContainMatcher.h"
#import "KWContainStringMatcher.h"
#import "KWEqualMatcher.h"
#import "KWGenericMatcher.h"
#import "KWGenericMatchEvaluator.h"
#import "KWGenericMatchingAdditions.h"
#import "KWHaveMatcher.h"
#import "KWHaveValueMatcher.h"
#import "KWInequalityMatcher.h"
#import "KWNilMatcher.h"
#import "KWNotificationMatcher.h"
#import "KWRaiseMatcher.h"
#import "KWReceiveMatcher.h"
#import "KWRegularExpressionPatternMatcher.h"
#import "KWRespondToSelectorMatcher.h"
#import "KWStringContainsMatcher.h"
#import "KWStringPrefixMatcher.h"
#import "KWUserDefinedMatcher.h"
#import "KWMock.h"
#import "NSObject+KiwiMockAdditions.h"
#import "KWAfterAllNode.h"
#import "KWAfterEachNode.h"
#import "KWBeforeAllNode.h"
#import "KWBeforeEachNode.h"
#import "KWBlockNode.h"
#import "KWContextNode.h"
#import "KWExampleNode.h"
#import "KWItNode.h"
#import "KWLetNode.h"
#import "KWPendingNode.h"
#import "KWRegisterMatchersNode.h"
#import "KWIntercept.h"
#import "KWStub.h"
#import "NSObject+KiwiStubAdditions.h"
#import "KWAsyncVerifier.h"
#import "KWExistVerifier.h"
#import "KWMatchVerifier.h"
#import "KWVerifying.h"
#import "KWMessagePattern.h"

FOUNDATION_EXPORT double KiwiVersionNumber;
FOUNDATION_EXPORT const unsigned char KiwiVersionString[];

