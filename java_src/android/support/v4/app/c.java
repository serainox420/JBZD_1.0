package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.support.v4.app.b;
import android.view.View;
import java.util.List;
import java.util.Map;
/* compiled from: ActivityCompatApi23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class c {

    /* compiled from: ActivityCompatApi23.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    /* compiled from: ActivityCompatApi23.java */
    /* loaded from: classes.dex */
    public interface b {
        void validateRequestPermissionsRequestCode(int i);
    }

    /* compiled from: ActivityCompatApi23.java */
    /* renamed from: android.support.v4.app.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0014c extends b.a {
        public abstract void a(List<String> list, List<View> list2, a aVar);
    }

    public static void a(Activity activity, String[] strArr, int i) {
        if (activity instanceof b) {
            ((b) activity).validateRequestPermissionsRequestCode(i);
        }
        activity.requestPermissions(strArr, i);
    }

    public static boolean a(Activity activity, String str) {
        return activity.shouldShowRequestPermissionRationale(str);
    }

    public static void a(Activity activity, AbstractC0014c abstractC0014c) {
        activity.setEnterSharedElementCallback(a(abstractC0014c));
    }

    public static void b(Activity activity, AbstractC0014c abstractC0014c) {
        activity.setExitSharedElementCallback(a(abstractC0014c));
    }

    private static SharedElementCallback a(AbstractC0014c abstractC0014c) {
        if (abstractC0014c == null) {
            return null;
        }
        return new d(abstractC0014c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActivityCompatApi23.java */
    /* loaded from: classes.dex */
    public static class d extends SharedElementCallback {

        /* renamed from: a  reason: collision with root package name */
        private AbstractC0014c f254a;

        public d(AbstractC0014c abstractC0014c) {
            this.f254a = abstractC0014c;
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.f254a.a(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.f254a.b(list, list2, list3);
        }

        @Override // android.app.SharedElementCallback
        public void onRejectSharedElements(List<View> list) {
            this.f254a.a(list);
        }

        @Override // android.app.SharedElementCallback
        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.f254a.a(list, map);
        }

        @Override // android.app.SharedElementCallback
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f254a.a(view, matrix, rectF);
        }

        @Override // android.app.SharedElementCallback
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f254a.a(context, parcelable);
        }

        @Override // android.app.SharedElementCallback
        public void onSharedElementsArrived(List<String> list, List<View> list2, final SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f254a.a(list, list2, new a() { // from class: android.support.v4.app.c.d.1
                @Override // android.support.v4.app.c.a
                public void a() {
                    onSharedElementsReadyListener.onSharedElementsReady();
                }
            });
        }
    }
}
