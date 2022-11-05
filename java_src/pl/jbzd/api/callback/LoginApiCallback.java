package pl.jbzd.api.callback;

import android.content.Context;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.auth.LoginCallback;
import pl.jbzd.api.response.UserResponse;
import retrofit2.Call;
import retrofit2.Response;
/* loaded from: classes3.dex */
public abstract class LoginApiCallback extends SimpleApiCallback<UserResponse> {
    private Context context;

    public LoginApiCallback(Context context) {
        this.context = context;
    }

    @Override // pl.jbzd.api.callback.SimpleApiCallback
    public boolean before(Call<UserResponse> call, Response<UserResponse> response, UserResponse userResponse) {
        if (userResponse.response != null && userResponse.response.user != null && userResponse.response.user.token != null && !userResponse.response.user.token.isEmpty()) {
            ApiClient.getInstance().setToken(this.context, userResponse.response.user);
            for (LoginCallback loginCallback : ApiClient.getInstance().getLoginCallbacks()) {
                if (loginCallback != null) {
                    loginCallback.onSuccess(userResponse);
                }
            }
            return true;
        }
        this.errorMessage = "Invalid token";
        return false;
    }
}
