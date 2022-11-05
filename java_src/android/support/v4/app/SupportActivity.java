package android.support.v4.app;

import android.app.Activity;
import android.support.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes.dex */
public class SupportActivity extends Activity {
    private android.support.v4.f.k<Class<? extends a>, a> mExtraDataMap = new android.support.v4.f.k<>();

    @RestrictTo
    /* loaded from: classes.dex */
    public static class a {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo
    public void putExtraData(a aVar) {
        this.mExtraDataMap.put(aVar.getClass(), aVar);
    }

    @RestrictTo
    public <T extends a> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.get(cls);
    }
}
