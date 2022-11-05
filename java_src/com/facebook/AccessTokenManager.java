package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.l;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AccessTokenManager {
    static final String ACTION_CURRENT_ACCESS_TOKEN_CHANGED = "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED";
    static final String EXTRA_NEW_ACCESS_TOKEN = "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN";
    static final String EXTRA_OLD_ACCESS_TOKEN = "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN";
    private static final String ME_PERMISSIONS_GRAPH_PATH = "me/permissions";
    static final String SHARED_PREFERENCES_NAME = "com.facebook.AccessTokenManager.SharedPreferences";
    static final String TAG = "AccessTokenManager";
    private static final String TOKEN_EXTEND_GRAPH_PATH = "oauth/access_token";
    private static final int TOKEN_EXTEND_RETRY_SECONDS = 3600;
    private static final int TOKEN_EXTEND_THRESHOLD_SECONDS = 86400;
    private static volatile AccessTokenManager instance;
    private final AccessTokenCache accessTokenCache;
    private AccessToken currentAccessToken;
    private final l localBroadcastManager;
    private AtomicBoolean tokenRefreshInProgress = new AtomicBoolean(false);
    private Date lastAttemptedTokenExtendDate = new Date(0);

    AccessTokenManager(l lVar, AccessTokenCache accessTokenCache) {
        Validate.notNull(lVar, "localBroadcastManager");
        Validate.notNull(accessTokenCache, "accessTokenCache");
        this.localBroadcastManager = lVar;
        this.accessTokenCache = accessTokenCache;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessTokenManager getInstance() {
        if (instance == null) {
            synchronized (AccessTokenManager.class) {
                if (instance == null) {
                    instance = new AccessTokenManager(l.a(FacebookSdk.getApplicationContext()), new AccessTokenCache());
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessToken getCurrentAccessToken() {
        return this.currentAccessToken;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean loadCurrentAccessToken() {
        AccessToken load = this.accessTokenCache.load();
        if (load != null) {
            setCurrentAccessToken(load, false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentAccessToken(AccessToken accessToken) {
        setCurrentAccessToken(accessToken, true);
    }

    private void setCurrentAccessToken(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.currentAccessToken;
        this.currentAccessToken = accessToken;
        this.tokenRefreshInProgress.set(false);
        this.lastAttemptedTokenExtendDate = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.accessTokenCache.save(accessToken);
            } else {
                this.accessTokenCache.clear();
                Utility.clearFacebookCookies(FacebookSdk.getApplicationContext());
            }
        }
        if (!Utility.areObjectsEqual(accessToken2, accessToken)) {
            sendCurrentAccessTokenChangedBroadcast(accessToken2, accessToken);
        }
    }

    private void sendCurrentAccessTokenChangedBroadcast(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent(ACTION_CURRENT_ACCESS_TOKEN_CHANGED);
        intent.putExtra(EXTRA_OLD_ACCESS_TOKEN, accessToken);
        intent.putExtra(EXTRA_NEW_ACCESS_TOKEN, accessToken2);
        this.localBroadcastManager.a(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void extendAccessTokenIfNeeded() {
        if (shouldExtendAccessToken()) {
            refreshCurrentAccessToken(null);
        }
    }

    private boolean shouldExtendAccessToken() {
        if (this.currentAccessToken == null) {
            return false;
        }
        Long valueOf = Long.valueOf(new Date().getTime());
        return this.currentAccessToken.getSource().canExtendToken() && valueOf.longValue() - this.lastAttemptedTokenExtendDate.getTime() > 3600000 && valueOf.longValue() - this.currentAccessToken.getLastRefresh().getTime() > 86400000;
    }

    private static GraphRequest createGrantedPermissionsRequest(AccessToken accessToken, GraphRequest.Callback callback) {
        return new GraphRequest(accessToken, ME_PERMISSIONS_GRAPH_PATH, new Bundle(), HttpMethod.GET, callback);
    }

    private static GraphRequest createExtendAccessTokenRequest(AccessToken accessToken, GraphRequest.Callback callback) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        return new GraphRequest(accessToken, TOKEN_EXTEND_GRAPH_PATH, bundle, HttpMethod.GET, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RefreshResult {
        public String accessToken;
        public int expiresAt;

        private RefreshResult() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refreshCurrentAccessToken(final AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            refreshCurrentAccessTokenImpl(accessTokenRefreshCallback);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.AccessTokenManager.1
                @Override // java.lang.Runnable
                public void run() {
                    AccessTokenManager.this.refreshCurrentAccessTokenImpl(accessTokenRefreshCallback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshCurrentAccessTokenImpl(final AccessToken.AccessTokenRefreshCallback accessTokenRefreshCallback) {
        final AccessToken accessToken = this.currentAccessToken;
        if (accessToken == null) {
            if (accessTokenRefreshCallback != null) {
                accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("No current access token to refresh"));
            }
        } else if (!this.tokenRefreshInProgress.compareAndSet(false, true)) {
            if (accessTokenRefreshCallback != null) {
                accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("Refresh already in progress"));
            }
        } else {
            this.lastAttemptedTokenExtendDate = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final RefreshResult refreshResult = new RefreshResult();
            GraphRequestBatch graphRequestBatch = new GraphRequestBatch(createGrantedPermissionsRequest(accessToken, new GraphRequest.Callback() { // from class: com.facebook.AccessTokenManager.2
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    JSONArray optJSONArray;
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
                        atomicBoolean.set(true);
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString("permission");
                                String optString2 = optJSONObject.optString("status");
                                if (!Utility.isNullOrEmpty(optString) && !Utility.isNullOrEmpty(optString2)) {
                                    String lowerCase = optString2.toLowerCase(Locale.US);
                                    if (lowerCase.equals("granted")) {
                                        hashSet.add(optString);
                                    } else if (lowerCase.equals("declined")) {
                                        hashSet2.add(optString);
                                    } else {
                                        Log.w(AccessTokenManager.TAG, "Unexpected status: " + lowerCase);
                                    }
                                }
                            }
                        }
                    }
                }
            }), createExtendAccessTokenRequest(accessToken, new GraphRequest.Callback() { // from class: com.facebook.AccessTokenManager.3
                @Override // com.facebook.GraphRequest.Callback
                public void onCompleted(GraphResponse graphResponse) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    if (jSONObject != null) {
                        refreshResult.accessToken = jSONObject.optString("access_token");
                        refreshResult.expiresAt = jSONObject.optInt("expires_at");
                    }
                }
            }));
            graphRequestBatch.addCallback(new GraphRequestBatch.Callback() { // from class: com.facebook.AccessTokenManager.4
                @Override // com.facebook.GraphRequestBatch.Callback
                public void onBatchCompleted(GraphRequestBatch graphRequestBatch2) {
                    AccessToken accessToken2;
                    try {
                        if (AccessTokenManager.getInstance().getCurrentAccessToken() == null || AccessTokenManager.getInstance().getCurrentAccessToken().getUserId() != accessToken.getUserId()) {
                            if (accessTokenRefreshCallback != null) {
                                accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("No current access token to refresh"));
                            }
                            AccessTokenManager.this.tokenRefreshInProgress.set(false);
                            if (accessTokenRefreshCallback == null || 0 == 0) {
                                return;
                            }
                            accessTokenRefreshCallback.OnTokenRefreshed(null);
                        } else if (!atomicBoolean.get() && refreshResult.accessToken == null && refreshResult.expiresAt == 0) {
                            if (accessTokenRefreshCallback != null) {
                                accessTokenRefreshCallback.OnTokenRefreshFailed(new FacebookException("Failed to refresh access token"));
                            }
                            AccessTokenManager.this.tokenRefreshInProgress.set(false);
                            if (accessTokenRefreshCallback == null || 0 == 0) {
                                return;
                            }
                            accessTokenRefreshCallback.OnTokenRefreshed(null);
                        } else {
                            AccessToken accessToken3 = new AccessToken(refreshResult.accessToken != null ? refreshResult.accessToken : accessToken.getToken(), accessToken.getApplicationId(), accessToken.getUserId(), atomicBoolean.get() ? hashSet : accessToken.getPermissions(), atomicBoolean.get() ? hashSet2 : accessToken.getDeclinedPermissions(), accessToken.getSource(), refreshResult.expiresAt != 0 ? new Date(refreshResult.expiresAt * 1000) : accessToken.getExpires(), new Date());
                            try {
                                AccessTokenManager.getInstance().setCurrentAccessToken(accessToken3);
                                AccessTokenManager.this.tokenRefreshInProgress.set(false);
                                if (accessTokenRefreshCallback == null || accessToken3 == null) {
                                    return;
                                }
                                accessTokenRefreshCallback.OnTokenRefreshed(accessToken3);
                            } catch (Throwable th) {
                                accessToken2 = accessToken3;
                                th = th;
                                AccessTokenManager.this.tokenRefreshInProgress.set(false);
                                if (accessTokenRefreshCallback != null && accessToken2 != null) {
                                    accessTokenRefreshCallback.OnTokenRefreshed(accessToken2);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        accessToken2 = null;
                    }
                }
            });
            graphRequestBatch.executeAsync();
        }
    }
}
