package com.apprupt.sdk;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.apprupt.sdk.CvDevicePayloadJS;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.URLRequest;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class CvDevicePayload {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1793a;
    private CvDevicePayloadJS b;
    private String c;
    private Context d;
    private final List<Listener> e;
    private Handler f;
    private final Logger.log g;

    /* loaded from: classes.dex */
    public interface Listener {
        void a(String str);
    }

    /* loaded from: classes.dex */
    private static class Holder {

        /* renamed from: a  reason: collision with root package name */
        private static CvDevicePayload f1799a = new CvDevicePayload();

        private Holder() {
        }
    }

    private CvDevicePayload() {
        this.f1793a = true;
        this.c = null;
        this.d = null;
        this.e = new ArrayList();
        this.f = new Handler();
        this.g = Logger.a("DEVICE_PAYLOAD");
        if (Build.VERSION.SDK_INT < 9 || Build.VERSION.SDK_INT > 10) {
            a();
        } else {
            this.f1793a = false;
        }
    }

    public static void a(Context context, Listener listener) {
        Holder.f1799a.b(context, listener);
    }

    private void b(Context context, Listener listener) {
        synchronized (this) {
            if (!this.f1793a && this.c == null) {
                listener.a("");
                this.g.d("PAYLOAD: DISABLED");
                return;
            }
            this.g.d("ADDING LISTENER");
            this.e.add(listener);
            if (!this.f1793a) {
                CvAppInfo.a(context);
                this.g.d("START NEW LOADER");
                this.f1793a = true;
                a(context);
            } else if (this.c == null) {
                this.g.d("WAIT FOR EXISTING REQUEST");
                this.d = context;
            }
        }
    }

    private void a(final Context context) {
        this.g.d("CREATE NEW PAYLOAD GENERATOR");
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvDevicePayload.1
            @Override // java.lang.Runnable
            public void run() {
                CvDevicePayload.this.b(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        this.b = new CvDevicePayloadJS(context, this.c, new CvDevicePayloadJS.Listener() { // from class: com.apprupt.sdk.CvDevicePayload.2
            @Override // com.apprupt.sdk.CvDevicePayloadJS.Listener
            public void a(final String str) {
                CvDevicePayload.this.g.d("GOT PAYLOAD RESULT, PASSING FWD");
                CvDevicePayload.this.f.post(new Runnable() { // from class: com.apprupt.sdk.CvDevicePayload.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            CvDevicePayload.this.g.d("GOT PAYLOAD RESULT, PASSING FWD2");
                            CvDevicePayload.this.a(str);
                        } catch (Exception e) {
                            CvDevicePayload.this.g.c(e, "Error");
                        }
                    }
                });
            }
        });
    }

    void a(String str) {
        synchronized (this) {
            try {
                this.g.d("PAYLOAD: " + str);
                if (str == null) {
                    str = "";
                }
                while (this.e.size() > 0) {
                    Listener remove = this.e.remove(0);
                    if (remove != null) {
                        remove.a(str);
                    }
                }
                this.b = null;
                this.f1793a = false;
            } catch (Exception e) {
                this.g.c(e, "Error");
            }
        }
    }

    private void a() {
        URLRequest.c(CvUrl.a()).a(new URLRequest.Listener() { // from class: com.apprupt.sdk.CvDevicePayload.3
            @Override // com.apprupt.sdk.URLRequest.Listener
            public void a(final URLRequest.URLResponse uRLResponse) {
                CvDevicePayload.this.f.post(new Runnable() { // from class: com.apprupt.sdk.CvDevicePayload.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CvDevicePayload.this.b(uRLResponse.d ? "" : uRLResponse.c);
                    }
                });
            }
        }).b();
    }

    void b(String str) {
        synchronized (this) {
            this.c = str;
            if (this.d != null) {
                a(this.d);
                this.d = null;
            }
        }
    }
}
