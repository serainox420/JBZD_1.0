package android.support.v4.app;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.support.v4.app.aw;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.plus.PlusShare;
/* compiled from: RemoteInputCompatJellybean.java */
@TargetApi(16)
/* loaded from: classes.dex */
class ax {
    static Bundle a(aw.a aVar) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", aVar.a());
        bundle.putCharSequence(PlusShare.KEY_CALL_TO_ACTION_LABEL, aVar.b());
        bundle.putCharSequenceArray("choices", aVar.c());
        bundle.putBoolean("allowFreeFormInput", aVar.d());
        bundle.putBundle(AppLinkData.ARGUMENTS_EXTRAS_KEY, aVar.e());
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle[] a(aw.a[] aVarArr) {
        if (aVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            bundleArr[i] = a(aVarArr[i]);
        }
        return bundleArr;
    }
}
