package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.RemoteInput;
import android.support.v4.app.aw;
/* compiled from: RemoteInputCompatApi20.java */
@TargetApi(20)
/* loaded from: classes.dex */
class av {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static RemoteInput[] a(aw.a[] aVarArr) {
        if (aVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[aVarArr.length];
        for (int i = 0; i < aVarArr.length; i++) {
            aw.a aVar = aVarArr[i];
            remoteInputArr[i] = new RemoteInput.Builder(aVar.a()).setLabel(aVar.b()).setChoices(aVar.c()).setAllowFreeFormInput(aVar.d()).addExtras(aVar.e()).build();
        }
        return remoteInputArr;
    }
}
