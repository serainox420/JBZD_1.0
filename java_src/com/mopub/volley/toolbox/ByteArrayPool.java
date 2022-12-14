package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3.dex */
public class ByteArrayPool {

    /* renamed from: a  reason: collision with root package name */
    protected static final Comparator<byte[]> f4686a = new Comparator<byte[]>() { // from class: com.mopub.volley.toolbox.ByteArrayPool.1
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };
    private List<byte[]> b = new LinkedList();
    private List<byte[]> c = new ArrayList(64);
    private int d = 0;
    private final int e;

    public ByteArrayPool(int i) {
        this.e = i;
    }

    public synchronized byte[] getBuf(int i) {
        byte[] bArr;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.c.size()) {
                bArr = this.c.get(i3);
                if (bArr.length < i) {
                    i2 = i3 + 1;
                } else {
                    this.d -= bArr.length;
                    this.c.remove(i3);
                    this.b.remove(bArr);
                    break;
                }
            } else {
                bArr = new byte[i];
                break;
            }
        }
        return bArr;
    }

    public synchronized void returnBuf(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.e) {
                this.b.add(bArr);
                int binarySearch = Collections.binarySearch(this.c, bArr, f4686a);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.c.add(binarySearch, bArr);
                this.d += bArr.length;
                a();
            }
        }
    }

    private synchronized void a() {
        while (this.d > this.e) {
            byte[] remove = this.b.remove(0);
            this.c.remove(remove);
            this.d -= remove.length;
        }
    }
}
