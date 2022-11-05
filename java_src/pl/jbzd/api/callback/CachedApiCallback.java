package pl.jbzd.api.callback;

import pl.jbzd.api.response.BaseApiResponse;
import retrofit2.Call;
import retrofit2.Response;
/* loaded from: classes3.dex */
public abstract class CachedApiCallback<R extends BaseApiResponse> extends SimpleApiCallback<R> {
    @Override // pl.jbzd.api.callback.SimpleApiCallback
    public abstract void loadFromCache(Call<R> call, Response<R> response);

    @Override // pl.jbzd.api.callback.SimpleApiCallback, retrofit2.Callback
    public void onResponse(Call<R> call, Response<R> response) {
        String str = response.headers().get("Cache");
        if (str != null && str.equals("load-from-cache")) {
            loadFromCache(call, response);
        } else {
            super.onResponse(call, response);
        }
    }
}
