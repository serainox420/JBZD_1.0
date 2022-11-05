package pl.jbzd.api.callback;

import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.BaseApiResponse;
/* loaded from: classes3.dex */
public class EmptyApiCallback<R extends BaseApiResponse> extends SimpleApiCallback<R> {
    @Override // pl.jbzd.api.callback.SimpleApiCallback
    public void onSuccess(R r) {
    }

    @Override // pl.jbzd.api.callback.SimpleApiCallback
    public void onError(ApiException apiException) {
    }
}
