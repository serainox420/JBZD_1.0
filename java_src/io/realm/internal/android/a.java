package io.realm.internal.android;

import android.os.Looper;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* compiled from: AndroidCapabilities.java */
/* loaded from: classes3.dex */
public class a implements io.realm.internal.a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f5787a;
    private final boolean b;

    public a() {
        this.f5787a = Looper.myLooper() != null;
        this.b = b();
    }

    @Override // io.realm.internal.a
    public boolean a() {
        return this.f5787a && !this.b;
    }

    @Override // io.realm.internal.a
    public void a(String str) {
        if (!this.f5787a) {
            throw new IllegalStateException(str == null ? "" : str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Realm cannot be automatically updated on a thread without a looper.");
        } else if (this.b) {
            throw new IllegalStateException(str == null ? "" : str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "Realm cannot be automatically updated on an IntentService thread.");
        }
    }

    private static boolean b() {
        String name = Thread.currentThread().getName();
        return name != null && name.startsWith("IntentService[");
    }
}
