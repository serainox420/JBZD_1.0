package com.smaato.soma.a;

import android.os.AsyncTask;
import android.util.Log;
import com.smaato.soma.exception.BannerHttpRequestFailed;
import com.smaato.soma.exception.LoadingNewBannerFailedException;
import com.smaato.soma.exception.UnableToNotifyAdListener;
import com.smaato.soma.internal.b;
import com.smaato.soma.internal.requests.d;
import com.smaato.soma.p;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DummyConnector.java */
/* loaded from: classes3.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    public static String f4861a = "SOMA_DummyConnector";
    private static a f;
    private List<b> b = new ArrayList();
    private int c = 0;
    private com.smaato.soma.internal.c.b d = null;
    private b e = null;

    /* compiled from: DummyConnector.java */
    /* renamed from: com.smaato.soma.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private class AsyncTaskC0539a extends AsyncTask<String, Void, p> {
        private AsyncTaskC0539a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public p doInBackground(String... strArr) {
            Log.d(a.f4861a, "Download task created");
            try {
                return a.this.a(new URL(strArr[0]));
            } catch (Exception e) {
                Log.e(a.f4861a, "");
                return a.this.e;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(p pVar) {
            Log.d(a.f4861a, "Load async finished!");
            if (a.this.d != null) {
                try {
                    a.this.d.b(pVar);
                } catch (UnableToNotifyAdListener e) {
                    Log.w(a.f4861a, "Unable to download Banner");
                }
            }
            super.onPostExecute(pVar);
        }
    }

    private a(String str) {
    }

    public static a a() {
        if (f == null) {
            f = new a("");
        }
        return f;
    }

    @Override // com.smaato.soma.internal.requests.d
    public void a(com.smaato.soma.internal.c.b bVar) {
        this.d = bVar;
    }

    public p a(URL url) throws LoadingNewBannerFailedException {
        if (this.e != null) {
            Log.d(f4861a, "Returning " + this.e.e());
        } else {
            Log.d(f4861a, "mNextBanner not set!");
        }
        return this.e;
    }

    public b b() {
        return this.e;
    }

    @Override // com.smaato.soma.internal.requests.d
    public boolean b(URL url) throws BannerHttpRequestFailed {
        Log.d(f4861a, "Create new DownloadTask");
        new AsyncTaskC0539a().execute(url.toString());
        return true;
    }
}
