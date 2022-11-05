package android.support.transition;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
/* compiled from: ScenePort.java */
@TargetApi(14)
/* loaded from: classes.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    Runnable f184a;
    private ViewGroup b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, l lVar) {
        view.setTag(R.id.transition_current_scene, lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(View view) {
        return (l) view.getTag(R.id.transition_current_scene);
    }

    public void a() {
        if (a(this.b) == this && this.f184a != null) {
            this.f184a.run();
        }
    }
}
