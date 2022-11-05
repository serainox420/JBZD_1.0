package com.apprupt.sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
class TestSignals {

    /* renamed from: a  reason: collision with root package name */
    static final TestSignals f1970a = new TestSignals();
    static final boolean b;
    private final Handler c = new Handler(Looper.getMainLooper());
    private final HashMap<String, ArrayList<Receiver>> d;
    private final HashMap<String, Sender> e;

    /* loaded from: classes.dex */
    interface Receiver {
        void a(String str, String str2, Object obj);
    }

    /* loaded from: classes.dex */
    class Sender {
    }

    static {
        b = Logger.b() == 15;
    }

    private TestSignals() {
        this.d = b ? new HashMap<>() : null;
        this.e = new HashMap<>();
    }

    /* renamed from: com.apprupt.sdk.TestSignals$1  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f1971a;
        final /* synthetic */ Receiver b;
        final /* synthetic */ TestSignals c;

        @Override // java.lang.Runnable
        public void run() {
            HashMap hashMap = this.c.d;
            if (hashMap != null) {
                ArrayList arrayList = (ArrayList) hashMap.get(this.f1971a);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashMap.put(this.f1971a, arrayList);
                }
                arrayList.add(this.b);
            }
        }
    }

    /* renamed from: com.apprupt.sdk.TestSignals$2  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f1972a;
        final /* synthetic */ Receiver b;
        final /* synthetic */ TestSignals c;

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            HashMap hashMap = this.c.d;
            if (hashMap != null && (arrayList = (ArrayList) hashMap.get(this.f1972a)) != null) {
                arrayList.remove(this.b);
            }
        }
    }

    /* renamed from: com.apprupt.sdk.TestSignals$3  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f1973a;
        final /* synthetic */ String b;
        final /* synthetic */ Object c;
        final /* synthetic */ TestSignals d;

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            HashMap hashMap = this.d.d;
            if (hashMap != null && (arrayList = (ArrayList) hashMap.get(this.f1973a)) != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Receiver) it.next()).a(this.f1973a, this.b, this.c);
                }
            }
        }
    }
}
