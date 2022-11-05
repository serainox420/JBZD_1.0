package com.adcolony.sdk;

import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.a.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class ADCDownload implements Runnable {
    boolean e;
    int f;
    int g;
    private HttpURLConnection i;
    private InputStream j;
    private JSONObject k;
    private z l;
    private Listener m;
    private String n;
    private Map<String, List<String>> o;

    /* renamed from: a  reason: collision with root package name */
    String f957a = "";
    String b = "";
    String c = "";
    String d = "";
    ExecutorService h = Executors.newSingleThreadExecutor();

    /* loaded from: classes.dex */
    public interface Listener {
        void on_download_finished(ADCDownload aDCDownload, z zVar, Map<String, List<String>> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ADCDownload(z zVar, Listener listener) {
        this.l = zVar;
        this.m = listener;
        if (a()) {
            try {
                this.h.submit(this);
            } catch (RejectedExecutionException e) {
                this.e = false;
                listener.on_download_finished(this, zVar, this.o);
            }
        }
    }

    boolean a() {
        try {
            this.f957a = s.b(this.l.b, "url");
            this.c = s.b(this.l.b, "filepath");
            this.n = s.b(this.l.b, "content");
            this.k = s.f(this.l.b, "info");
            this.d = s.b(this.l.b, a.b.CONTENT_TYPE);
            s.b(this.l.b, "encoding");
            s.d(this.l.b, "encrypt");
            boolean d = s.d(this.l.b, "no_redirect");
            if (this.f957a.startsWith("file://")) {
                if (this.f957a.startsWith("file:///android_asset/")) {
                    if (a.l == null) {
                        return false;
                    }
                    this.j = a.l.getAssets().open(this.f957a.substring("file:///android_asset/".length()));
                } else {
                    this.j = new FileInputStream(this.f957a.substring("file://".length()));
                }
                return true;
            }
            HttpURLConnection.setFollowRedirects(!d);
            this.i = (HttpURLConnection) new URL(this.f957a).openConnection();
            return true;
        } catch (MalformedURLException e) {
            u.h.a("MalformedURLException: ").b(e.toString());
            this.e = true;
            this.m.on_download_finished(this, this.l, null);
            return false;
        } catch (IOException e2) {
            u.f.a("Download of ").a(this.f957a).a(" failed: ").b(e2.toString());
            this.e = false;
            this.g = WalletConstants.ERROR_CODE_INVALID_PARAMETERS;
            this.m.on_download_finished(this, this.l, null);
            return false;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = 1024;
        try {
        } catch (IOException e) {
            this.g = WalletConstants.ERROR_CODE_INVALID_PARAMETERS;
            u.f.a("Download of ").a(this.f957a).a(" failed: ").b(e.toString());
        } catch (OutOfMemoryError e2) {
            u.g.b("Out of memory error - disabling AdColony.");
            a.m.b(true);
        } catch (MalformedURLException e3) {
            u.h.a("MalformedURLException: ").b(e3.toString());
            return;
        }
        if (this.j != null) {
            b();
        } else if (this.l.f1506a.equals("WebServices.get") || this.l.f1506a.equals("WebServices.download")) {
            this.g = this.i.getResponseCode();
            int contentLength = this.i.getContentLength();
            this.f = contentLength;
            if (contentLength != -1) {
                i = contentLength;
            }
            InputStream inputStream = this.i.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            this.o = this.i.getHeaderFields();
            if (this.l.f1506a.equals("WebServices.get")) {
                StringBuilder sb = new StringBuilder(i);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append("\n");
                }
                inputStream.close();
                this.b = sb.toString();
                this.f = this.b.length();
            } else {
                byte[] bArr = new byte[1024];
                FileOutputStream fileOutputStream = new FileOutputStream(this.c);
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
            }
            u.d.a("Downloaded ").b(this.f957a);
            this.e = true;
            this.m.on_download_finished(this, this.l, this.o);
        } else {
            this.i.setDoOutput(true);
            this.i.setFixedLengthStreamingMode(this.n.length());
            this.i.getRequestMethod();
            this.i.setRequestProperty("Accept-Charset", "UTF-8");
            if (!this.d.equals("")) {
                this.i.setRequestProperty("Content-Type", this.d);
            }
            new PrintStream(this.i.getOutputStream()).print(this.n);
            this.i.connect();
            int responseCode = this.i.getResponseCode();
            this.g = responseCode;
            if (responseCode == 200) {
                InputStream inputStream2 = this.i.getInputStream();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                StringBuilder sb2 = new StringBuilder(inputStream2.available());
                this.o = this.i.getHeaderFields();
                while (true) {
                    String readLine2 = bufferedReader2.readLine();
                    if (readLine2 != null) {
                        sb2.append(readLine2);
                        sb2.append("\n");
                    } else {
                        bufferedReader2.close();
                        inputStream2.close();
                        this.b = sb2.toString();
                        this.f = this.b.length();
                        this.e = true;
                        this.m.on_download_finished(this, this.l, this.o);
                        return;
                    }
                }
            }
            this.e = false;
            this.m.on_download_finished(this, this.l, this.o);
        }
    }

    void b() throws IOException {
        if (this.c.length() == 0) {
            int available = this.j.available();
            if (available <= 1) {
                available = 1024;
            }
            StringBuilder sb = new StringBuilder(available);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.j), 1024);
            for (int read = bufferedReader.read(); read != -1; read = bufferedReader.read()) {
                sb.append((char) read);
            }
            this.b = sb.toString();
            this.f = this.b.length();
        } else {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.c).getAbsolutePath());
            this.f = 0;
            byte[] bArr = new byte[1024];
            int read2 = this.j.read(bArr, 0, 1024);
            while (read2 != -1) {
                this.f += read2;
                fileOutputStream.write(bArr, 0, read2);
                read2 = this.j.read(bArr, 0, 1024);
            }
            fileOutputStream.flush();
            fileOutputStream.close();
        }
        this.j.close();
        this.e = true;
        this.m.on_download_finished(this, this.l, null);
    }
}
