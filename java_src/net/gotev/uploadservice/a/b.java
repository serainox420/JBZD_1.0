package net.gotev.uploadservice.a;

import java.io.IOException;
import java.util.List;
import net.gotev.uploadservice.NameValue;
import net.gotev.uploadservice.ServerResponse;
/* compiled from: HttpConnection.java */
/* loaded from: classes3.dex */
public interface b {

    /* compiled from: HttpConnection.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(net.gotev.uploadservice.a.a aVar) throws IOException;
    }

    ServerResponse a(a aVar) throws IOException;

    b a(long j, boolean z);

    b a(List<NameValue> list) throws IOException;

    void a();
}
