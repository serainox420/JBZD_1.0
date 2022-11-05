package pl.jbzd.api;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.sdk.AppLovinEventParameters;
import com.facebook.AccessToken;
import com.google.android.gms.wallet.WalletConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import pl.jbzd.api.auth.LoginCallback;
import pl.jbzd.api.auth.LogoutCallback;
import pl.jbzd.app.model.User;
import pl.jbzd.core.a.a;
import pl.jbzd.core.api.retrofit.converter.jackson.JacksonConverterFactory;
import retrofit2.Retrofit;
/* loaded from: classes.dex */
public class ApiClient {
    public static final String API_KEY = "KZADSG7diTLJq6v";
    public static final String API_URL = "http://api.jbzd.pl/api/";
    private ApiService mApiService;
    private List<LoginCallback> mLoginCallbacks = new ArrayList();
    private List<LogoutCallback> mLogoutCallbacks = new ArrayList();
    public static final String TAG = ApiClient.class.getSimpleName();
    private static ApiClient sInstance = null;
    private static int userId = -1;
    private static String token = null;
    private static String username = null;
    private static String avatar = null;

    public static ApiClient init(Context context) {
        if (sInstance == null) {
            sInstance = new ApiClient(context);
        }
        return sInstance;
    }

    public static ApiClient getInstance() {
        return sInstance;
    }

    public static synchronized ApiService getApiService() {
        ApiService apiService;
        synchronized (ApiClient.class) {
            apiService = sInstance.mApiService;
        }
        return apiService;
    }

    public void setToken(Context context, User user) {
        if (context != null) {
            if (user != null) {
                token = user.token;
                userId = user.realmGet$id();
                username = user.realmGet$username();
                avatar = user.realmGet$avatar();
                context.getSharedPreferences(context.getPackageName(), 0).edit().putString("token", token).putInt(AccessToken.USER_ID_KEY, userId).putString(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, username).putString("avatar", avatar).apply();
                return;
            }
            avatar = null;
            username = null;
            token = null;
            context.getSharedPreferences(context.getPackageName(), 0).edit().putInt(AccessToken.USER_ID_KEY, -1).putString("token", "").putString(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, "").putString("avatar", "").apply();
        }
    }

    public void logout(Context context) {
        if (context != null) {
            getInstance().setToken(context, null);
            for (LogoutCallback logoutCallback : getInstance().getLogoutCallbacks()) {
                if (logoutCallback != null) {
                    logoutCallback.onSuccess();
                }
            }
        }
    }

    public static String getToken() {
        return token;
    }

    public static int getUserId() {
        return userId;
    }

    public static String getUsername() {
        return username;
    }

    public static String getAvatar() {
        return avatar;
    }

    protected ApiClient(final Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        token = sharedPreferences.getString("token", "");
        userId = sharedPreferences.getInt(AccessToken.USER_ID_KEY, -1);
        username = sharedPreferences.getString(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, "");
        avatar = sharedPreferences.getString("avatar", "");
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        builder.addInterceptor(new Interceptor() { // from class: pl.jbzd.api.ApiClient.1
            @Override // okhttp3.Interceptor
            public Response intercept(Interceptor.Chain chain) throws IOException {
                if (!a.c(context)) {
                    Response.Builder builder2 = new Response.Builder();
                    builder2.protocol(Protocol.HTTP_2);
                    builder2.request(chain.request());
                    builder2.code(WalletConstants.ERROR_CODE_INVALID_PARAMETERS);
                    builder2.addHeader("Cache", "load-from-cache");
                    builder2.body(ResponseBody.create(MediaType.parse("text/plain"), ""));
                    return builder2.build();
                }
                Request request = chain.request();
                HttpUrl url = request.url();
                HashMap hashMap = new HashMap();
                int i = 0;
                for (String str : url.queryParameterNames()) {
                    hashMap.put(str, url.queryParameterValue(i));
                    i++;
                }
                HttpUrl.Builder encodedFragment = new HttpUrl.Builder().scheme(url.scheme()).encodedUsername(url.encodedUsername()).encodedPassword(url.encodedPassword()).host(url.host()).port(url.port() != HttpUrl.defaultPort(url.scheme()) ? url.port() : HttpUrl.defaultPort(url.scheme())).encodedFragment(url.encodedFragment());
                for (String str2 : url.pathSegments()) {
                    encodedFragment.addPathSegment(str2);
                }
                String jSONObject = new JSONObject(hashMap).toString();
                int nextInt = new Random().nextInt(99999999);
                Response proceed = chain.proceed(request.newBuilder().url(encodedFragment.addQueryParameter("data", jSONObject).addQueryParameter("hash", a.a(jSONObject + nextInt + ApiClient.API_KEY)).addQueryParameter("salt", "" + nextInt).addQueryParameter("build", "8").build()).build());
                return proceed.newBuilder().body(ResponseBody.create(proceed.body().contentType(), proceed.body().string())).build();
            }
        });
        this.mApiService = (ApiService) new Retrofit.Builder().baseUrl(API_URL).client(builder.build()).addConverterFactory(JacksonConverterFactory.create()).build().create(ApiService.class);
    }

    public List<LoginCallback> getLoginCallbacks() {
        return this.mLoginCallbacks;
    }

    public void addLoginCallback(LoginCallback loginCallback) {
        if (loginCallback != null && !this.mLoginCallbacks.contains(loginCallback)) {
            this.mLoginCallbacks.add(loginCallback);
        }
    }

    public List<LogoutCallback> getLogoutCallbacks() {
        return this.mLogoutCallbacks;
    }

    public void addLogoutCallback(LogoutCallback logoutCallback) {
        if (logoutCallback != null && !this.mLogoutCallbacks.contains(logoutCallback)) {
            this.mLogoutCallbacks.add(logoutCallback);
        }
    }
}
