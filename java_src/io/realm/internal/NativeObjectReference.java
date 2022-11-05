package io.realm.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class NativeObjectReference extends PhantomReference<g> {
    private static a f = new a();

    /* renamed from: a  reason: collision with root package name */
    private final long f5773a;
    private final long b;
    private final d c;
    private NativeObjectReference d;
    private NativeObjectReference e;

    private static native void nativeCleanUp(long j, long j2);

    /* loaded from: classes3.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        NativeObjectReference f5774a;

        private a() {
        }

        synchronized void a(NativeObjectReference nativeObjectReference) {
            nativeObjectReference.d = null;
            nativeObjectReference.e = this.f5774a;
            if (this.f5774a != null) {
                this.f5774a.d = nativeObjectReference;
            }
            this.f5774a = nativeObjectReference;
        }

        synchronized void b(NativeObjectReference nativeObjectReference) {
            NativeObjectReference nativeObjectReference2 = nativeObjectReference.e;
            NativeObjectReference nativeObjectReference3 = nativeObjectReference.d;
            nativeObjectReference.e = null;
            nativeObjectReference.d = null;
            if (nativeObjectReference3 != null) {
                nativeObjectReference3.e = nativeObjectReference2;
            } else {
                this.f5774a = nativeObjectReference2;
            }
            if (nativeObjectReference2 != null) {
                nativeObjectReference2.d = nativeObjectReference3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeObjectReference(d dVar, g gVar, ReferenceQueue<? super g> referenceQueue) {
        super(gVar, referenceQueue);
        this.f5773a = gVar.getNativePtr();
        this.b = gVar.getNativeFinalizerPtr();
        this.c = dVar;
        f.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        synchronized (this.c) {
            nativeCleanUp(this.b, this.f5773a);
        }
        f.b(this);
    }
}
