package net.gotev.uploadservice;

import android.content.Context;
import android.content.Intent;
import java.net.MalformedURLException;
import java.net.URL;
import net.gotev.uploadservice.c;
/* compiled from: HttpUploadRequest.java */
/* loaded from: classes3.dex */
public abstract class c<B extends c<B>> extends h<B> {

    /* renamed from: a  reason: collision with root package name */
    protected final HttpUploadTaskParameters f5845a;

    public c(Context context, String str, String str2) throws MalformedURLException, IllegalArgumentException {
        super(context, str, str2);
        this.f5845a = new HttpUploadTaskParameters();
        if (!this.c.d().startsWith("http://") && !this.c.d().startsWith("https://")) {
            throw new IllegalArgumentException("Specify either http:// or https:// as protocol");
        }
        new URL(this.c.d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.gotev.uploadservice.h
    public void a(Intent intent) {
        super.a(intent);
        intent.putExtra("httpTaskParameters", this.f5845a);
    }

    public B a(String str, String str2) {
        this.f5845a.b(str, str2);
        return (B) c();
    }
}
