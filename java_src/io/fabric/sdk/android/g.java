package io.fabric.sdk.android;

import io.fabric.sdk.android.services.common.r;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializationTask.java */
/* loaded from: classes3.dex */
public class g<Result> extends io.fabric.sdk.android.services.concurrency.c<Void, Void, Result> {

    /* renamed from: a  reason: collision with root package name */
    final h<Result> f5648a;

    public g(h<Result> hVar) {
        this.f5648a = hVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    public void a() {
        super.a();
        r a2 = a("onPreExecute");
        try {
            try {
                boolean onPreExecute = this.f5648a.onPreExecute();
                a2.b();
                if (!onPreExecute) {
                    a(true);
                }
            } catch (UnmetDependencyException e) {
                throw e;
            } catch (Exception e2) {
                c.h().e("Fabric", "Failure onPreExecute()", e2);
                a2.b();
                a(true);
            }
        } catch (Throwable th) {
            a2.b();
            a(true);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    public Result a(Void... voidArr) {
        r a2 = a("doInBackground");
        Result result = null;
        if (!d()) {
            result = this.f5648a.mo38doInBackground();
        }
        a2.b();
        return result;
    }

    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    protected void a(Result result) {
        this.f5648a.onPostExecute(result);
        this.f5648a.initializationCallback.a((f<Result>) result);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AsyncTask
    protected void b(Result result) {
        this.f5648a.onCancelled(result);
        this.f5648a.initializationCallback.a(new InitializationException(this.f5648a.getIdentifier() + " Initialization was cancelled"));
    }

    @Override // io.fabric.sdk.android.services.concurrency.c, io.fabric.sdk.android.services.concurrency.f
    public Priority getPriority() {
        return Priority.HIGH;
    }

    private r a(String str) {
        r rVar = new r(this.f5648a.getIdentifier() + "." + str, "KitInitialization");
        rVar.a();
        return rVar;
    }
}
