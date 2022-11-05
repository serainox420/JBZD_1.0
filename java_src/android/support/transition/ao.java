package android.support.transition;

import android.annotation.TargetApi;
import android.os.IBinder;
import android.view.View;
/* compiled from: WindowIdPort.java */
@TargetApi(14)
/* loaded from: classes.dex */
class ao {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f173a;

    private ao(IBinder iBinder) {
        this.f173a = iBinder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ao a(View view) {
        return new ao(view.getWindowToken());
    }

    public boolean equals(Object obj) {
        return (obj instanceof ao) && ((ao) obj).f173a.equals(this.f173a);
    }
}
