package net.gotev.uploadservice;

import android.content.Context;
import android.content.Intent;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
/* compiled from: MultipartUploadRequest.java */
/* loaded from: classes3.dex */
public class e extends c<e> {
    private static final String e = e.class.getSimpleName();
    private boolean f;

    public e(Context context, String str, String str2) throws IllegalArgumentException, MalformedURLException {
        super(context, str, str2);
        this.f = false;
    }

    public e(Context context, String str) throws MalformedURLException, IllegalArgumentException {
        this(context, null, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.gotev.uploadservice.c, net.gotev.uploadservice.h
    public void a(Intent intent) {
        super.a(intent);
        intent.putExtra("multipartUtf8Charset", this.f);
    }

    @Override // net.gotev.uploadservice.h
    protected Class<? extends j> a() {
        return f.class;
    }

    public e a(String str, String str2, String str3, String str4) throws FileNotFoundException, IllegalArgumentException {
        UploadFile uploadFile = new UploadFile(str);
        String a2 = uploadFile.a();
        if (str2 == null || "".equals(str2)) {
            throw new IllegalArgumentException("Please specify parameterName value for file: " + a2);
        }
        uploadFile.a("httpParamName", str2);
        if (str4 == null || str4.isEmpty()) {
            str4 = uploadFile.c(this.b);
            Logger.c(e, "Auto-detected MIME type for " + a2 + " is: " + str4);
        } else {
            Logger.c(e, "Content Type set for " + a2 + " is: " + str4);
        }
        uploadFile.a("httpContentType", str4);
        if (str3 == null || "".equals(str3)) {
            str3 = uploadFile.d(this.b);
            Logger.c(e, "Using original file name: " + str3);
        } else {
            Logger.c(e, "Using custom file name: " + str3);
        }
        uploadFile.a("httpRemoteFileName", str3);
        this.c.a(uploadFile);
        return this;
    }

    public e b(String str, String str2) throws FileNotFoundException, IllegalArgumentException {
        return a(str, str2, null, null);
    }
}
