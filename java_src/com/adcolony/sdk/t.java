package com.adcolony.sdk;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes.dex */
class t {

    /* renamed from: a  reason: collision with root package name */
    URL f1499a;

    public t(URL url) {
        this.f1499a = url;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(String str) throws IOException {
        GZIPOutputStream gZIPOutputStream;
        HttpURLConnection httpURLConnection;
        boolean z;
        DataOutputStream dataOutputStream;
        HttpURLConnection httpURLConnection2;
        DataOutputStream dataOutputStream2 = null;
        boolean z2 = false;
        try {
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) this.f1499a.openConnection();
            try {
                httpURLConnection3.setRequestMethod("POST");
                httpURLConnection3.setRequestProperty("Content-Encoding", "gzip");
                httpURLConnection3.setRequestProperty("Content-Type", "application/json");
                httpURLConnection3.setDoInput(true);
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(httpURLConnection3.getOutputStream());
                try {
                    DataOutputStream dataOutputStream3 = new DataOutputStream(gZIPOutputStream2);
                    try {
                        dataOutputStream3.writeBytes(str);
                        dataOutputStream3.close();
                        try {
                            int responseCode = httpURLConnection3.getResponseCode();
                            if (dataOutputStream3 != null) {
                            }
                            if (gZIPOutputStream2 != 0) {
                                gZIPOutputStream2.close();
                            }
                            if (httpURLConnection3 != null) {
                                httpURLConnection3.disconnect();
                            }
                            return responseCode;
                        } catch (IOException e) {
                            dataOutputStream2 = gZIPOutputStream2;
                            httpURLConnection2 = httpURLConnection3;
                            e = e;
                            z = true;
                            dataOutputStream = dataOutputStream3;
                            try {
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                gZIPOutputStream = dataOutputStream2;
                                dataOutputStream2 = dataOutputStream;
                                boolean z3 = z;
                                httpURLConnection = httpURLConnection2;
                                z2 = z3;
                                if (dataOutputStream2 != null && !z2) {
                                    dataOutputStream2.close();
                                }
                                if (gZIPOutputStream != 0) {
                                    gZIPOutputStream.close();
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            z2 = true;
                            dataOutputStream2 = dataOutputStream3;
                            httpURLConnection = httpURLConnection3;
                            th = th2;
                            gZIPOutputStream = gZIPOutputStream2;
                            if (dataOutputStream2 != null) {
                                dataOutputStream2.close();
                            }
                            if (gZIPOutputStream != 0) {
                            }
                            if (httpURLConnection != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e2) {
                        dataOutputStream = dataOutputStream3;
                        dataOutputStream2 = gZIPOutputStream2;
                        z = false;
                        httpURLConnection2 = httpURLConnection3;
                        e = e2;
                    } catch (Throwable th3) {
                        dataOutputStream2 = dataOutputStream3;
                        httpURLConnection = httpURLConnection3;
                        th = th3;
                        gZIPOutputStream = gZIPOutputStream2;
                    }
                } catch (IOException e3) {
                    dataOutputStream = null;
                    dataOutputStream2 = gZIPOutputStream2;
                    z = false;
                    httpURLConnection2 = httpURLConnection3;
                    e = e3;
                } catch (Throwable th4) {
                    httpURLConnection = httpURLConnection3;
                    th = th4;
                    gZIPOutputStream = gZIPOutputStream2;
                }
            } catch (IOException e4) {
                dataOutputStream = null;
                httpURLConnection2 = httpURLConnection3;
                e = e4;
                z = false;
            } catch (Throwable th5) {
                gZIPOutputStream = 0;
                httpURLConnection = httpURLConnection3;
                th = th5;
            }
        } catch (IOException e5) {
            e = e5;
            z = false;
            dataOutputStream = null;
            httpURLConnection2 = null;
        } catch (Throwable th6) {
            th = th6;
            gZIPOutputStream = 0;
            httpURLConnection = null;
        }
    }
}
