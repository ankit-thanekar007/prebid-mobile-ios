/*   Copyright 2018-2021 Prebid.org, Inc.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "PBMORTBParameterBuilder.h"
#import "PBMConstants.h"
#import "PBMORTBBidRequest.h"

#import "PrebidMobileSwiftHeaders.h"
#import <PrebidMobile/PrebidMobile-Swift.h>

@implementation PBMORTBParameterBuilder

+ (NSDictionary<NSString *, NSString *> *)buildOpenRTBFor:(PBMORTBBidRequest *)bidRequest {
    NSMutableDictionary<NSString *, NSString *> *ret = [NSMutableDictionary<NSString *, NSString *> new];
    
    if (!bidRequest) {
        PBMLogError(@"Invalid properties");
        return ret;
    }
    
    NSError *error = nil;
    NSString *json = [bidRequest toJsonStringWithError:&error];
    if (json) {
        ret[PBMParameterKeysOPEN_RTB] = json;
    } else {
        PBMLogError(@"%@", [error localizedDescription]);
    }
    
    return ret;
}

@end
