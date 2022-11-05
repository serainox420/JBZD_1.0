package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class lf<T> implements lg<List<T>> {

    /* renamed from: a  reason: collision with root package name */
    lg<T> f3020a;

    @Override // com.flurry.sdk.lg
    public final /* bridge */ /* synthetic */ void a(OutputStream outputStream, Object obj) throws IOException {
        a(outputStream, (List) ((List) obj));
    }

    public lf(lg<T> lgVar) {
        this.f3020a = lgVar;
    }

    public final void a(OutputStream outputStream, List<T> list) throws IOException {
        if (outputStream != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.lf.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            int size = list != null ? list.size() : 0;
            dataOutputStream.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f3020a.a(outputStream, list.get(i));
            }
            dataOutputStream.flush();
        }
    }

    @Override // com.flurry.sdk.lg
    /* renamed from: b */
    public final List<T> a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        int readInt = new DataInputStream(inputStream) { // from class: com.flurry.sdk.lf.2
            @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }
        }.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            T a2 = this.f3020a.a(inputStream);
            if (a2 == null) {
                throw new IOException("Missing record.");
            }
            arrayList.add(a2);
        }
        return arrayList;
    }
}
