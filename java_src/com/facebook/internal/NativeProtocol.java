package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookSdk;
import com.facebook.login.DefaultAudience;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class NativeProtocol {
    public static final String ACTION_APPINVITE_DIALOG = "com.facebook.platform.action.request.APPINVITES_DIALOG";
    public static final String ACTION_FEED_DIALOG = "com.facebook.platform.action.request.FEED_DIALOG";
    public static final String ACTION_LIKE_DIALOG = "com.facebook.platform.action.request.LIKE_DIALOG";
    public static final String ACTION_MESSAGE_DIALOG = "com.facebook.platform.action.request.MESSAGE_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    public static final String AUDIENCE_EVERYONE = "everyone";
    public static final String AUDIENCE_FRIENDS = "friends";
    public static final String AUDIENCE_ME = "only_me";
    public static final String BRIDGE_ARG_ACTION_ID_STRING = "action_id";
    public static final String BRIDGE_ARG_APP_NAME_STRING = "app_name";
    public static final String BRIDGE_ARG_ERROR_BUNDLE = "error";
    public static final String BRIDGE_ARG_ERROR_CODE = "error_code";
    public static final String BRIDGE_ARG_ERROR_DESCRIPTION = "error_description";
    public static final String BRIDGE_ARG_ERROR_JSON = "error_json";
    public static final String BRIDGE_ARG_ERROR_SUBCODE = "error_subcode";
    public static final String BRIDGE_ARG_ERROR_TYPE = "error_type";
    private static final String CONTENT_SCHEME = "content://";
    public static final String ERROR_APPLICATION_ERROR = "ApplicationError";
    public static final String ERROR_NETWORK_ERROR = "NetworkError";
    public static final String ERROR_PERMISSION_DENIED = "PermissionDenied";
    public static final String ERROR_PROTOCOL_ERROR = "ProtocolError";
    public static final String ERROR_SERVICE_DISABLED = "ServiceDisabled";
    public static final String ERROR_UNKNOWN_ERROR = "UnknownError";
    public static final String ERROR_USER_CANCELED = "UserCanceled";
    public static final String EXTRA_ACCESS_TOKEN = "com.facebook.platform.extra.ACCESS_TOKEN";
    public static final String EXTRA_APPLICATION_ID = "com.facebook.platform.extra.APPLICATION_ID";
    public static final String EXTRA_APPLICATION_NAME = "com.facebook.platform.extra.APPLICATION_NAME";
    public static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
    public static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
    public static final String EXTRA_EXPIRES_SECONDS_SINCE_EPOCH = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
    public static final String EXTRA_GET_INSTALL_DATA_PACKAGE = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
    public static final String EXTRA_PERMISSIONS = "com.facebook.platform.extra.PERMISSIONS";
    public static final String EXTRA_PROTOCOL_ACTION = "com.facebook.platform.protocol.PROTOCOL_ACTION";
    public static final String EXTRA_PROTOCOL_BRIDGE_ARGS = "com.facebook.platform.protocol.BRIDGE_ARGS";
    public static final String EXTRA_PROTOCOL_CALL_ID = "com.facebook.platform.protocol.CALL_ID";
    public static final String EXTRA_PROTOCOL_METHOD_ARGS = "com.facebook.platform.protocol.METHOD_ARGS";
    public static final String EXTRA_PROTOCOL_METHOD_RESULTS = "com.facebook.platform.protocol.RESULT_ARGS";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.platform.protocol.PROTOCOL_VERSION";
    static final String EXTRA_PROTOCOL_VERSIONS = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
    public static final String EXTRA_USER_ID = "com.facebook.platform.extra.USER_ID";
    private static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    public static final String FACEBOOK_SDK_VERSION_KEY = "facebook_sdk_version";
    private static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    public static final String IMAGE_URL_KEY = "url";
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 65537;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 65536;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 65541;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 65540;
    public static final int MESSAGE_GET_LIKE_STATUS_REPLY = 65543;
    public static final int MESSAGE_GET_LIKE_STATUS_REQUEST = 65542;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 65539;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 65538;
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    private static final String PLATFORM_PROVIDER = ".provider.PlatformProvider";
    private static final String PLATFORM_PROVIDER_VERSIONS = ".provider.PlatformProvider/versions";
    private static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final String RESULT_ARGS_ACCESS_TOKEN = "access_token";
    public static final String RESULT_ARGS_DIALOG_COMPLETE_KEY = "didComplete";
    public static final String RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY = "completionGesture";
    public static final String RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH = "expires_seconds_since_epoch";
    public static final String RESULT_ARGS_PERMISSIONS = "permissions";
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    public static final String WEB_DIALOG_ACTION = "action";
    public static final String WEB_DIALOG_IS_FALLBACK = "is_fallback";
    public static final String WEB_DIALOG_PARAMS = "params";
    public static final String WEB_DIALOG_URL = "url";
    private static final String TAG = NativeProtocol.class.getName();
    private static List<NativeAppInfo> facebookAppInfoList = buildFacebookAppList();
    private static Map<String, List<NativeAppInfo>> actionToAppInfoMap = buildActionToAppInfoMap();
    private static AtomicBoolean protocolVersionsAsyncUpdating = new AtomicBoolean(false);
    public static final int PROTOCOL_VERSION_20160327 = 20160327;
    public static final int PROTOCOL_VERSION_20141218 = 20141218;
    public static final int PROTOCOL_VERSION_20141107 = 20141107;
    public static final int PROTOCOL_VERSION_20141028 = 20141028;
    public static final int PROTOCOL_VERSION_20141001 = 20141001;
    public static final int PROTOCOL_VERSION_20140701 = 20140701;
    public static final int PROTOCOL_VERSION_20140324 = 20140324;
    public static final int PROTOCOL_VERSION_20140204 = 20140204;
    public static final int PROTOCOL_VERSION_20131107 = 20131107;
    public static final int PROTOCOL_VERSION_20130618 = 20130618;
    public static final int PROTOCOL_VERSION_20130502 = 20130502;
    public static final int PROTOCOL_VERSION_20121101 = 20121101;
    private static final List<Integer> KNOWN_PROTOCOL_VERSIONS = Arrays.asList(Integer.valueOf((int) PROTOCOL_VERSION_20160327), Integer.valueOf((int) PROTOCOL_VERSION_20141218), Integer.valueOf((int) PROTOCOL_VERSION_20141107), Integer.valueOf((int) PROTOCOL_VERSION_20141028), Integer.valueOf((int) PROTOCOL_VERSION_20141001), Integer.valueOf((int) PROTOCOL_VERSION_20140701), Integer.valueOf((int) PROTOCOL_VERSION_20140324), Integer.valueOf((int) PROTOCOL_VERSION_20140204), Integer.valueOf((int) PROTOCOL_VERSION_20131107), Integer.valueOf((int) PROTOCOL_VERSION_20130618), Integer.valueOf((int) PROTOCOL_VERSION_20130502), Integer.valueOf((int) PROTOCOL_VERSION_20121101));

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class NativeAppInfo {
        private static final String FBI_HASH = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc";
        private static final String FBL_HASH = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625";
        private static final String FBR_HASH = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9";
        private static final HashSet<String> validAppSignatureHashes = buildAppSignatureHashes();
        private TreeSet<Integer> availableVersions;

        protected abstract String getLoginActivity();

        protected abstract String getPackage();

        private NativeAppInfo() {
        }

        private static HashSet<String> buildAppSignatureHashes() {
            HashSet<String> hashSet = new HashSet<>();
            hashSet.add(FBR_HASH);
            hashSet.add(FBI_HASH);
            hashSet.add(FBL_HASH);
            return hashSet;
        }

        public boolean validateSignature(Context context, String str) {
            String str2 = Build.BRAND;
            int i = context.getApplicationInfo().flags;
            if (!str2.startsWith("generic") || (i & 2) == 0) {
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
                    if (packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                        return false;
                    }
                    Signature[] signatureArr = packageInfo.signatures;
                    for (Signature signature : signatureArr) {
                        if (!validAppSignatureHashes.contains(Utility.sha1hash(signature.toByteArray()))) {
                            return false;
                        }
                    }
                    return true;
                } catch (PackageManager.NameNotFoundException e) {
                    return false;
                }
            }
            return true;
        }

        public TreeSet<Integer> getAvailableVersions() {
            if (this.availableVersions == null) {
                fetchAvailableVersions(false);
            }
            return this.availableVersions;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0005, code lost:
            if (r1.availableVersions == null) goto L3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public synchronized void fetchAvailableVersions(boolean z) {
            if (!z) {
            }
            this.availableVersions = NativeProtocol.fetchAllAvailableProtocolVersionsForAppInfo(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class KatanaAppInfo extends NativeAppInfo {
        static final String KATANA_PACKAGE = "com.facebook.katana";

        private KatanaAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return KATANA_PACKAGE;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return NativeProtocol.FACEBOOK_PROXY_AUTH_ACTIVITY;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MessengerAppInfo extends NativeAppInfo {
        static final String MESSENGER_PACKAGE = "com.facebook.orca";

        private MessengerAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return "com.facebook.orca";
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class WakizashiAppInfo extends NativeAppInfo {
        static final String WAKIZASHI_PACKAGE = "com.facebook.wakizashi";

        private WakizashiAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return WAKIZASHI_PACKAGE;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return NativeProtocol.FACEBOOK_PROXY_AUTH_ACTIVITY;
        }
    }

    /* loaded from: classes.dex */
    private static class FBLiteAppInfo extends NativeAppInfo {
        static final String FACEBOOK_LITE_ACTIVITY = "com.facebook.lite.platform.LoginGDPDialogActivity";
        static final String FBLITE_PACKAGE = "com.facebook.lite";

        private FBLiteAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return FBLITE_PACKAGE;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return FACEBOOK_LITE_ACTIVITY;
        }
    }

    private static List<NativeAppInfo> buildFacebookAppList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new KatanaAppInfo());
        arrayList.add(new WakizashiAppInfo());
        return arrayList;
    }

    private static Map<String, List<NativeAppInfo>> buildActionToAppInfoMap() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MessengerAppInfo());
        hashMap.put(ACTION_OGACTIONPUBLISH_DIALOG, facebookAppInfoList);
        hashMap.put(ACTION_FEED_DIALOG, facebookAppInfoList);
        hashMap.put(ACTION_LIKE_DIALOG, facebookAppInfoList);
        hashMap.put(ACTION_APPINVITE_DIALOG, facebookAppInfoList);
        hashMap.put(ACTION_MESSAGE_DIALOG, arrayList);
        hashMap.put(ACTION_OGMESSAGEPUBLISH_DIALOG, arrayList);
        return hashMap;
    }

    static Intent validateActivityIntent(Context context, Intent intent, NativeAppInfo nativeAppInfo) {
        ResolveInfo resolveActivity;
        if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null || !nativeAppInfo.validateSignature(context, resolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }

    static Intent validateServiceIntent(Context context, Intent intent, NativeAppInfo nativeAppInfo) {
        ResolveInfo resolveService;
        if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null || !nativeAppInfo.validateSignature(context, resolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }

    public static Intent createFacebookLiteIntent(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3) {
        FBLiteAppInfo fBLiteAppInfo = new FBLiteAppInfo();
        return validateActivityIntent(context, createNativeAppIntent(fBLiteAppInfo, str, collection, str2, z, z2, defaultAudience, str3), fBLiteAppInfo);
    }

    private static Intent createNativeAppIntent(NativeAppInfo nativeAppInfo, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3) {
        String loginActivity = nativeAppInfo.getLoginActivity();
        if (loginActivity == null) {
            return null;
        }
        Intent putExtra = new Intent().setClassName(nativeAppInfo.getPackage(), loginActivity).putExtra("client_id", str);
        putExtra.putExtra(FACEBOOK_SDK_VERSION_KEY, FacebookSdk.getSdkVersion());
        if (!Utility.isNullOrEmpty(collection)) {
            putExtra.putExtra("scope", TextUtils.join(",", collection));
        }
        if (!Utility.isNullOrEmpty(str2)) {
            putExtra.putExtra("e2e", str2);
        }
        putExtra.putExtra("state", str3);
        putExtra.putExtra(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST);
        putExtra.putExtra(ServerProtocol.DIALOG_PARAM_RETURN_SCOPES, "true");
        if (z2) {
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_DEFAULT_AUDIENCE, defaultAudience.getNativeProtocolAudience());
        }
        putExtra.putExtra(ServerProtocol.DIALOG_PARAM_LEGACY_OVERRIDE, FacebookSdk.getGraphApiVersion());
        putExtra.putExtra(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, ServerProtocol.DIALOG_REREQUEST_AUTH_TYPE);
        return putExtra;
    }

    public static Intent createProxyAuthIntent(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3) {
        for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
            Intent validateActivityIntent = validateActivityIntent(context, createNativeAppIntent(nativeAppInfo, str, collection, str2, z, z2, defaultAudience, str3), nativeAppInfo);
            if (validateActivityIntent != null) {
                return validateActivityIntent;
            }
        }
        return null;
    }

    public static Intent createTokenRefreshIntent(Context context) {
        for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
            Intent validateServiceIntent = validateServiceIntent(context, new Intent().setClassName(nativeAppInfo.getPackage(), FACEBOOK_TOKEN_REFRESH_ACTIVITY), nativeAppInfo);
            if (validateServiceIntent != null) {
                return validateServiceIntent;
            }
        }
        return null;
    }

    public static final int getLatestKnownVersion() {
        return KNOWN_PROTOCOL_VERSIONS.get(0).intValue();
    }

    public static boolean isVersionCompatibleWithBucketedIntent(int i) {
        return KNOWN_PROTOCOL_VERSIONS.contains(Integer.valueOf(i)) && i >= 20140701;
    }

    public static Intent createPlatformActivityIntent(Context context, String str, String str2, ProtocolVersionQueryResult protocolVersionQueryResult, Bundle bundle) {
        NativeAppInfo nativeAppInfo;
        Intent validateActivityIntent;
        if (protocolVersionQueryResult == null || (nativeAppInfo = protocolVersionQueryResult.nativeAppInfo) == null || (validateActivityIntent = validateActivityIntent(context, new Intent().setAction(INTENT_ACTION_PLATFORM_ACTIVITY).setPackage(nativeAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeAppInfo)) == null) {
            return null;
        }
        setupProtocolRequestIntent(validateActivityIntent, str, str2, protocolVersionQueryResult.protocolVersion, bundle);
        return validateActivityIntent;
    }

    public static void setupProtocolRequestIntent(Intent intent, String str, String str2, int i, Bundle bundle) {
        String applicationId = FacebookSdk.getApplicationId();
        String applicationName = FacebookSdk.getApplicationName();
        intent.putExtra(EXTRA_PROTOCOL_VERSION, i).putExtra(EXTRA_PROTOCOL_ACTION, str2).putExtra(EXTRA_APPLICATION_ID, applicationId);
        if (isVersionCompatibleWithBucketedIntent(i)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", str);
            Utility.putNonEmptyString(bundle2, BRIDGE_ARG_APP_NAME_STRING, applicationName);
            intent.putExtra(EXTRA_PROTOCOL_BRIDGE_ARGS, bundle2);
            if (bundle == null) {
                bundle = new Bundle();
            }
            intent.putExtra(EXTRA_PROTOCOL_METHOD_ARGS, bundle);
            return;
        }
        intent.putExtra(EXTRA_PROTOCOL_CALL_ID, str);
        if (!Utility.isNullOrEmpty(applicationName)) {
            intent.putExtra(EXTRA_APPLICATION_NAME, applicationName);
        }
        intent.putExtras(bundle);
    }

    public static Intent createProtocolResultIntent(Intent intent, Bundle bundle, FacebookException facebookException) {
        UUID callIdFromIntent = getCallIdFromIntent(intent);
        if (callIdFromIntent == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.putExtra(EXTRA_PROTOCOL_VERSION, getProtocolVersionFromIntent(intent));
        Bundle bundle2 = new Bundle();
        bundle2.putString("action_id", callIdFromIntent.toString());
        if (facebookException != null) {
            bundle2.putBundle("error", createBundleForException(facebookException));
        }
        intent2.putExtra(EXTRA_PROTOCOL_BRIDGE_ARGS, bundle2);
        if (bundle != null) {
            intent2.putExtra(EXTRA_PROTOCOL_METHOD_RESULTS, bundle);
            return intent2;
        }
        return intent2;
    }

    public static Intent createPlatformServiceIntent(Context context) {
        for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
            Intent validateServiceIntent = validateServiceIntent(context, new Intent(INTENT_ACTION_PLATFORM_SERVICE).setPackage(nativeAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeAppInfo);
            if (validateServiceIntent != null) {
                return validateServiceIntent;
            }
        }
        return null;
    }

    public static int getProtocolVersionFromIntent(Intent intent) {
        return intent.getIntExtra(EXTRA_PROTOCOL_VERSION, 0);
    }

    public static UUID getCallIdFromIntent(Intent intent) {
        String stringExtra;
        if (intent == null) {
            return null;
        }
        if (isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent))) {
            Bundle bundleExtra = intent.getBundleExtra(EXTRA_PROTOCOL_BRIDGE_ARGS);
            stringExtra = bundleExtra != null ? bundleExtra.getString("action_id") : null;
        } else {
            stringExtra = intent.getStringExtra(EXTRA_PROTOCOL_CALL_ID);
        }
        if (stringExtra == null) {
            return null;
        }
        try {
            return UUID.fromString(stringExtra);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public static Bundle getBridgeArgumentsFromIntent(Intent intent) {
        if (!isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent))) {
            return null;
        }
        return intent.getBundleExtra(EXTRA_PROTOCOL_BRIDGE_ARGS);
    }

    public static Bundle getMethodArgumentsFromIntent(Intent intent) {
        return !isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent)) ? intent.getExtras() : intent.getBundleExtra(EXTRA_PROTOCOL_METHOD_ARGS);
    }

    public static Bundle getSuccessResultsFromIntent(Intent intent) {
        int protocolVersionFromIntent = getProtocolVersionFromIntent(intent);
        Bundle extras = intent.getExtras();
        return (!isVersionCompatibleWithBucketedIntent(protocolVersionFromIntent) || extras == null) ? extras : extras.getBundle(EXTRA_PROTOCOL_METHOD_RESULTS);
    }

    public static boolean isErrorResult(Intent intent) {
        Bundle bridgeArgumentsFromIntent = getBridgeArgumentsFromIntent(intent);
        return bridgeArgumentsFromIntent != null ? bridgeArgumentsFromIntent.containsKey("error") : intent.hasExtra(STATUS_ERROR_TYPE);
    }

    public static Bundle getErrorDataFromResultIntent(Intent intent) {
        if (!isErrorResult(intent)) {
            return null;
        }
        Bundle bridgeArgumentsFromIntent = getBridgeArgumentsFromIntent(intent);
        if (bridgeArgumentsFromIntent != null) {
            return bridgeArgumentsFromIntent.getBundle("error");
        }
        return intent.getExtras();
    }

    public static FacebookException getExceptionFromErrorData(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String string = bundle.getString("error_type");
        if (string == null) {
            string = bundle.getString(STATUS_ERROR_TYPE);
        }
        String string2 = bundle.getString(BRIDGE_ARG_ERROR_DESCRIPTION);
        if (string2 == null) {
            string2 = bundle.getString(STATUS_ERROR_DESCRIPTION);
        }
        if (string != null && string.equalsIgnoreCase(ERROR_USER_CANCELED)) {
            return new FacebookOperationCanceledException(string2);
        }
        return new FacebookException(string2);
    }

    public static Bundle createBundleForException(FacebookException facebookException) {
        if (facebookException == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString(BRIDGE_ARG_ERROR_DESCRIPTION, facebookException.toString());
        if (facebookException instanceof FacebookOperationCanceledException) {
            bundle.putString("error_type", ERROR_USER_CANCELED);
            return bundle;
        }
        return bundle;
    }

    public static int getLatestAvailableProtocolVersionForService(int i) {
        return getLatestAvailableProtocolVersionForAppInfoList(facebookAppInfoList, new int[]{i}).getProtocolVersion();
    }

    public static ProtocolVersionQueryResult getLatestAvailableProtocolVersionForAction(String str, int[] iArr) {
        return getLatestAvailableProtocolVersionForAppInfoList(actionToAppInfoMap.get(str), iArr);
    }

    private static ProtocolVersionQueryResult getLatestAvailableProtocolVersionForAppInfoList(List<NativeAppInfo> list, int[] iArr) {
        updateAllAvailableProtocolVersionsAsync();
        if (list == null) {
            return ProtocolVersionQueryResult.createEmpty();
        }
        for (NativeAppInfo nativeAppInfo : list) {
            int computeLatestAvailableVersionFromVersionSpec = computeLatestAvailableVersionFromVersionSpec(nativeAppInfo.getAvailableVersions(), getLatestKnownVersion(), iArr);
            if (computeLatestAvailableVersionFromVersionSpec != -1) {
                return ProtocolVersionQueryResult.create(nativeAppInfo, computeLatestAvailableVersionFromVersionSpec);
            }
        }
        return ProtocolVersionQueryResult.createEmpty();
    }

    public static void updateAllAvailableProtocolVersionsAsync() {
        if (protocolVersionsAsyncUpdating.compareAndSet(false, true)) {
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.NativeProtocol.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        for (NativeAppInfo nativeAppInfo : NativeProtocol.facebookAppInfoList) {
                            nativeAppInfo.fetchAvailableVersions(true);
                        }
                    } finally {
                        NativeProtocol.protocolVersionsAsyncUpdating.set(false);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TreeSet<Integer> fetchAllAvailableProtocolVersionsForAppInfo(NativeAppInfo nativeAppInfo) {
        Cursor cursor;
        ProviderInfo providerInfo;
        TreeSet<Integer> treeSet = new TreeSet<>();
        ContentResolver contentResolver = FacebookSdk.getApplicationContext().getContentResolver();
        String[] strArr = {"version"};
        Uri buildPlatformProviderVersionURI = buildPlatformProviderVersionURI(nativeAppInfo);
        try {
            try {
                providerInfo = FacebookSdk.getApplicationContext().getPackageManager().resolveContentProvider(nativeAppInfo.getPackage() + PLATFORM_PROVIDER, 0);
            } catch (RuntimeException e) {
                Log.e(TAG, "Failed to query content resolver.", e);
                providerInfo = null;
            }
            if (providerInfo != null) {
                try {
                    cursor = contentResolver.query(buildPlatformProviderVersionURI, strArr, null, null, null);
                } catch (NullPointerException | SecurityException e2) {
                    Log.e(TAG, "Failed to query content resolver.");
                    cursor = null;
                }
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            treeSet.add(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("version"))));
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
            } else {
                cursor = null;
            }
            if (cursor != null) {
                cursor.close();
            }
            return treeSet;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    public static int computeLatestAvailableVersionFromVersionSpec(TreeSet<Integer> treeSet, int i, int[] iArr) {
        Iterator<Integer> descendingIterator = treeSet.descendingIterator();
        int i2 = -1;
        int length = iArr.length - 1;
        while (descendingIterator.hasNext()) {
            int intValue = descendingIterator.next().intValue();
            int max = Math.max(i2, intValue);
            int i3 = length;
            while (i3 >= 0 && iArr[i3] > intValue) {
                i3--;
            }
            if (i3 < 0) {
                return -1;
            }
            if (iArr[i3] == intValue) {
                if (i3 % 2 != 0) {
                    return -1;
                }
                return Math.min(max, i);
            }
            length = i3;
            i2 = max;
        }
        return -1;
    }

    private static Uri buildPlatformProviderVersionURI(NativeAppInfo nativeAppInfo) {
        return Uri.parse(CONTENT_SCHEME + nativeAppInfo.getPackage() + PLATFORM_PROVIDER_VERSIONS);
    }

    /* loaded from: classes.dex */
    public static class ProtocolVersionQueryResult {
        private NativeAppInfo nativeAppInfo;
        private int protocolVersion;

        public static ProtocolVersionQueryResult create(NativeAppInfo nativeAppInfo, int i) {
            ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult();
            protocolVersionQueryResult.nativeAppInfo = nativeAppInfo;
            protocolVersionQueryResult.protocolVersion = i;
            return protocolVersionQueryResult;
        }

        public static ProtocolVersionQueryResult createEmpty() {
            ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult();
            protocolVersionQueryResult.protocolVersion = -1;
            return protocolVersionQueryResult;
        }

        private ProtocolVersionQueryResult() {
        }

        public NativeAppInfo getAppInfo() {
            return this.nativeAppInfo;
        }

        public int getProtocolVersion() {
            return this.protocolVersion;
        }
    }
}
