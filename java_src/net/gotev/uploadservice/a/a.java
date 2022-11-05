package net.gotev.uploadservice.a;

import java.io.IOException;
import java.io.InputStream;
import net.gotev.uploadservice.UploadService;
/* compiled from: BodyWriter.java */
/* loaded from: classes3.dex */
public abstract class a {

    /* compiled from: BodyWriter.java */
    /* renamed from: net.gotev.uploadservice.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0598a {
        void a(int i);

        boolean c();
    }

    public abstract void a() throws IOException;

    public abstract void a(byte[] bArr) throws IOException;

    public abstract void a(byte[] bArr, int i) throws IOException;

    public final void a(InputStream inputStream, InterfaceC0598a interfaceC0598a) throws IOException {
        int read;
        if (interfaceC0598a == null) {
            throw new IllegalArgumentException("listener MUST not be null!");
        }
        byte[] bArr = new byte[UploadService.f];
        while (interfaceC0598a.c() && (read = inputStream.read(bArr, 0, bArr.length)) > 0) {
            a(bArr, read);
            a();
            interfaceC0598a.a(read);
        }
    }
}
