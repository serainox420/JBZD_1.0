package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
/* loaded from: classes2.dex */
public final class UdpDataSource implements e {

    /* renamed from: a  reason: collision with root package name */
    private final r<? super UdpDataSource> f3476a;
    private final int b;
    private final byte[] c;
    private final DatagramPacket d;
    private Uri e;
    private DatagramSocket f;
    private MulticastSocket g;
    private InetAddress h;
    private InetSocketAddress i;
    private boolean j;
    private int k;

    /* loaded from: classes2.dex */
    public static final class UdpDataSourceException extends IOException {
        public UdpDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws UdpDataSourceException {
        this.e = gVar.f3489a;
        String host = this.e.getHost();
        int port = this.e.getPort();
        try {
            this.h = InetAddress.getByName(host);
            this.i = new InetSocketAddress(this.h, port);
            if (this.h.isMulticastAddress()) {
                this.g = new MulticastSocket(this.i);
                this.g.joinGroup(this.h);
                this.f = this.g;
            } else {
                this.f = new DatagramSocket(this.i);
            }
            try {
                this.f.setSoTimeout(this.b);
                this.j = true;
                if (this.f3476a != null) {
                    this.f3476a.a((r<? super UdpDataSource>) this, gVar);
                    return -1L;
                }
                return -1L;
            } catch (SocketException e) {
                throw new UdpDataSourceException(e);
            }
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws UdpDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.k == 0) {
            try {
                this.f.receive(this.d);
                this.k = this.d.getLength();
                if (this.f3476a != null) {
                    this.f3476a.a((r<? super UdpDataSource>) this, this.k);
                }
            } catch (IOException e) {
                throw new UdpDataSourceException(e);
            }
        }
        int length = this.d.getLength() - this.k;
        int min = Math.min(this.k, i2);
        System.arraycopy(this.c, length, bArr, i, min);
        this.k -= min;
        return min;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.e;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() {
        this.e = null;
        if (this.g != null) {
            try {
                this.g.leaveGroup(this.h);
            } catch (IOException e) {
            }
            this.g = null;
        }
        if (this.f != null) {
            this.f.close();
            this.f = null;
        }
        this.h = null;
        this.i = null;
        this.k = 0;
        if (this.j) {
            this.j = false;
            if (this.f3476a != null) {
                this.f3476a.a(this);
            }
        }
    }
}
