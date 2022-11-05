package com.facebook.share.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.l;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.internal.WorkQueue;
import com.facebook.share.internal.LikeContent;
import com.facebook.share.widget.LikeView;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class LikeActionController {
    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR = "com.facebook.sdk.LikeActionController.DID_ERROR";
    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_RESET = "com.facebook.sdk.LikeActionController.DID_RESET";
    public static final String ACTION_LIKE_ACTION_CONTROLLER_UPDATED = "com.facebook.sdk.LikeActionController.UPDATED";
    public static final String ACTION_OBJECT_ID_KEY = "com.facebook.sdk.LikeActionController.OBJECT_ID";
    private static final int ERROR_CODE_OBJECT_ALREADY_LIKED = 3501;
    public static final String ERROR_INVALID_OBJECT_ID = "Invalid Object Id";
    public static final String ERROR_PUBLISH_ERROR = "Unable to publish the like/unlike action";
    private static final String JSON_BOOL_IS_OBJECT_LIKED_KEY = "is_object_liked";
    private static final String JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE = "facebook_dialog_analytics_bundle";
    private static final String JSON_INT_OBJECT_TYPE_KEY = "object_type";
    private static final String JSON_INT_VERSION_KEY = "com.facebook.share.internal.LikeActionController.version";
    private static final String JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY = "like_count_string_without_like";
    private static final String JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY = "like_count_string_with_like";
    private static final String JSON_STRING_OBJECT_ID_KEY = "object_id";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY = "social_sentence_without_like";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY = "social_sentence_with_like";
    private static final String JSON_STRING_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final String LIKE_ACTION_CONTROLLER_STORE = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
    private static final String LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY = "OBJECT_SUFFIX";
    private static final String LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY = "PENDING_CONTROLLER_KEY";
    private static final int LIKE_ACTION_CONTROLLER_VERSION = 3;
    private static final String LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY = "like_count_string";
    private static final String LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY = "object_is_liked";
    private static final String LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY = "social_sentence";
    private static final String LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final int MAX_CACHE_SIZE = 128;
    private static final int MAX_OBJECT_SUFFIX = 1000;
    private static AccessTokenTracker accessTokenTracker;
    private static FileLruCache controllerDiskCache;
    private static Handler handler;
    private static boolean isInitialized;
    private static String objectIdForPendingController;
    private static volatile int objectSuffix;
    private AppEventsLogger appEventsLogger;
    private Bundle facebookDialogAnalyticsBundle;
    private boolean isObjectLiked;
    private boolean isObjectLikedOnServer;
    private boolean isPendingLikeOrUnlike;
    private String likeCountStringWithLike;
    private String likeCountStringWithoutLike;
    private String objectId;
    private boolean objectIsPage;
    private LikeView.ObjectType objectType;
    private String socialSentenceWithLike;
    private String socialSentenceWithoutLike;
    private String unlikeToken;
    private String verifiedObjectId;
    private static final String TAG = LikeActionController.class.getSimpleName();
    private static final ConcurrentHashMap<String, LikeActionController> cache = new ConcurrentHashMap<>();
    private static WorkQueue mruCacheWorkQueue = new WorkQueue(1);
    private static WorkQueue diskIOWorkQueue = new WorkQueue(1);

    /* loaded from: classes.dex */
    public interface CreationCallback {
        void onComplete(LikeActionController likeActionController, FacebookException facebookException);
    }

    /* loaded from: classes.dex */
    private interface LikeRequestWrapper extends RequestWrapper {
        String getUnlikeToken();

        boolean isObjectLiked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface RequestCompletionCallback {
        void onComplete();
    }

    /* loaded from: classes.dex */
    private interface RequestWrapper {
        void addToBatch(GraphRequestBatch graphRequestBatch);

        FacebookRequestError getError();
    }

    public static boolean handleOnActivityResult(final int i, final int i2, final Intent intent) {
        if (Utility.isNullOrEmpty(objectIdForPendingController)) {
            objectIdForPendingController = FacebookSdk.getApplicationContext().getSharedPreferences(LIKE_ACTION_CONTROLLER_STORE, 0).getString(LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY, null);
        }
        if (Utility.isNullOrEmpty(objectIdForPendingController)) {
            return false;
        }
        getControllerForObjectId(objectIdForPendingController, LikeView.ObjectType.UNKNOWN, new CreationCallback() { // from class: com.facebook.share.internal.LikeActionController.1
            @Override // com.facebook.share.internal.LikeActionController.CreationCallback
            public void onComplete(LikeActionController likeActionController, FacebookException facebookException) {
                if (facebookException == null) {
                    likeActionController.onActivityResult(i, i2, intent);
                } else {
                    Utility.logd(LikeActionController.TAG, facebookException);
                }
            }
        });
        return true;
    }

    public static void getControllerForObjectId(String str, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        if (!isInitialized) {
            performFirstInitialize();
        }
        LikeActionController controllerFromInMemoryCache = getControllerFromInMemoryCache(str);
        if (controllerFromInMemoryCache != null) {
            verifyControllerAndInvokeCallback(controllerFromInMemoryCache, objectType, creationCallback);
        } else {
            diskIOWorkQueue.addActiveWorkItem(new CreateLikeActionControllerWorkItem(str, objectType, creationCallback));
        }
    }

    private static void verifyControllerAndInvokeCallback(LikeActionController likeActionController, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        FacebookException facebookException;
        LikeActionController likeActionController2 = null;
        LikeView.ObjectType mostSpecificObjectType = ShareInternalUtility.getMostSpecificObjectType(objectType, likeActionController.objectType);
        if (mostSpecificObjectType == null) {
            facebookException = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", likeActionController.objectId, likeActionController.objectType.toString(), objectType.toString());
        } else {
            likeActionController.objectType = mostSpecificObjectType;
            facebookException = null;
            likeActionController2 = likeActionController;
        }
        invokeCallbackWithController(creationCallback, likeActionController2, facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void createControllerForObjectIdAndType(String str, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        LikeActionController controllerFromInMemoryCache = getControllerFromInMemoryCache(str);
        if (controllerFromInMemoryCache != null) {
            verifyControllerAndInvokeCallback(controllerFromInMemoryCache, objectType, creationCallback);
            return;
        }
        LikeActionController deserializeFromDiskSynchronously = deserializeFromDiskSynchronously(str);
        if (deserializeFromDiskSynchronously == null) {
            deserializeFromDiskSynchronously = new LikeActionController(str, objectType);
            serializeToDiskAsync(deserializeFromDiskSynchronously);
        }
        putControllerInMemoryCache(str, deserializeFromDiskSynchronously);
        handler.post(new Runnable() { // from class: com.facebook.share.internal.LikeActionController.2
            @Override // java.lang.Runnable
            public void run() {
                LikeActionController.this.refreshStatusAsync();
            }
        });
        invokeCallbackWithController(creationCallback, deserializeFromDiskSynchronously, null);
    }

    private static synchronized void performFirstInitialize() {
        synchronized (LikeActionController.class) {
            if (!isInitialized) {
                handler = new Handler(Looper.getMainLooper());
                objectSuffix = FacebookSdk.getApplicationContext().getSharedPreferences(LIKE_ACTION_CONTROLLER_STORE, 0).getInt(LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY, 1);
                controllerDiskCache = new FileLruCache(TAG, new FileLruCache.Limits());
                registerAccessTokenTracker();
                CallbackManagerImpl.registerStaticCallback(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.share.internal.LikeActionController.3
                    @Override // com.facebook.internal.CallbackManagerImpl.Callback
                    public boolean onActivityResult(int i, Intent intent) {
                        return LikeActionController.handleOnActivityResult(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), i, intent);
                    }
                });
                isInitialized = true;
            }
        }
    }

    private static void invokeCallbackWithController(final CreationCallback creationCallback, final LikeActionController likeActionController, final FacebookException facebookException) {
        if (creationCallback != null) {
            handler.post(new Runnable() { // from class: com.facebook.share.internal.LikeActionController.4
                @Override // java.lang.Runnable
                public void run() {
                    CreationCallback.this.onComplete(likeActionController, facebookException);
                }
            });
        }
    }

    private static void registerAccessTokenTracker() {
        accessTokenTracker = new AccessTokenTracker() { // from class: com.facebook.share.internal.LikeActionController.5
            @Override // com.facebook.AccessTokenTracker
            protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
                Context applicationContext = FacebookSdk.getApplicationContext();
                if (accessToken2 == null) {
                    int unused = LikeActionController.objectSuffix = (LikeActionController.objectSuffix + 1) % 1000;
                    applicationContext.getSharedPreferences(LikeActionController.LIKE_ACTION_CONTROLLER_STORE, 0).edit().putInt(LikeActionController.LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY, LikeActionController.objectSuffix).apply();
                    LikeActionController.cache.clear();
                    LikeActionController.controllerDiskCache.clearCache();
                }
                LikeActionController.broadcastAction(null, LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_RESET);
            }
        };
    }

    private static void putControllerInMemoryCache(String str, LikeActionController likeActionController) {
        String cacheKeyForObjectId = getCacheKeyForObjectId(str);
        mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(cacheKeyForObjectId, true));
        cache.put(cacheKeyForObjectId, likeActionController);
    }

    private static LikeActionController getControllerFromInMemoryCache(String str) {
        String cacheKeyForObjectId = getCacheKeyForObjectId(str);
        LikeActionController likeActionController = cache.get(cacheKeyForObjectId);
        if (likeActionController != null) {
            mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(cacheKeyForObjectId, false));
        }
        return likeActionController;
    }

    private static void serializeToDiskAsync(LikeActionController likeActionController) {
        String serializeToJson = serializeToJson(likeActionController);
        String cacheKeyForObjectId = getCacheKeyForObjectId(likeActionController.objectId);
        if (!Utility.isNullOrEmpty(serializeToJson) && !Utility.isNullOrEmpty(cacheKeyForObjectId)) {
            diskIOWorkQueue.addActiveWorkItem(new SerializeToDiskWorkItem(cacheKeyForObjectId, serializeToJson));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void serializeToDiskSynchronously(String str, String str2) {
        OutputStream outputStream = null;
        try {
            try {
                outputStream = controllerDiskCache.openPutStream(str);
                outputStream.write(str2.getBytes());
                if (outputStream != null) {
                    Utility.closeQuietly(outputStream);
                }
            } catch (IOException e) {
                Log.e(TAG, "Unable to serialize controller to disk", e);
                if (outputStream != null) {
                    Utility.closeQuietly(outputStream);
                }
            }
        } catch (Throwable th) {
            if (outputStream != null) {
                Utility.closeQuietly(outputStream);
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static LikeActionController deserializeFromDiskSynchronously(String str) {
        Throwable th;
        InputStream inputStream;
        LikeActionController likeActionController = null;
        try {
            try {
                inputStream = controllerDiskCache.get(getCacheKeyForObjectId(str));
                if (inputStream != null) {
                    try {
                        String readStreamToString = Utility.readStreamToString(inputStream);
                        if (!Utility.isNullOrEmpty(readStreamToString)) {
                            likeActionController = deserializeFromJson(readStreamToString);
                        }
                    } catch (IOException e) {
                        e = e;
                        Log.e(TAG, "Unable to deserialize controller from disk", e);
                        if (inputStream != null) {
                            Utility.closeQuietly(inputStream);
                        }
                        return likeActionController;
                    }
                }
                if (inputStream != null) {
                    Utility.closeQuietly(inputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    Utility.closeQuietly(null);
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
            }
            throw th;
        }
        return likeActionController;
    }

    private static LikeActionController deserializeFromJson(String str) {
        LikeActionController likeActionController;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            Log.e(TAG, "Unable to deserialize controller from JSON", e);
            likeActionController = null;
        }
        if (jSONObject.optInt(JSON_INT_VERSION_KEY, -1) != 3) {
            return null;
        }
        likeActionController = new LikeActionController(jSONObject.getString("object_id"), LikeView.ObjectType.fromInt(jSONObject.optInt("object_type", LikeView.ObjectType.UNKNOWN.getValue())));
        likeActionController.likeCountStringWithLike = jSONObject.optString(JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY, null);
        likeActionController.likeCountStringWithoutLike = jSONObject.optString(JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY, null);
        likeActionController.socialSentenceWithLike = jSONObject.optString(JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY, null);
        likeActionController.socialSentenceWithoutLike = jSONObject.optString(JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY, null);
        likeActionController.isObjectLiked = jSONObject.optBoolean(JSON_BOOL_IS_OBJECT_LIKED_KEY);
        likeActionController.unlikeToken = jSONObject.optString("unlike_token", null);
        JSONObject optJSONObject = jSONObject.optJSONObject(JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE);
        if (optJSONObject != null) {
            likeActionController.facebookDialogAnalyticsBundle = BundleJSONConverter.convertToBundle(optJSONObject);
        }
        return likeActionController;
    }

    private static String serializeToJson(LikeActionController likeActionController) {
        JSONObject convertToJSON;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JSON_INT_VERSION_KEY, 3);
            jSONObject.put("object_id", likeActionController.objectId);
            jSONObject.put("object_type", likeActionController.objectType.getValue());
            jSONObject.put(JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY, likeActionController.likeCountStringWithLike);
            jSONObject.put(JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY, likeActionController.likeCountStringWithoutLike);
            jSONObject.put(JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY, likeActionController.socialSentenceWithLike);
            jSONObject.put(JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY, likeActionController.socialSentenceWithoutLike);
            jSONObject.put(JSON_BOOL_IS_OBJECT_LIKED_KEY, likeActionController.isObjectLiked);
            jSONObject.put("unlike_token", likeActionController.unlikeToken);
            if (likeActionController.facebookDialogAnalyticsBundle != null && (convertToJSON = BundleJSONConverter.convertToJSON(likeActionController.facebookDialogAnalyticsBundle)) != null) {
                jSONObject.put(JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE, convertToJSON);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.e(TAG, "Unable to serialize controller to JSON", e);
            return null;
        }
    }

    private static String getCacheKeyForObjectId(String str) {
        String str2 = null;
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (currentAccessToken != null) {
            str2 = currentAccessToken.getToken();
        }
        if (str2 != null) {
            str2 = Utility.md5hash(str2);
        }
        return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", str, Utility.coerceValueIfNullOrEmpty(str2, ""), Integer.valueOf(objectSuffix));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void broadcastAction(LikeActionController likeActionController, String str) {
        broadcastAction(likeActionController, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void broadcastAction(LikeActionController likeActionController, String str, Bundle bundle) {
        Intent intent = new Intent(str);
        if (likeActionController != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString(ACTION_OBJECT_ID_KEY, likeActionController.getObjectId());
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        l.a(FacebookSdk.getApplicationContext()).a(intent);
    }

    private LikeActionController(String str, LikeView.ObjectType objectType) {
        this.objectId = str;
        this.objectType = objectType;
    }

    public String getObjectId() {
        return this.objectId;
    }

    public String getLikeCountString() {
        return this.isObjectLiked ? this.likeCountStringWithLike : this.likeCountStringWithoutLike;
    }

    public String getSocialSentence() {
        return this.isObjectLiked ? this.socialSentenceWithLike : this.socialSentenceWithoutLike;
    }

    public boolean isObjectLiked() {
        return this.isObjectLiked;
    }

    public boolean shouldEnableView() {
        if (LikeDialog.canShowNativeDialog() || LikeDialog.canShowWebFallback()) {
            return true;
        }
        if (this.objectIsPage || this.objectType == LikeView.ObjectType.PAGE) {
            return false;
        }
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        return (currentAccessToken == null || currentAccessToken.getPermissions() == null || !currentAccessToken.getPermissions().contains("publish_actions")) ? false : true;
    }

    public void toggleLike(Activity activity, FragmentWrapper fragmentWrapper, Bundle bundle) {
        boolean z = true;
        boolean z2 = !this.isObjectLiked;
        if (canUseOGPublish()) {
            updateLikeState(z2);
            if (this.isPendingLikeOrUnlike) {
                getAppEventsLogger().logSdkEvent(AnalyticsEvents.EVENT_LIKE_VIEW_DID_UNDO_QUICKLY, null, bundle);
                return;
            } else if (!publishLikeOrUnlikeAsync(z2, bundle)) {
                if (z2) {
                    z = false;
                }
                updateLikeState(z);
                presentLikeDialog(activity, fragmentWrapper, bundle);
                return;
            } else {
                return;
            }
        }
        presentLikeDialog(activity, fragmentWrapper, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AppEventsLogger getAppEventsLogger() {
        if (this.appEventsLogger == null) {
            this.appEventsLogger = AppEventsLogger.newLogger(FacebookSdk.getApplicationContext());
        }
        return this.appEventsLogger;
    }

    private boolean publishLikeOrUnlikeAsync(boolean z, Bundle bundle) {
        if (canUseOGPublish()) {
            if (z) {
                publishLikeAsync(bundle);
                return true;
            } else if (!Utility.isNullOrEmpty(this.unlikeToken)) {
                publishUnlikeAsync(bundle);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publishDidError(boolean z) {
        updateLikeState(z);
        Bundle bundle = new Bundle();
        bundle.putString(NativeProtocol.STATUS_ERROR_DESCRIPTION, ERROR_PUBLISH_ERROR);
        broadcastAction(this, ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR, bundle);
    }

    private void updateLikeState(boolean z) {
        updateState(z, this.likeCountStringWithLike, this.likeCountStringWithoutLike, this.socialSentenceWithLike, this.socialSentenceWithoutLike, this.unlikeToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateState(boolean z, String str, String str2, String str3, String str4, String str5) {
        String coerceValueIfNullOrEmpty = Utility.coerceValueIfNullOrEmpty(str, null);
        String coerceValueIfNullOrEmpty2 = Utility.coerceValueIfNullOrEmpty(str2, null);
        String coerceValueIfNullOrEmpty3 = Utility.coerceValueIfNullOrEmpty(str3, null);
        String coerceValueIfNullOrEmpty4 = Utility.coerceValueIfNullOrEmpty(str4, null);
        String coerceValueIfNullOrEmpty5 = Utility.coerceValueIfNullOrEmpty(str5, null);
        if (z != this.isObjectLiked || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty, this.likeCountStringWithLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty2, this.likeCountStringWithoutLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty3, this.socialSentenceWithLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty4, this.socialSentenceWithoutLike) || !Utility.areObjectsEqual(coerceValueIfNullOrEmpty5, this.unlikeToken)) {
            this.isObjectLiked = z;
            this.likeCountStringWithLike = coerceValueIfNullOrEmpty;
            this.likeCountStringWithoutLike = coerceValueIfNullOrEmpty2;
            this.socialSentenceWithLike = coerceValueIfNullOrEmpty3;
            this.socialSentenceWithoutLike = coerceValueIfNullOrEmpty4;
            this.unlikeToken = coerceValueIfNullOrEmpty5;
            serializeToDiskAsync(this);
            broadcastAction(this, ACTION_LIKE_ACTION_CONTROLLER_UPDATED);
        }
    }

    private void presentLikeDialog(Activity activity, FragmentWrapper fragmentWrapper, Bundle bundle) {
        String str;
        String objectType;
        if (LikeDialog.canShowNativeDialog()) {
            str = AnalyticsEvents.EVENT_LIKE_VIEW_DID_PRESENT_DIALOG;
        } else if (LikeDialog.canShowWebFallback()) {
            str = AnalyticsEvents.EVENT_LIKE_VIEW_DID_PRESENT_FALLBACK;
        } else {
            logAppEventForError("present_dialog", bundle);
            Utility.logd(TAG, "Cannot show the Like Dialog on this device.");
            broadcastAction(null, ACTION_LIKE_ACTION_CONTROLLER_UPDATED);
            str = null;
        }
        if (str != null) {
            if (this.objectType != null) {
                objectType = this.objectType.toString();
            } else {
                objectType = LikeView.ObjectType.UNKNOWN.toString();
            }
            LikeContent mo178build = new LikeContent.Builder().setObjectId(this.objectId).setObjectType(objectType).mo178build();
            if (fragmentWrapper != null) {
                new LikeDialog(fragmentWrapper).show(mo178build);
            } else {
                new LikeDialog(activity).show(mo178build);
            }
            saveState(bundle);
            getAppEventsLogger().logSdkEvent(AnalyticsEvents.EVENT_LIKE_VIEW_DID_PRESENT_DIALOG, null, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onActivityResult(int i, int i2, Intent intent) {
        ShareInternalUtility.handleActivityResult(i, i2, intent, getResultProcessor(this.facebookDialogAnalyticsBundle));
        clearState();
    }

    private ResultProcessor getResultProcessor(final Bundle bundle) {
        return new ResultProcessor(null) { // from class: com.facebook.share.internal.LikeActionController.6
            @Override // com.facebook.share.internal.ResultProcessor
            public void onSuccess(AppCall appCall, Bundle bundle2) {
                String str;
                if (bundle2 != null && bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY)) {
                    boolean z = bundle2.getBoolean(LikeActionController.LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY);
                    String str2 = LikeActionController.this.likeCountStringWithLike;
                    String str3 = LikeActionController.this.likeCountStringWithoutLike;
                    if (bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY)) {
                        str3 = bundle2.getString(LikeActionController.LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY);
                        str2 = str3;
                    }
                    String str4 = LikeActionController.this.socialSentenceWithLike;
                    String str5 = LikeActionController.this.socialSentenceWithoutLike;
                    if (bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY)) {
                        str5 = bundle2.getString(LikeActionController.LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY);
                        str4 = str5;
                    }
                    if (!bundle2.containsKey(LikeActionController.LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY)) {
                        str = LikeActionController.this.unlikeToken;
                    } else {
                        str = bundle2.getString("unlike_token");
                    }
                    Bundle bundle3 = bundle == null ? new Bundle() : bundle;
                    bundle3.putString(AnalyticsEvents.PARAMETER_CALL_ID, appCall.getCallId().toString());
                    LikeActionController.this.getAppEventsLogger().logSdkEvent(AnalyticsEvents.EVENT_LIKE_VIEW_DIALOG_DID_SUCCEED, null, bundle3);
                    LikeActionController.this.updateState(z, str2, str3, str4, str5, str);
                }
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onError(AppCall appCall, FacebookException facebookException) {
                Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Like Dialog failed with error : %s", facebookException);
                Bundle bundle2 = bundle == null ? new Bundle() : bundle;
                bundle2.putString(AnalyticsEvents.PARAMETER_CALL_ID, appCall.getCallId().toString());
                LikeActionController.this.logAppEventForError("present_dialog", bundle2);
                LikeActionController.broadcastAction(LikeActionController.this, LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR, NativeProtocol.createBundleForException(facebookException));
            }

            @Override // com.facebook.share.internal.ResultProcessor
            public void onCancel(AppCall appCall) {
                onError(appCall, new FacebookOperationCanceledException());
            }
        };
    }

    private void saveState(Bundle bundle) {
        storeObjectIdForPendingController(this.objectId);
        this.facebookDialogAnalyticsBundle = bundle;
        serializeToDiskAsync(this);
    }

    private void clearState() {
        this.facebookDialogAnalyticsBundle = null;
        storeObjectIdForPendingController(null);
    }

    private static void storeObjectIdForPendingController(String str) {
        objectIdForPendingController = str;
        FacebookSdk.getApplicationContext().getSharedPreferences(LIKE_ACTION_CONTROLLER_STORE, 0).edit().putString(LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY, objectIdForPendingController).apply();
    }

    private boolean canUseOGPublish() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        return (this.objectIsPage || this.verifiedObjectId == null || currentAccessToken == null || currentAccessToken.getPermissions() == null || !currentAccessToken.getPermissions().contains("publish_actions")) ? false : true;
    }

    private void publishLikeAsync(final Bundle bundle) {
        this.isPendingLikeOrUnlike = true;
        fetchVerifiedObjectId(new RequestCompletionCallback() { // from class: com.facebook.share.internal.LikeActionController.7
            @Override // com.facebook.share.internal.LikeActionController.RequestCompletionCallback
            public void onComplete() {
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(NativeProtocol.STATUS_ERROR_DESCRIPTION, LikeActionController.ERROR_INVALID_OBJECT_ID);
                    LikeActionController.broadcastAction(LikeActionController.this, LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR, bundle2);
                    return;
                }
                GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
                final PublishLikeRequestWrapper publishLikeRequestWrapper = new PublishLikeRequestWrapper(LikeActionController.this.verifiedObjectId, LikeActionController.this.objectType);
                publishLikeRequestWrapper.addToBatch(graphRequestBatch);
                graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.7.1
                    @Override // com.facebook.GraphRequestBatch.Callback
                    public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                        LikeActionController.this.isPendingLikeOrUnlike = false;
                        if (publishLikeRequestWrapper.getError() != null) {
                            LikeActionController.this.publishDidError(false);
                            return;
                        }
                        LikeActionController.this.unlikeToken = Utility.coerceValueIfNullOrEmpty(publishLikeRequestWrapper.unlikeToken, null);
                        LikeActionController.this.isObjectLikedOnServer = true;
                        LikeActionController.this.getAppEventsLogger().logSdkEvent(AnalyticsEvents.EVENT_LIKE_VIEW_DID_LIKE, null, bundle);
                        LikeActionController.this.publishAgainIfNeeded(bundle);
                    }
                });
                graphRequestBatch.executeAsync();
            }
        });
    }

    private void publishUnlikeAsync(final Bundle bundle) {
        this.isPendingLikeOrUnlike = true;
        GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
        final PublishUnlikeRequestWrapper publishUnlikeRequestWrapper = new PublishUnlikeRequestWrapper(this.unlikeToken);
        publishUnlikeRequestWrapper.addToBatch(graphRequestBatch);
        graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.8
            @Override // com.facebook.GraphRequestBatch.Callback
            public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                LikeActionController.this.isPendingLikeOrUnlike = false;
                if (publishUnlikeRequestWrapper.getError() != null) {
                    LikeActionController.this.publishDidError(true);
                    return;
                }
                LikeActionController.this.unlikeToken = null;
                LikeActionController.this.isObjectLikedOnServer = false;
                LikeActionController.this.getAppEventsLogger().logSdkEvent(AnalyticsEvents.EVENT_LIKE_VIEW_DID_UNLIKE, null, bundle);
                LikeActionController.this.publishAgainIfNeeded(bundle);
            }
        });
        graphRequestBatch.executeAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshStatusAsync() {
        if (AccessToken.getCurrentAccessToken() == null) {
            refreshStatusViaService();
        } else {
            fetchVerifiedObjectId(new RequestCompletionCallback() { // from class: com.facebook.share.internal.LikeActionController.9
                @Override // com.facebook.share.internal.LikeActionController.RequestCompletionCallback
                public void onComplete() {
                    final LikeRequestWrapper getPageLikesRequestWrapper;
                    switch (LikeActionController.this.objectType) {
                        case PAGE:
                            getPageLikesRequestWrapper = new GetPageLikesRequestWrapper(LikeActionController.this.verifiedObjectId);
                            break;
                        default:
                            getPageLikesRequestWrapper = new GetOGObjectLikesRequestWrapper(LikeActionController.this.verifiedObjectId, LikeActionController.this.objectType);
                            break;
                    }
                    final GetEngagementRequestWrapper getEngagementRequestWrapper = new GetEngagementRequestWrapper(LikeActionController.this.verifiedObjectId, LikeActionController.this.objectType);
                    GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
                    getPageLikesRequestWrapper.addToBatch(graphRequestBatch);
                    getEngagementRequestWrapper.addToBatch(graphRequestBatch);
                    graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.9.1
                        @Override // com.facebook.GraphRequestBatch.Callback
                        public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                            if (getPageLikesRequestWrapper.getError() == null && getEngagementRequestWrapper.getError() == null) {
                                LikeActionController.this.updateState(getPageLikesRequestWrapper.isObjectLiked(), getEngagementRequestWrapper.likeCountStringWithLike, getEngagementRequestWrapper.likeCountStringWithoutLike, getEngagementRequestWrapper.socialSentenceStringWithLike, getEngagementRequestWrapper.socialSentenceStringWithoutLike, getPageLikesRequestWrapper.getUnlikeToken());
                            } else {
                                Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Unable to refresh like state for id: '%s'", LikeActionController.this.objectId);
                            }
                        }
                    });
                    graphRequestBatch.executeAsync();
                }
            });
        }
    }

    private void refreshStatusViaService() {
        LikeStatusClient likeStatusClient = new LikeStatusClient(FacebookSdk.getApplicationContext(), FacebookSdk.getApplicationId(), this.objectId);
        if (likeStatusClient.start()) {
            likeStatusClient.setCompletedListener(new PlatformServiceClient.CompletedListener() { // from class: com.facebook.share.internal.LikeActionController.10
                @Override // com.facebook.internal.PlatformServiceClient.CompletedListener
                public void completed(Bundle bundle) {
                    String str;
                    String str2;
                    String str3;
                    String str4;
                    String str5;
                    if (bundle != null && bundle.containsKey(ShareConstants.EXTRA_OBJECT_IS_LIKED)) {
                        boolean z = bundle.getBoolean(ShareConstants.EXTRA_OBJECT_IS_LIKED);
                        if (!bundle.containsKey(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITH_LIKE)) {
                            str = LikeActionController.this.likeCountStringWithLike;
                        } else {
                            str = bundle.getString(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITH_LIKE);
                        }
                        if (!bundle.containsKey(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE)) {
                            str2 = LikeActionController.this.likeCountStringWithoutLike;
                        } else {
                            str2 = bundle.getString(ShareConstants.EXTRA_LIKE_COUNT_STRING_WITHOUT_LIKE);
                        }
                        if (!bundle.containsKey(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITH_LIKE)) {
                            str3 = LikeActionController.this.socialSentenceWithLike;
                        } else {
                            str3 = bundle.getString(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITH_LIKE);
                        }
                        if (!bundle.containsKey(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE)) {
                            str4 = LikeActionController.this.socialSentenceWithoutLike;
                        } else {
                            str4 = bundle.getString(ShareConstants.EXTRA_SOCIAL_SENTENCE_WITHOUT_LIKE);
                        }
                        if (!bundle.containsKey(ShareConstants.EXTRA_UNLIKE_TOKEN)) {
                            str5 = LikeActionController.this.unlikeToken;
                        } else {
                            str5 = bundle.getString(ShareConstants.EXTRA_UNLIKE_TOKEN);
                        }
                        LikeActionController.this.updateState(z, str, str2, str3, str4, str5);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publishAgainIfNeeded(Bundle bundle) {
        if (this.isObjectLiked != this.isObjectLikedOnServer && !publishLikeOrUnlikeAsync(this.isObjectLiked, bundle)) {
            publishDidError(!this.isObjectLiked);
        }
    }

    private void fetchVerifiedObjectId(final RequestCompletionCallback requestCompletionCallback) {
        if (!Utility.isNullOrEmpty(this.verifiedObjectId)) {
            if (requestCompletionCallback != null) {
                requestCompletionCallback.onComplete();
                return;
            }
            return;
        }
        final GetOGObjectIdRequestWrapper getOGObjectIdRequestWrapper = new GetOGObjectIdRequestWrapper(this.objectId, this.objectType);
        final GetPageIdRequestWrapper getPageIdRequestWrapper = new GetPageIdRequestWrapper(this.objectId, this.objectType);
        GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
        getOGObjectIdRequestWrapper.addToBatch(graphRequestBatch);
        getPageIdRequestWrapper.addToBatch(graphRequestBatch);
        graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.share.internal.LikeActionController.11
            @Override // com.facebook.GraphRequestBatch.Callback
            public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                FacebookRequestError error;
                LikeActionController.this.verifiedObjectId = getOGObjectIdRequestWrapper.verifiedObjectId;
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    LikeActionController.this.verifiedObjectId = getPageIdRequestWrapper.verifiedObjectId;
                    LikeActionController.this.objectIsPage = getPageIdRequestWrapper.objectIsPage;
                }
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    Logger.log(LoggingBehavior.DEVELOPER_ERRORS, LikeActionController.TAG, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", LikeActionController.this.objectId);
                    LikeActionController likeActionController = LikeActionController.this;
                    if (getPageIdRequestWrapper.getError() != null) {
                        error = getPageIdRequestWrapper.getError();
                    } else {
                        error = getOGObjectIdRequestWrapper.getError();
                    }
                    likeActionController.logAppEventForError("get_verified_id", error);
                }
                if (requestCompletionCallback != null) {
                    requestCompletionCallback.onComplete();
                }
            }
        });
        graphRequestBatch.executeAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logAppEventForError(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putString("object_id", this.objectId);
        bundle2.putString("object_type", this.objectType.toString());
        bundle2.putString(AnalyticsEvents.PARAMETER_LIKE_VIEW_CURRENT_ACTION, str);
        getAppEventsLogger().logSdkEvent(AnalyticsEvents.EVENT_LIKE_VIEW_ERROR, null, bundle2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logAppEventForError(String str, FacebookRequestError facebookRequestError) {
        JSONObject requestResult;
        Bundle bundle = new Bundle();
        if (facebookRequestError != null && (requestResult = facebookRequestError.getRequestResult()) != null) {
            bundle.putString("error", requestResult.toString());
        }
        logAppEventForError(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class GetOGObjectIdRequestWrapper extends AbstractRequestWrapper {
        String verifiedObjectId;

        GetOGObjectIdRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            Bundle bundle = new Bundle();
            bundle.putString(GraphRequest.FIELDS_PARAM, "og_object.fields(id)");
            bundle.putString("ids", str);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorMessage().contains("og_object")) {
                this.error = null;
            } else {
                Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error getting the FB id for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            }
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONObject optJSONObject;
            JSONObject tryGetJSONObjectFromResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), this.objectId);
            if (tryGetJSONObjectFromResponse != null && (optJSONObject = tryGetJSONObjectFromResponse.optJSONObject("og_object")) != null) {
                this.verifiedObjectId = optJSONObject.optString("id");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class GetPageIdRequestWrapper extends AbstractRequestWrapper {
        boolean objectIsPage;
        String verifiedObjectId;

        GetPageIdRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            Bundle bundle = new Bundle();
            bundle.putString(GraphRequest.FIELDS_PARAM, "id");
            bundle.putString("ids", str);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONObject tryGetJSONObjectFromResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), this.objectId);
            if (tryGetJSONObjectFromResponse != null) {
                this.verifiedObjectId = tryGetJSONObjectFromResponse.optString("id");
                this.objectIsPage = !Utility.isNullOrEmpty(this.verifiedObjectId);
            }
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error getting the FB id for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
        }
    }

    /* loaded from: classes.dex */
    private class PublishLikeRequestWrapper extends AbstractRequestWrapper {
        String unlikeToken;

        PublishLikeRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            Bundle bundle = new Bundle();
            bundle.putString("object", str);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, HttpMethod.POST));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            this.unlikeToken = Utility.safeGetStringFromResponse(graphResponse.getJSONObject(), "id");
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorCode() == LikeActionController.ERROR_CODE_OBJECT_ALREADY_LIKED) {
                this.error = null;
                return;
            }
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error liking object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            LikeActionController.this.logAppEventForError("publish_like", facebookRequestError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PublishUnlikeRequestWrapper extends AbstractRequestWrapper {
        private String unlikeToken;

        PublishUnlikeRequestWrapper(String str) {
            super(null, null);
            this.unlikeToken = str;
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), str, null, HttpMethod.DELETE));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error unliking object with unlike token '%s' : %s", this.unlikeToken, facebookRequestError);
            LikeActionController.this.logAppEventForError("publish_unlike", facebookRequestError);
        }
    }

    /* loaded from: classes.dex */
    private class GetPageLikesRequestWrapper extends AbstractRequestWrapper implements LikeRequestWrapper {
        private boolean objectIsLiked;
        private String pageId;

        GetPageLikesRequestWrapper(String str) {
            super(str, LikeView.ObjectType.PAGE);
            this.objectIsLiked = LikeActionController.this.isObjectLiked;
            this.pageId = str;
            Bundle bundle = new Bundle();
            bundle.putString(GraphRequest.FIELDS_PARAM, "id");
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/likes/" + str, bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONArray tryGetJSONArrayFromResponse = Utility.tryGetJSONArrayFromResponse(graphResponse.getJSONObject(), "data");
            if (tryGetJSONArrayFromResponse != null && tryGetJSONArrayFromResponse.length() > 0) {
                this.objectIsLiked = true;
            }
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching like status for page id '%s': %s", this.pageId, facebookRequestError);
            LikeActionController.this.logAppEventForError("get_page_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public boolean isObjectLiked() {
            return this.objectIsLiked;
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public String getUnlikeToken() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    private class GetOGObjectLikesRequestWrapper extends AbstractRequestWrapper implements LikeRequestWrapper {
        private final String objectId;
        private boolean objectIsLiked;
        private final LikeView.ObjectType objectType;
        private String unlikeToken;

        GetOGObjectLikesRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            this.objectIsLiked = LikeActionController.this.isObjectLiked;
            this.objectId = str;
            this.objectType = objectType;
            Bundle bundle = new Bundle();
            bundle.putString(GraphRequest.FIELDS_PARAM, "id,application");
            bundle.putString("object", this.objectId);
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONArray tryGetJSONArrayFromResponse = Utility.tryGetJSONArrayFromResponse(graphResponse.getJSONObject(), "data");
            if (tryGetJSONArrayFromResponse != null) {
                for (int i = 0; i < tryGetJSONArrayFromResponse.length(); i++) {
                    JSONObject optJSONObject = tryGetJSONArrayFromResponse.optJSONObject(i);
                    if (optJSONObject != null) {
                        this.objectIsLiked = true;
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("application");
                        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                        if (optJSONObject2 != null && currentAccessToken != null && Utility.areObjectsEqual(currentAccessToken.getApplicationId(), optJSONObject2.optString("id"))) {
                            this.unlikeToken = optJSONObject.optString("id");
                        }
                    }
                }
            }
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching like status for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            LikeActionController.this.logAppEventForError("get_og_object_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public boolean isObjectLiked() {
            return this.objectIsLiked;
        }

        @Override // com.facebook.share.internal.LikeActionController.LikeRequestWrapper
        public String getUnlikeToken() {
            return this.unlikeToken;
        }
    }

    /* loaded from: classes.dex */
    private class GetEngagementRequestWrapper extends AbstractRequestWrapper {
        String likeCountStringWithLike;
        String likeCountStringWithoutLike;
        String socialSentenceStringWithLike;
        String socialSentenceStringWithoutLike;

        GetEngagementRequestWrapper(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            this.likeCountStringWithLike = LikeActionController.this.likeCountStringWithLike;
            this.likeCountStringWithoutLike = LikeActionController.this.likeCountStringWithoutLike;
            this.socialSentenceStringWithLike = LikeActionController.this.socialSentenceWithLike;
            this.socialSentenceStringWithoutLike = LikeActionController.this.socialSentenceWithoutLike;
            Bundle bundle = new Bundle();
            bundle.putString(GraphRequest.FIELDS_PARAM, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            bundle.putString("locale", Locale.getDefault().toString());
            setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), str, bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processSuccess(GraphResponse graphResponse) {
            JSONObject tryGetJSONObjectFromResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), "engagement");
            if (tryGetJSONObjectFromResponse != null) {
                this.likeCountStringWithLike = tryGetJSONObjectFromResponse.optString("count_string_with_like", this.likeCountStringWithLike);
                this.likeCountStringWithoutLike = tryGetJSONObjectFromResponse.optString("count_string_without_like", this.likeCountStringWithoutLike);
                this.socialSentenceStringWithLike = tryGetJSONObjectFromResponse.optString(LikeActionController.JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY, this.socialSentenceStringWithLike);
                this.socialSentenceStringWithoutLike = tryGetJSONObjectFromResponse.optString(LikeActionController.JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY, this.socialSentenceStringWithoutLike);
            }
        }

        @Override // com.facebook.share.internal.LikeActionController.AbstractRequestWrapper
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching engagement for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
            LikeActionController.this.logAppEventForError("get_engagement", facebookRequestError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public abstract class AbstractRequestWrapper implements RequestWrapper {
        protected FacebookRequestError error;
        protected String objectId;
        protected LikeView.ObjectType objectType;
        private GraphRequest request;

        protected abstract void processSuccess(GraphResponse graphResponse);

        protected AbstractRequestWrapper(String str, LikeView.ObjectType objectType) {
            this.objectId = str;
            this.objectType = objectType;
        }

        @Override // com.facebook.share.internal.LikeActionController.RequestWrapper
        public void addToBatch(GraphRequestBatch graphRequestBatch) {
            graphRequestBatch.add(this.request);
        }

        @Override // com.facebook.share.internal.LikeActionController.RequestWrapper
        public FacebookRequestError getError() {
            return this.error;
        }

        protected void setRequest(GraphRequest graphRequest) {
            this.request = graphRequest;
            graphRequest.setVersion(FacebookSdk.getGraphApiVersion());
            graphRequest.setCallback(new GraphRequest.Callback() { // from class: com.facebook.share.internal.LikeActionController.AbstractRequestWrapper.1
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    AbstractRequestWrapper.this.error = graphResponse.getError();
                    if (AbstractRequestWrapper.this.error != null) {
                        AbstractRequestWrapper.this.processError(AbstractRequestWrapper.this.error);
                    } else {
                        AbstractRequestWrapper.this.processSuccess(graphResponse);
                    }
                }
            });
        }

        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error running request for object '%s' with type '%s' : %s", this.objectId, this.objectType, facebookRequestError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MRUCacheWorkItem implements Runnable {
        private static ArrayList<String> mruCachedItems = new ArrayList<>();
        private String cacheItem;
        private boolean shouldTrim;

        MRUCacheWorkItem(String str, boolean z) {
            this.cacheItem = str;
            this.shouldTrim = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.cacheItem != null) {
                mruCachedItems.remove(this.cacheItem);
                mruCachedItems.add(0, this.cacheItem);
            }
            if (this.shouldTrim && mruCachedItems.size() >= 128) {
                while (64 < mruCachedItems.size()) {
                    LikeActionController.cache.remove(mruCachedItems.remove(mruCachedItems.size() - 1));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SerializeToDiskWorkItem implements Runnable {
        private String cacheKey;
        private String controllerJson;

        SerializeToDiskWorkItem(String str, String str2) {
            this.cacheKey = str;
            this.controllerJson = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            LikeActionController.serializeToDiskSynchronously(this.cacheKey, this.controllerJson);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CreateLikeActionControllerWorkItem implements Runnable {
        private CreationCallback callback;
        private String objectId;
        private LikeView.ObjectType objectType;

        CreateLikeActionControllerWorkItem(String str, LikeView.ObjectType objectType, CreationCallback creationCallback) {
            this.objectId = str;
            this.objectType = objectType;
            this.callback = creationCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            LikeActionController.createControllerForObjectIdAndType(this.objectId, this.objectType, this.callback);
        }
    }
}
