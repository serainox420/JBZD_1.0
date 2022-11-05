package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;
/* compiled from: ActivityCompatApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class b {

    /* compiled from: ActivityCompatApi21.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract Parcelable a(View view, Matrix matrix, RectF rectF);

        public abstract View a(Context context, Parcelable parcelable);

        public abstract void a(List<View> list);

        public abstract void a(List<String> list, List<View> list2, List<View> list3);

        public abstract void a(List<String> list, Map<String, View> map);

        public abstract void b(List<String> list, List<View> list2, List<View> list3);
    }

    public static void a(Activity activity) {
        activity.finishAfterTransition();
    }

    public static void a(Activity activity, a aVar) {
        activity.setEnterSharedElementCallback(a(aVar));
    }

    public static void b(Activity activity, a aVar) {
        activity.setExitSharedElementCallback(a(aVar));
    }

    public static void b(Activity activity) {
        activity.postponeEnterTransition();
    }

    public static void c(Activity activity) {
        activity.startPostponedEnterTransition();
    }

    private static SharedElementCallback a(a aVar) {
        if (aVar == null) {
            return null;
        }
        return new SharedElementCallbackC0013b(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityCompatApi21.java */
    /* renamed from: android.support.v4.app.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class SharedElementCallbackC0013b extends SharedElementCallback {

        /* renamed from: a  reason: collision with root package name */
        private a f252a;

        public SharedElementCallbackC0013b(a aVar) {
            this.f252a = aVar;
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.f252a.a(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.f252a.b(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.f252a.a(list);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.f252a.a(list, map);
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f252a.a(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f252a.a(context, parcelable);
        }
    }
}
