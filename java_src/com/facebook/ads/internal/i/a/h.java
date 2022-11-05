package com.facebook.ads.internal.i.a;

import android.os.AsyncTask;
/* loaded from: classes.dex */
public class h extends AsyncTask<l, Void, n> implements c {

    /* renamed from: a  reason: collision with root package name */
    private a f2174a;
    private b b;
    private Exception c;

    public h(a aVar, b bVar) {
        this.f2174a = aVar;
        this.b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public n doInBackground(l... lVarArr) {
        if (lVarArr != null) {
            try {
                if (lVarArr.length > 0) {
                    return this.f2174a.a(lVarArr[0]);
                }
            } catch (Exception e) {
                this.c = e;
                cancel(true);
                return null;
            }
        }
        throw new IllegalArgumentException("DoHttpRequestTask takes exactly one argument of type HttpRequest");
    }

    @Override // com.facebook.ads.internal.i.a.c
    public void a(l lVar) {
        super.execute(lVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(n nVar) {
        this.b.a(nVar);
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        this.b.a(this.c);
    }
}
