package com.apprupt.sdk;

import android.app.Activity;
/* loaded from: classes.dex */
public class CvAdColony {

    /* renamed from: a  reason: collision with root package name */
    private static Wrapper f1714a = new DummyWrapper();

    /* loaded from: classes.dex */
    interface Wrapper {
        void a();

        void a(Activity activity);

        boolean a(int i, boolean z);

        boolean a(String str, boolean z);
    }

    /* loaded from: classes.dex */
    interface WrapperListener {
    }

    /* loaded from: classes.dex */
    private static class DummyWrapper implements Wrapper {
        private DummyWrapper() {
        }

        @Override // com.apprupt.sdk.CvAdColony.Wrapper
        public void a() {
        }

        @Override // com.apprupt.sdk.CvAdColony.Wrapper
        public void a(Activity activity) {
        }

        @Override // com.apprupt.sdk.CvAdColony.Wrapper
        public boolean a(int i, boolean z) {
            return false;
        }

        @Override // com.apprupt.sdk.CvAdColony.Wrapper
        public boolean a(String str, boolean z) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        f1714a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity) {
        f1714a.a(activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Wrapper b() {
        return f1714a;
    }
}
