package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
/* compiled from: MediaRouteControllerDialogFragment.java */
/* loaded from: classes.dex */
public class q extends android.support.v4.app.q {

    /* renamed from: a  reason: collision with root package name */
    private p f611a;

    public q() {
        setCancelable(true);
    }

    public p a(Context context, Bundle bundle) {
        return new p(context);
    }

    @Override // android.support.v4.app.q
    public Dialog onCreateDialog(Bundle bundle) {
        this.f611a = a(getContext(), bundle);
        return this.f611a;
    }

    @Override // android.support.v4.app.q, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.f611a != null) {
            this.f611a.e(false);
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f611a != null) {
            this.f611a.b();
        }
    }
}
