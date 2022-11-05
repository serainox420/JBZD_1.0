package com.apprupt.sdk;

import android.content.Context;
/* loaded from: classes.dex */
public class Vibrator {

    /* loaded from: classes.dex */
    interface API {
        void a();

        void a(long j);
    }

    /* loaded from: classes.dex */
    private static class Dummy implements API {
        private Dummy() {
        }

        @Override // com.apprupt.sdk.Vibrator.API
        public void a() {
        }

        @Override // com.apprupt.sdk.Vibrator.API
        public void a(long j) {
        }
    }

    /* loaded from: classes.dex */
    private static class Wrapper implements API {

        /* renamed from: a  reason: collision with root package name */
        private final android.os.Vibrator f1988a;

        private Wrapper(android.os.Vibrator vibrator) {
            this.f1988a = vibrator;
        }

        @Override // com.apprupt.sdk.Vibrator.API
        public void a() {
            a(300L);
        }

        @Override // com.apprupt.sdk.Vibrator.API
        public void a(long j) {
            this.f1988a.vibrate(j);
        }
    }

    public static API a(Context context) {
        android.os.Vibrator vibrator;
        return (context.checkCallingOrSelfPermission("android.permission.VIBRATE") == -1 || (vibrator = (android.os.Vibrator) context.getSystemService("vibrator")) == null || !vibrator.hasVibrator()) ? new Dummy() : new Wrapper(vibrator);
    }
}
