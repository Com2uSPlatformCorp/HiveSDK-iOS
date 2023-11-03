# 이미 podspec에 작성되어있는 버전
PRE_HIVE_SDK_VERSION="4.21.1.3-beta1"
PRE_HERCULES_VERSION="20221031"
PRE_ADJUST_VERSION="4.33.3"
PRE_APPSFLYER_VERSION="6.9.1"
PRE_FACEBOOK_15_VERSION="15.0.0"
PRE_FIREBASE_VERSION="10.4.0"
PRE_GOOGLE_SIGNIN_VERSION="6.2.4"
PRE_LINE_VERSION="5.8.2"
PRE_SINGULAR_VERSION="12.0.1"
PRE_VK_VERSION="1.6.3"
PRE_SD_WEB_IMAGE_VERSION="5.13.4"
PRE_TENCENT_OPEN_API_VERSION="3.5.12"
PRE_WX_API_VERSION="1.9.6"

# 신규로 podspec에 작성할 버전
UPDATE_HIVE_SDK_VERSION="4.21.1.3"
UPDATE_HERCULES_VERSION=$PRE_HERCULES_VERSION
UPDATE_ADJUST_VERSION=$PRE_ADJUST_VERSION
UPDATE_APPSFLYER_VERSION=$PRE_APPSFLYER_VERSION
UPDATE_FACEBOOK_15_VERSION=$PRE_FACEBOOK_15_VERSION
UPDATE_FIREBASE_VERSION=$PRE_FIREBASE_VERSION
UPDATE_GOOGLE_SIGNIN_VERSION=$PRE_GOOGLE_SIGNIN_VERSION
UPDATE_LINE_VERSION=$PRE_LINE_VERSION
UPDATE_SINGULAR_VERSION=$PRE_SINGULAR_VERSION
UPDATE_VK_VERSION=$PRE_VK_VERSION
UPDATE_SD_WEB_IMAGE_VERSION=$PRE_SD_WEB_IMAGE_VERSION
UPDATE_TENCENT_OPEN_API_VERSION=$PRE_TENCENT_OPEN_API_VERSION
UPDATE_WX_API_VERSION=$PRE_WX_API_VERSION

# 버전 텍스트 교체
sed -i '' "s/$PRE_HIVE_SDK_VERSION/$UPDATE_HIVE_SDK_VERSION/" *.podspec
sed -i '' "s/$PRE_HERCULES_VERSION/$UPDATE_HERCULES_VERSION/" Hercules.podspec
sed -i '' "s/$PRE_ADJUST_VERSION/$UPDATE_ADJUST_VERSION/" HiveProviderAdjust.podspec
sed -i '' "s/$PRE_APPSFLYER_VERSION/$UPDATE_APPSFLYER_VERSION/" HiveProviderAppsFlyer.podspec
sed -i '' "s/$PRE_FACEBOOK_15_VERSION/$UPDATE_FACEBOOK_15_VERSION/" HiveProviderFacebook.podspec
sed -i '' "s/$PRE_FIREBASE_VERSION/$UPDATE_FIREBASE_VERSION/" HiveProviderFirebase.podspec
sed -i '' "s/$PRE_GOOGLE_SIGNIN_VERSION/$UPDATE_GOOGLE_SIGNIN_VERSION/" HiveProviderGoogle.podspec
sed -i '' "s/$PRE_LINE_VERSION/$UPDATE_LINE_VERSION/" HiveProviderLine.podspec
sed -i '' "s/$PRE_SINGULAR_VERSION/$UPDATE_SINGULAR_VERSION/" HiveProviderSingular.podspec
sed -i '' "s/$PRE_VK_VERSION/$UPDATE_VK_VERSION/" HiveProviderVK.podspec
sed -i '' "s/$PRE_SD_WEB_IMAGE_VERSION/$UPDATE_SD_WEB_IMAGE_VERSION/" HiveSDK.podspec
sed -i '' "s/$PRE_TENCENT_OPEN_API_VERSION/$UPDATE_TENCENT_OPEN_API_VERSION/" HiveProviderQQ.podspec
sed -i '' "s/$PRE_WX_API_VERSION/$UPDATE_WX_API_VERSION/" HiveProviderWechat.podspec