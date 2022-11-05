package net.gotev.uploadservice.a.a;

import com.inmobi.monetization.internal.Constants;
import java.io.IOException;
/* compiled from: HurlStack.java */
/* loaded from: classes3.dex */
public class b implements net.gotev.uploadservice.a.c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5839a = true;
    private boolean b = false;
    private int c = Constants.HTTP_TIMEOUT;
    private int d = 30000;

    @Override // net.gotev.uploadservice.a.c
    public net.gotev.uploadservice.a.b a(String str, String str2) throws IOException {
        return new c(str, str2, this.f5839a, this.b, this.c, this.d);
    }
}
