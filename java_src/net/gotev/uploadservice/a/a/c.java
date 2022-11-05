package net.gotev.uploadservice.a.a;

import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import net.gotev.uploadservice.Logger;
import net.gotev.uploadservice.NameValue;
import net.gotev.uploadservice.ServerResponse;
import net.gotev.uploadservice.UploadService;
import net.gotev.uploadservice.a.b;
/* compiled from: HurlStackConnection.java */
/* loaded from: classes3.dex */
public class c implements net.gotev.uploadservice.a.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5840a = c.class.getSimpleName();
    private HttpURLConnection b;

    public c(String str, String str2, boolean z, boolean z2, int i, int i2) throws IOException {
        Logger.c(getClass().getSimpleName(), "creating new connection");
        URL url = new URL(str2);
        if (url.getProtocol().equals("https")) {
            this.b = (HttpsURLConnection) url.openConnection();
        } else {
            this.b = (HttpURLConnection) url.openConnection();
        }
        this.b.setDoInput(true);
        this.b.setDoOutput(true);
        this.b.setConnectTimeout(i);
        this.b.setReadTimeout(i2);
        this.b.setUseCaches(z2);
        this.b.setInstanceFollowRedirects(z);
        this.b.setRequestMethod(str);
    }

    @Override // net.gotev.uploadservice.a.b
    public net.gotev.uploadservice.a.b a(List<NameValue> list) throws IOException {
        for (NameValue nameValue : list) {
            this.b.setRequestProperty(nameValue.a(), nameValue.b());
        }
        return this;
    }

    @Override // net.gotev.uploadservice.a.b
    public net.gotev.uploadservice.a.b a(long j, boolean z) {
        if (z) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.b.setFixedLengthStreamingMode(j);
            } else if (j > 2147483647L) {
                throw new RuntimeException("You need Android API version 19 or newer to upload more than 2GB in a single request using fixed size content length. Try switching to chunked mode instead, but make sure your server side supports it!");
            } else {
                this.b.setFixedLengthStreamingMode((int) j);
            }
        } else {
            this.b.setChunkedStreamingMode(0);
        }
        return this;
    }

    private byte[] b() throws IOException {
        InputStream inputStream = null;
        try {
            if (this.b.getResponseCode() / 100 == 2) {
                inputStream = this.b.getInputStream();
            } else {
                inputStream = this.b.getErrorStream();
            }
            return a(inputStream);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e) {
                    Logger.a(f5840a, "Error while closing server response stream", e);
                }
            }
        }
    }

    private byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[UploadService.f];
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, bArr.length);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Exception e) {
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private LinkedHashMap<String, String> c() throws IOException {
        Map<String, List<String>> headerFields = this.b.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null) {
                StringBuilder sb = new StringBuilder();
                for (String str : entry.getValue()) {
                    sb.append(str);
                }
                linkedHashMap.put(entry.getKey(), sb.toString());
            }
        }
        return linkedHashMap;
    }

    @Override // net.gotev.uploadservice.a.b
    public ServerResponse a(b.a aVar) throws IOException {
        a aVar2 = new a(this.b.getOutputStream());
        aVar.a(aVar2);
        aVar2.a();
        return new ServerResponse(this.b.getResponseCode(), b(), c());
    }

    @Override // net.gotev.uploadservice.a.b
    public void a() {
        Logger.c(getClass().getSimpleName(), "closing connection");
        if (this.b != null) {
            try {
                this.b.getInputStream().close();
            } catch (Exception e) {
            }
            try {
                this.b.getOutputStream().flush();
                this.b.getOutputStream().close();
            } catch (Exception e2) {
            }
            try {
                this.b.disconnect();
            } catch (Exception e3) {
                Logger.a(f5840a, "Error while closing connection", e3);
            }
        }
    }
}
