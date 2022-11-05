package com.smaato.soma.video.a;

import android.os.AsyncTask;
import com.smaato.soma.debug.DebugCategory;
import java.io.BufferedInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayDeque;
import java.util.Deque;
/* compiled from: VideoDownloader.java */
/* loaded from: classes3.dex */
public class h {
    private static final Deque<WeakReference<b>> b = new ArrayDeque();

    /* renamed from: a  reason: collision with root package name */
    static String f5293a = "VideoDownloader";

    /* compiled from: VideoDownloader.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(boolean z);
    }

    public static void a(String str, a aVar) {
        if (str == null || aVar == null) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5293a, f5293a + "VideoDownloader attempted to cache video with null url.", 1, DebugCategory.DEBUG));
            aVar.a(false);
            return;
        }
        try {
            e.a(new b(aVar), str);
        } catch (Exception e) {
            aVar.a(false);
        }
    }

    /* compiled from: VideoDownloader.java */
    /* loaded from: classes3.dex */
    static class b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final a f5294a;
        private final WeakReference<b> b = new WeakReference<>(this);

        b(a aVar) {
            this.f5294a = aVar;
            h.b.add(this.b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0106  */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean doInBackground(String... strArr) {
            HttpURLConnection httpURLConnection;
            Throwable th;
            BufferedInputStream bufferedInputStream;
            boolean z;
            if (strArr == null || strArr.length == 0 || strArr[0] == null) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(h.f5293a, h.f5293a + "VideoDownloader task tried to execute null or empty url.", 1, DebugCategory.DEBUG));
                return false;
            }
            String str = strArr[0];
            try {
                httpURLConnection = f.a(str);
            } catch (Exception e) {
                bufferedInputStream = null;
                httpURLConnection = null;
            } catch (Throwable th2) {
                httpURLConnection = null;
                th = th2;
                bufferedInputStream = null;
            }
            try {
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                try {
                    try {
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode < 200 || responseCode >= 300) {
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(h.f5293a, h.f5293a + "VideoDownloader encountered unexpected statusCode:", 1, DebugCategory.DEBUG));
                            z = false;
                            g.a(bufferedInputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } else if (httpURLConnection.getContentLength() > 26214400) {
                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(h.f5293a, h.f5293a + "VideoDownloader encountered video larger than disk cap.", 1, DebugCategory.DEBUG));
                            z = false;
                            g.a(bufferedInputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } else {
                            z = Boolean.valueOf(com.smaato.soma.video.a.a.a(str, bufferedInputStream));
                            g.a(bufferedInputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        }
                        return z;
                    } catch (Exception e2) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(h.f5293a, h.f5293a + "VideoDownloader task threw an internal exception.", 1, DebugCategory.DEBUG));
                        g.a(bufferedInputStream);
                        if (httpURLConnection == null) {
                            return false;
                        }
                        httpURLConnection.disconnect();
                        return false;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    g.a(bufferedInputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                bufferedInputStream = null;
            } catch (Throwable th4) {
                bufferedInputStream = null;
                th = th4;
                g.a(bufferedInputStream);
                if (httpURLConnection != null) {
                }
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (!isCancelled()) {
                h.b.remove(this.b);
                if (bool == null) {
                    this.f5294a.a(false);
                    return;
                } else {
                    this.f5294a.a(bool.booleanValue());
                    return;
                }
            }
            onCancelled();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(h.f5293a, h.f5293a + "VideoDownloader task was cancelled.", 1, DebugCategory.DEBUG));
            h.b.remove(this.b);
            this.f5294a.a(false);
        }
    }
}
