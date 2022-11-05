package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewGroupOverlay.java */
@TargetApi(14)
/* loaded from: classes.dex */
public class ag extends ah {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    public static ag a(ViewGroup viewGroup) {
        return (ag) ah.d(viewGroup);
    }

    public void a(View view) {
        this.f167a.a(view);
    }

    public void b(View view) {
        this.f167a.b(view);
    }
}
