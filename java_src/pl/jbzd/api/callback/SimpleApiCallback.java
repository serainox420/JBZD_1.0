package pl.jbzd.api.callback;

import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.BaseApiResponse;
import pl.jbzd.api.util.ApiUtils;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes3.dex */
public abstract class SimpleApiCallback<R extends BaseApiResponse> implements Callback<R> {
    String errorMessage = null;

    public abstract void onError(ApiException apiException);

    public abstract void onSuccess(R r);

    public void loadFromCache(Call<R> call, Response<R> response) {
    }

    public boolean before(Call<R> call, Response<R> response, R r) {
        return true;
    }

    public void after(Call<R> call, Response<R> response, R r) {
    }

    @Override // retrofit2.Callback
    public void onResponse(Call<R> call, Response<R> response) {
        String str = null;
        String str2 = response.headers().get("Cache");
        if (str2 != null && str2.equals("load-from-cache")) {
            onError(new ApiException(ApiException.ErrorLevel.ALERT, (Call<?>) call, (Response<?>) response, "You are Offline"));
        } else if (response.isSuccessful()) {
            R body = response.body();
            if (ApiUtils.isSuccessful(body)) {
                this.errorMessage = null;
                if (before(call, response, body)) {
                    onSuccess(body);
                    after(call, response, body);
                    return;
                }
                onError(new ApiException(ApiException.ErrorLevel.ALERT, (Call<?>) call, (Response<?>) response, this.errorMessage != null ? this.errorMessage : "Invalid data"));
                this.errorMessage = null;
                return;
            }
            onError(new ApiException(ApiException.ErrorLevel.ERROR, (Call<?>) call, (Response<?>) response, response.body() != null ? response.body().message : null));
        } else {
            ApiException.ErrorLevel errorLevel = ApiException.ErrorLevel.CRITICAL;
            if (response.body() != null) {
                str = response.body().message;
            }
            onError(new ApiException(errorLevel, (Call<?>) call, (Response<?>) response, str));
        }
    }

    @Override // retrofit2.Callback
    public void onFailure(Call<R> call, Throwable th) {
        onError(new ApiException(ApiException.ErrorLevel.EMERGENCY, (Call<?>) call, th));
    }
}
