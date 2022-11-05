package com.smaato.soma.internal.requests;

import android.os.AsyncTask;
import com.mopub.common.AdType;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.BannerHttpRequestFailed;
import com.smaato.soma.exception.HttpConnectorInstantiationException;
import com.smaato.soma.exception.LoadingNewBannerFailedException;
import com.smaato.soma.exception.ParserException;
import com.smaato.soma.internal.c.l;
import com.smaato.soma.p;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* compiled from: HttpConnector.java */
/* loaded from: classes3.dex */
public class c implements d {

    /* renamed from: a  reason: collision with root package name */
    private static String f5048a = "HTTPConnector";
    private l b;
    private com.smaato.soma.internal.c.b c = null;
    private p d;

    public c() throws HttpConnectorInstantiationException {
        this.b = null;
        try {
            this.b = com.smaato.soma.internal.a.a().c();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new HttpConnectorInstantiationException(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r1v32 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public p a(URL url) throws LoadingNewBannerFailedException {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        HttpURLConnection httpURLConnection2;
        ParserException parserException;
        InputStream inputStream2;
        HttpURLConnection httpURLConnection3;
        com.smaato.soma.internal.b bVar;
        InputStream inputStream3 = null;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.c.1
            });
            try {
                httpURLConnection = f.b().d() == null ? (HttpURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection(f.b().d());
                try {
                    try {
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setReadTimeout(5000);
                        httpURLConnection.setRequestProperty("User-Agent", f.b().c());
                        httpURLConnection.connect();
                        InputStream inputStream4 = httpURLConnection.getInputStream();
                        try {
                            p a2 = (httpURLConnection.getContentType() == null || !httpURLConnection.getContentType().toLowerCase().contains(AdType.STATIC_NATIVE)) ? this.b.a(inputStream4, null, false) : this.b.a(inputStream4, null, true);
                            if (inputStream4 == null || httpURLConnection == null) {
                                bVar = a2;
                            } else {
                                inputStream4.close();
                                httpURLConnection.disconnect();
                                bVar = a2;
                            }
                        } catch (ParserException e) {
                            inputStream2 = inputStream4;
                            httpURLConnection3 = httpURLConnection;
                            parserException = e;
                            try {
                                bVar = new com.smaato.soma.internal.b();
                                bVar.a(parserException.code);
                                bVar.g(parserException.message);
                                if (inputStream2 != null && httpURLConnection3 != null) {
                                    inputStream2.close();
                                    httpURLConnection3.disconnect();
                                }
                                this.d = bVar;
                                com.smaato.soma.measurements.a.a().c();
                                return bVar;
                            } catch (Throwable th) {
                                th = th;
                                inputStream3 = inputStream2;
                                httpURLConnection = httpURLConnection3;
                                if (inputStream3 != null) {
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            httpURLConnection2 = httpURLConnection;
                            inputStream = inputStream4;
                            try {
                                bVar = new com.smaato.soma.internal.b();
                                bVar.a(ErrorCode.NO_CONNECTION_ERROR);
                                bVar.g("Can't connect to the Server for ad fetching.");
                                if (inputStream != null && httpURLConnection2 != null) {
                                    inputStream.close();
                                    httpURLConnection2.disconnect();
                                }
                                this.d = bVar;
                                com.smaato.soma.measurements.a.a().c();
                                return bVar;
                            } catch (Throwable th2) {
                                th = th2;
                                inputStream3 = inputStream;
                                httpURLConnection = httpURLConnection2;
                                if (inputStream3 != null && httpURLConnection != null) {
                                    inputStream3.close();
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (inputStream3 != null) {
                            inputStream3.close();
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (ParserException e3) {
                    inputStream2 = null;
                    httpURLConnection3 = httpURLConnection;
                    parserException = e3;
                } catch (Exception e4) {
                    httpURLConnection2 = httpURLConnection;
                    inputStream = null;
                }
            } catch (ParserException e5) {
                parserException = e5;
                inputStream2 = null;
                httpURLConnection3 = null;
            } catch (Exception e6) {
                inputStream = null;
                httpURLConnection2 = null;
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = null;
            }
            this.d = bVar;
            com.smaato.soma.measurements.a.a().c();
            return bVar;
        } catch (RuntimeException e7) {
            throw e7;
        } catch (Exception e8) {
            throw new LoadingNewBannerFailedException(e8);
        }
    }

    @Override // com.smaato.soma.internal.requests.d
    public final boolean b(URL url) throws BannerHttpRequestFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.c.2
            });
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5048a, "Load async: " + url, 1, DebugCategory.DEBUG));
            if (url != null) {
                new a().execute(url);
            }
            return true;
        } catch (RuntimeException e) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(f5048a, "Ex@asyncLoadNewBanner: " + e.getMessage() + "Url: " + url, 1, DebugCategory.ERROR));
            throw new BannerHttpRequestFailed(url + (e.getMessage() != null ? e.getMessage() : ""), e);
        } catch (Exception e2) {
            throw new BannerHttpRequestFailed(url + (e2.getMessage() != null ? e2.getMessage() : ""), e2);
        }
    }

    @Override // com.smaato.soma.internal.requests.d
    public void a(com.smaato.soma.internal.c.b bVar) {
        this.c = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HttpConnector.java */
    /* loaded from: classes3.dex */
    public class a extends AsyncTask<URL, Void, p> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public p doInBackground(final URL... urlArr) {
            return new com.smaato.soma.l<p>() { // from class: com.smaato.soma.internal.requests.c.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public p b() throws Exception {
                    return c.this.a(urlArr[0]);
                }
            }.c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(final p pVar) {
            new com.smaato.soma.l<Void>() { // from class: com.smaato.soma.internal.requests.c.a.2
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(c.f5048a, "Load async finished!", 1, DebugCategory.DEBUG));
                    if (c.this.c != null) {
                        c.this.c.b(pVar);
                        return null;
                    }
                    return null;
                }
            }.c();
            super.onPostExecute(pVar);
        }
    }
}
