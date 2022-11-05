package com.facebook;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.common.time.Clock;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AccessToken implements Parcelable {
    public static final String ACCESS_TOKEN_KEY = "access_token";
    private static final String APPLICATION_ID_KEY = "application_id";
    private static final int CURRENT_JSON_FORMAT = 1;
    private static final String DECLINED_PERMISSIONS_KEY = "declined_permissions";
    private static final String EXPIRES_AT_KEY = "expires_at";
    public static final String EXPIRES_IN_KEY = "expires_in";
    private static final String LAST_REFRESH_KEY = "last_refresh";
    private static final String PERMISSIONS_KEY = "permissions";
    private static final String SOURCE_KEY = "source";
    private static final String TOKEN_KEY = "token";
    public static final String USER_ID_KEY = "user_id";
    private static final String VERSION_KEY = "version";
    private final String applicationId;
    private final Set<String> declinedPermissions;
    private final Date expires;
    private final Date lastRefresh;
    private final Set<String> permissions;
    private final AccessTokenSource source;
    private final String token;
    private final String userId;
    private static final Date MAX_DATE = new Date((long) Clock.MAX_TIME);
    private static final Date DEFAULT_EXPIRATION_TIME = MAX_DATE;
    private static final Date DEFAULT_LAST_REFRESH_TIME = new Date();
    private static final AccessTokenSource DEFAULT_ACCESS_TOKEN_SOURCE = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new Parcelable.Creator() { // from class: com.facebook.AccessToken.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public AccessToken mo43createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public AccessToken[] mo44newArray(int i) {
            return new AccessToken[i];
        }
    };

    /* loaded from: classes.dex */
    public interface AccessTokenCreationCallback {
        void onError(FacebookException facebookException);

        void onSuccess(AccessToken accessToken);
    }

    /* loaded from: classes.dex */
    public interface AccessTokenRefreshCallback {
        void OnTokenRefreshFailed(FacebookException facebookException);

        void OnTokenRefreshed(AccessToken accessToken);
    }

    public AccessToken(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, AccessTokenSource accessTokenSource, Date date, Date date2) {
        Validate.notNullOrEmpty(str, "accessToken");
        Validate.notNullOrEmpty(str2, "applicationId");
        Validate.notNullOrEmpty(str3, "userId");
        this.expires = date == null ? DEFAULT_EXPIRATION_TIME : date;
        this.permissions = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.declinedPermissions = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.token = str;
        this.source = accessTokenSource == null ? DEFAULT_ACCESS_TOKEN_SOURCE : accessTokenSource;
        this.lastRefresh = date2 == null ? DEFAULT_LAST_REFRESH_TIME : date2;
        this.applicationId = str2;
        this.userId = str3;
    }

    public static AccessToken getCurrentAccessToken() {
        return AccessTokenManager.getInstance().getCurrentAccessToken();
    }

    public static void setCurrentAccessToken(AccessToken accessToken) {
        AccessTokenManager.getInstance().setCurrentAccessToken(accessToken);
    }

    public static void refreshCurrentAccessTokenAsync() {
        AccessTokenManager.getInstance().refreshCurrentAccessToken(null);
    }

    public static void refreshCurrentAccessTokenAsync(AccessTokenRefreshCallback accessTokenRefreshCallback) {
        AccessTokenManager.getInstance().refreshCurrentAccessToken(accessTokenRefreshCallback);
    }

    public String getToken() {
        return this.token;
    }

    public Date getExpires() {
        return this.expires;
    }

    public Set<String> getPermissions() {
        return this.permissions;
    }

    public Set<String> getDeclinedPermissions() {
        return this.declinedPermissions;
    }

    public AccessTokenSource getSource() {
        return this.source;
    }

    public Date getLastRefresh() {
        return this.lastRefresh;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public String getUserId() {
        return this.userId;
    }

    public static void createFromNativeLinkingIntent(Intent intent, final String str, final AccessTokenCreationCallback accessTokenCreationCallback) {
        Validate.notNull(intent, Constants.INTENT_SCHEME);
        if (intent.getExtras() == null) {
            accessTokenCreationCallback.onError(new FacebookException("No extras found on intent"));
            return;
        }
        final Bundle bundle = new Bundle(intent.getExtras());
        String string = bundle.getString("access_token");
        if (string == null || string.isEmpty()) {
            accessTokenCreationCallback.onError(new FacebookException("No access token found on intent"));
            return;
        }
        String string2 = bundle.getString(USER_ID_KEY);
        if (string2 == null || string2.isEmpty()) {
            Utility.getGraphMeRequestWithCacheAsync(string, new Utility.GraphMeRequestWithCacheCallback() { // from class: com.facebook.AccessToken.1
                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void onSuccess(JSONObject jSONObject) {
                    try {
                        bundle.putString(AccessToken.USER_ID_KEY, jSONObject.getString("id"));
                        accessTokenCreationCallback.onSuccess(AccessToken.createFromBundle(null, bundle, AccessTokenSource.FACEBOOK_APPLICATION_WEB, new Date(), str));
                    } catch (JSONException e) {
                        accessTokenCreationCallback.onError(new FacebookException("Unable to generate access token due to missing user id"));
                    }
                }

                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void onFailure(FacebookException facebookException) {
                    accessTokenCreationCallback.onError(facebookException);
                }
            });
        } else {
            accessTokenCreationCallback.onSuccess(createFromBundle(null, bundle, AccessTokenSource.FACEBOOK_APPLICATION_WEB, new Date(), str));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:").append(tokenToString());
        appendPermissions(sb);
        sb.append("}");
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        return this.expires.equals(accessToken.expires) && this.permissions.equals(accessToken.permissions) && this.declinedPermissions.equals(accessToken.declinedPermissions) && this.token.equals(accessToken.token) && this.source == accessToken.source && this.lastRefresh.equals(accessToken.lastRefresh) && (this.applicationId != null ? this.applicationId.equals(accessToken.applicationId) : accessToken.applicationId == null) && this.userId.equals(accessToken.userId);
    }

    public int hashCode() {
        return (((this.applicationId == null ? 0 : this.applicationId.hashCode()) + ((((((((((((this.expires.hashCode() + 527) * 31) + this.permissions.hashCode()) * 31) + this.declinedPermissions.hashCode()) * 31) + this.token.hashCode()) * 31) + this.source.hashCode()) * 31) + this.lastRefresh.hashCode()) * 31)) * 31) + this.userId.hashCode();
    }

    @SuppressLint({"FieldGetter"})
    static AccessToken createFromRefresh(AccessToken accessToken, Bundle bundle) {
        if (accessToken.source != AccessTokenSource.FACEBOOK_APPLICATION_WEB && accessToken.source != AccessTokenSource.FACEBOOK_APPLICATION_NATIVE && accessToken.source != AccessTokenSource.FACEBOOK_APPLICATION_SERVICE) {
            throw new FacebookException("Invalid token source: " + accessToken.source);
        }
        Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, EXPIRES_IN_KEY, new Date(0L));
        String string = bundle.getString("access_token");
        if (Utility.isNullOrEmpty(string)) {
            return null;
        }
        return new AccessToken(string, accessToken.applicationId, accessToken.getUserId(), accessToken.getPermissions(), accessToken.getDeclinedPermissions(), accessToken.source, bundleLongAsDate, new Date());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken createFromLegacyCache(Bundle bundle) {
        List<String> permissionsFromBundle = getPermissionsFromBundle(bundle, LegacyTokenHelper.PERMISSIONS_KEY);
        List<String> permissionsFromBundle2 = getPermissionsFromBundle(bundle, LegacyTokenHelper.DECLINED_PERMISSIONS_KEY);
        String applicationId = LegacyTokenHelper.getApplicationId(bundle);
        if (Utility.isNullOrEmpty(applicationId)) {
            applicationId = FacebookSdk.getApplicationId();
        }
        String token = LegacyTokenHelper.getToken(bundle);
        try {
            return new AccessToken(token, applicationId, Utility.awaitGetGraphMeRequestWithCache(token).getString("id"), permissionsFromBundle, permissionsFromBundle2, LegacyTokenHelper.getSource(bundle), LegacyTokenHelper.getDate(bundle, LegacyTokenHelper.EXPIRATION_DATE_KEY), LegacyTokenHelper.getDate(bundle, LegacyTokenHelper.LAST_REFRESH_DATE_KEY));
        } catch (JSONException e) {
            return null;
        }
    }

    static List<String> getPermissionsFromBundle(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        if (stringArrayList == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    public boolean isExpired() {
        return new Date().after(this.expires);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject toJSONObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put(TOKEN_KEY, this.token);
        jSONObject.put(EXPIRES_AT_KEY, this.expires.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.permissions));
        jSONObject.put(DECLINED_PERMISSIONS_KEY, new JSONArray((Collection) this.declinedPermissions));
        jSONObject.put(LAST_REFRESH_KEY, this.lastRefresh.getTime());
        jSONObject.put("source", this.source.name());
        jSONObject.put(APPLICATION_ID_KEY, this.applicationId);
        jSONObject.put(USER_ID_KEY, this.userId);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken createFromJSONObject(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt("version") > 1) {
            throw new FacebookException("Unknown AccessToken serialization format.");
        }
        String string = jSONObject.getString(TOKEN_KEY);
        Date date = new Date(jSONObject.getLong(EXPIRES_AT_KEY));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray(DECLINED_PERMISSIONS_KEY);
        Date date2 = new Date(jSONObject.getLong(LAST_REFRESH_KEY));
        return new AccessToken(string, jSONObject.getString(APPLICATION_ID_KEY), jSONObject.getString(USER_ID_KEY), Utility.jsonArrayToStringList(jSONArray), Utility.jsonArrayToStringList(jSONArray2), AccessTokenSource.valueOf(jSONObject.getString("source")), date, date2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AccessToken createFromBundle(List<String> list, Bundle bundle, AccessTokenSource accessTokenSource, Date date, String str) {
        String string = bundle.getString("access_token");
        Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, EXPIRES_IN_KEY, date);
        String string2 = bundle.getString(USER_ID_KEY);
        if (Utility.isNullOrEmpty(string) || bundleLongAsDate == null) {
            return null;
        }
        return new AccessToken(string, str, string2, list, null, accessTokenSource, bundleLongAsDate, new Date());
    }

    private String tokenToString() {
        if (this.token == null) {
            return "null";
        }
        if (FacebookSdk.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
            return this.token;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    private void appendPermissions(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.permissions == null) {
            sb.append("null");
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(", ", this.permissions));
        sb.append("]");
    }

    AccessToken(Parcel parcel) {
        this.expires = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.permissions = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.declinedPermissions = Collections.unmodifiableSet(new HashSet(arrayList));
        this.token = parcel.readString();
        this.source = AccessTokenSource.valueOf(parcel.readString());
        this.lastRefresh = new Date(parcel.readLong());
        this.applicationId = parcel.readString();
        this.userId = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.expires.getTime());
        parcel.writeStringList(new ArrayList(this.permissions));
        parcel.writeStringList(new ArrayList(this.declinedPermissions));
        parcel.writeString(this.token);
        parcel.writeString(this.source.name());
        parcel.writeLong(this.lastRefresh.getTime());
        parcel.writeString(this.applicationId);
        parcel.writeString(this.userId);
    }
}
