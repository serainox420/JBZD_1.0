package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
/* compiled from: MediaRouteChooserDialogFragment.java */
/* loaded from: classes.dex */
public class o extends android.support.v4.app.q {

    /* renamed from: a  reason: collision with root package name */
    private final String f592a = "selector";
    private n b;
    private android.support.v7.media.f c;

    public o() {
        setCancelable(true);
    }

    public android.support.v7.media.f a() {
        b();
        return this.c;
    }

    private void b() {
        if (this.c == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.c = android.support.v7.media.f.a(arguments.getBundle("selector"));
            }
            if (this.c == null) {
                this.c = android.support.v7.media.f.b;
            }
        }
    }

    public void a(android.support.v7.media.f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        b();
        if (!this.c.equals(fVar)) {
            this.c = fVar;
            Bundle arguments = getArguments();
            if (arguments == null) {
                arguments = new Bundle();
            }
            arguments.putBundle("selector", fVar.e());
            setArguments(arguments);
            n nVar = (n) getDialog();
            if (nVar != null) {
                nVar.a(fVar);
            }
        }
    }

    public n a(Context context, Bundle bundle) {
        return new n(context);
    }

    @Override // android.support.v4.app.q
    public Dialog onCreateDialog(Bundle bundle) {
        this.b = a(getContext(), bundle);
        this.b.a(a());
        return this.b;
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.b != null) {
            this.b.b();
        }
    }
}
