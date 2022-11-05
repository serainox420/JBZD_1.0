package com.smartadserver.android.library.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.inmobi.monetization.internal.Constants;
import java.io.File;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Timer;
import java.util.Vector;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
/* compiled from: SASHttpRequestManager.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5320a = c.class.getSimpleName();
    private static final Object b = new Object();
    private static c c;
    private HttpClient d;
    private Context e;
    private BroadcastReceiver f;
    private Timer k;
    private String l;
    private int j = 5;
    private Vector<HttpGet> g = new Vector<>();
    private Vector<String> h = new Vector<>();
    private Hashtable<HttpGet, Integer> i = new Hashtable<>();

    public static synchronized c a(final Context context) {
        c cVar;
        boolean z = true;
        synchronized (c.class) {
            if (context != null) {
                com.smartadserver.android.library.g.c.a(context);
                if (c == null) {
                    c = new c(context);
                    com.smartadserver.android.library.g.b.a(context);
                } else if (c.e != null) {
                    z = false;
                } else {
                    c.b(context);
                }
                if (z) {
                    com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.a.c.1
                        @Override // java.lang.Runnable
                        public void run() {
                            new Thread(new Runnable() { // from class: com.smartadserver.android.library.a.c.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        com.smartadserver.android.library.g.c.a(context, true);
                                    } catch (NoClassDefFoundError e) {
                                        com.smartadserver.android.library.g.c.a("Missing Google play services framework : " + e.getMessage());
                                    }
                                }
                            }).start();
                        }
                    });
                }
            }
            cVar = c;
        }
        return cVar;
    }

    public c(Context context) {
        Vector vector;
        this.l = com.smartadserver.android.library.g.c.f(context);
        b(context);
        synchronized (b) {
            vector = (Vector) com.smartadserver.android.library.g.b.b(this.e, "SmartAdServerCache", "pendingURLCalls.bin");
            com.smartadserver.android.library.g.b.a(new File(this.e.getDir("SmartAdServerCache", 0), "pendingURLCalls.bin"));
        }
        if (vector != null) {
            Iterator it = vector.iterator();
            while (it.hasNext()) {
                a((String) it.next(), true);
            }
        }
    }

    public synchronized void b(Context context) {
        if (context != this.e) {
            if (this.e != null && this.f != null) {
                try {
                    this.e.unregisterReceiver(this.f);
                    com.smartadserver.android.library.g.c.a("SASHttpRequestManager", "UN-REGISTER for context " + this.e);
                } catch (IllegalArgumentException e) {
                }
            }
            this.e = context;
            if (this.f == null) {
                this.f = new BroadcastReceiver() { // from class: com.smartadserver.android.library.a.c.2
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context2, Intent intent) {
                        c.this.b();
                    }
                };
            }
            if (this.e != null) {
                this.e.registerReceiver(this.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                com.smartadserver.android.library.g.c.a("SASHttpRequestManager", "attach to context " + this.e);
            } else if (this.k != null) {
                this.k.cancel();
                this.k = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        if (this.e != null) {
            synchronized (b) {
                while (com.smartadserver.android.library.g.c.e(this.e)) {
                    try {
                        a(c(), true);
                    } catch (IndexOutOfBoundsException e) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(HttpGet httpGet) {
        synchronized (b) {
            this.g.add(httpGet);
            this.h.add(httpGet.getURI().toString());
            com.smartadserver.android.library.g.b.a(this.e, this.h, "SmartAdServerCache", "pendingURLCalls.bin");
        }
    }

    private HttpGet c() throws IndexOutOfBoundsException {
        HttpGet remove;
        synchronized (b) {
            remove = this.g.remove(0);
            this.h.remove(0);
            com.smartadserver.android.library.g.b.a(this.e, this.h, "SmartAdServerCache", "pendingURLCalls.bin");
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpGet a(String str) {
        try {
            return new HttpGet(str);
        } catch (Exception e) {
            if (!str.contains("/Diffx/ErrorHandler/RemoteErrorHandler.ashx")) {
                com.smartadserver.android.library.exception.a.a(this.e, str, e, this.l, f5320a, "", 10);
            }
            return null;
        }
    }

    public synchronized void a(String str, boolean z) {
        HttpGet a2;
        if (str != null) {
            String replace = str.replace("[", "%5B").replace("]", "%5D");
            if (this.e != null && (a2 = a(replace)) != null) {
                if (z) {
                    this.i.put(a2, Integer.valueOf(this.j));
                }
                if (com.smartadserver.android.library.g.c.e(this.e)) {
                    b();
                    a(a2, z);
                } else if (z) {
                    a(a2);
                }
            }
        }
    }

    private void a(final HttpGet httpGet, final boolean z) {
        a aVar = new a(this.l, Constants.HTTP_TIMEOUT);
        if (this.d != null) {
            aVar.a(this.d);
        }
        aVar.a(httpGet, new b() { // from class: com.smartadserver.android.library.a.c.3
            @Override // com.smartadserver.android.library.a.b
            public void a(String str) {
                com.smartadserver.android.library.g.c.a("SASHttpRequestManager", "Successfully called URL: " + httpGet.getURI().toString());
                synchronized (c.b) {
                    c.this.i.remove(httpGet);
                }
            }

            @Override // com.smartadserver.android.library.a.b
            public void a(Exception exc) {
                synchronized (c.b) {
                    if (!z) {
                        c.this.i.remove(httpGet);
                    } else {
                        com.smartadserver.android.library.g.c.a("SASHttpRequestManager", "retry to call url:" + httpGet.getURI());
                        Integer num = (Integer) c.this.i.get(httpGet);
                        if (num != null) {
                            if (num.intValue() > 0) {
                                HttpGet a2 = c.this.a(httpGet.getURI().toString());
                                c.this.a(a2);
                                c.this.i.put(a2, Integer.valueOf(num.intValue() - 1));
                            } else {
                                com.smartadserver.android.library.g.c.a("SASHttpRequestManager", "Failed to call URL (retries limit reached): " + httpGet.getURI().toString());
                                c.this.i.remove(httpGet);
                            }
                        }
                    }
                }
            }
        });
    }
}
