package com.google.android.gms.internal;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.Thread;
import java.net.Socket;
import java.net.URI;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class zzbsm {
    private static final AtomicInteger zzcjQ = new AtomicInteger(0);
    private static final Charset zzcjR = Charset.forName("UTF-8");
    private static ThreadFactory zzcka = Executors.defaultThreadFactory();
    private static zzbsl zzckb = new zzbsl() { // from class: com.google.android.gms.internal.zzbsm.1
        @Override // com.google.android.gms.internal.zzbsl
        public void zza(Thread thread, String str) {
            thread.setName(str);
        }
    };
    private final URI zzcjV;
    private final zzbsp zzcjY;
    private volatile zza zzcjS = zza.NONE;
    private volatile Socket zzcjT = null;
    private zzbsn zzcjU = null;
    private final int zzazO = zzcjQ.incrementAndGet();
    private final Thread zzcjZ = getThreadFactory().newThread(new Runnable() { // from class: com.google.android.gms.internal.zzbsm.2
        @Override // java.lang.Runnable
        public void run() {
            zzbsm.this.zzabw();
        }
    });
    private final zzbsr zzcjW = new zzbsr(this);
    private final zzbss zzcjX = new zzbss(this, "TubeSock", this.zzazO);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum zza {
        NONE,
        CONNECTING,
        CONNECTED,
        DISCONNECTING,
        DISCONNECTED
    }

    public zzbsm(URI uri, String str, Map<String, String> map) {
        this.zzcjV = uri;
        this.zzcjY = new zzbsp(uri, str, map);
    }

    private Socket createSocket() {
        String scheme = this.zzcjV.getScheme();
        String host = this.zzcjV.getHost();
        int port = this.zzcjV.getPort();
        if (scheme != null && scheme.equals("ws")) {
            try {
                return new Socket(host, port == -1 ? 80 : port);
            } catch (UnknownHostException e) {
                String valueOf = String.valueOf(host);
                throw new zzbso(valueOf.length() != 0 ? "unknown host: ".concat(valueOf) : new String("unknown host: "), e);
            } catch (IOException e2) {
                String valueOf2 = String.valueOf(this.zzcjV);
                throw new zzbso(new StringBuilder(String.valueOf(valueOf2).length() + 31).append("error while creating socket to ").append(valueOf2).toString(), e2);
            }
        } else if (scheme == null || !scheme.equals("wss")) {
            String valueOf3 = String.valueOf(scheme);
            throw new zzbso(valueOf3.length() != 0 ? "unsupported protocol: ".concat(valueOf3) : new String("unsupported protocol: "));
        } else {
            if (port == -1) {
                port = 443;
            }
            try {
                SSLSocket sSLSocket = (SSLSocket) SSLSocketFactory.getDefault().createSocket(host, port);
                if (HttpsURLConnection.getDefaultHostnameVerifier().verify(host, sSLSocket.getSession())) {
                    return sSLSocket;
                }
                String valueOf4 = String.valueOf(this.zzcjV);
                throw new zzbso(new StringBuilder(String.valueOf(valueOf4).length() + 39).append("Error while verifying secure socket to ").append(valueOf4).toString());
            } catch (UnknownHostException e3) {
                String valueOf5 = String.valueOf(host);
                throw new zzbso(valueOf5.length() != 0 ? "unknown host: ".concat(valueOf5) : new String("unknown host: "), e3);
            } catch (IOException e4) {
                String valueOf6 = String.valueOf(this.zzcjV);
                throw new zzbso(new StringBuilder(String.valueOf(valueOf6).length() + 38).append("error while creating secure socket to ").append(valueOf6).toString(), e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ThreadFactory getThreadFactory() {
        return zzcka;
    }

    private synchronized void zza(byte b, byte[] bArr) {
        if (this.zzcjS != zza.CONNECTED) {
            this.zzcjU.zza(new zzbso("error while sending data: not connected"));
        } else {
            try {
                this.zzcjX.zzb(b, true, bArr);
            } catch (IOException e) {
                this.zzcjU.zza(new zzbso("Failed to send frame", e));
                close();
            }
        }
    }

    public static void zza(ThreadFactory threadFactory, zzbsl zzbslVar) {
        zzcka = threadFactory;
        zzckb = zzbslVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbsl zzabq() {
        return zzckb;
    }

    private synchronized void zzabt() {
        if (this.zzcjS != zza.DISCONNECTED) {
            this.zzcjW.zzabA();
            this.zzcjX.zzabD();
            if (this.zzcjT != null) {
                try {
                    this.zzcjT.close();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
            this.zzcjS = zza.DISCONNECTED;
            this.zzcjU.onClose();
        }
    }

    private void zzabu() {
        try {
            this.zzcjS = zza.DISCONNECTING;
            this.zzcjX.zzabD();
            this.zzcjX.zzb((byte) 8, true, new byte[0]);
        } catch (IOException e) {
            this.zzcjU.zza(new zzbso("Failed to send close frame", e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzabw() {
        boolean z;
        try {
            Socket createSocket = createSocket();
            synchronized (this) {
                this.zzcjT = createSocket;
                if (this.zzcjS == zza.DISCONNECTED) {
                    try {
                        this.zzcjT.close();
                        this.zzcjT = null;
                        return;
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                }
                DataInputStream dataInputStream = new DataInputStream(createSocket.getInputStream());
                OutputStream outputStream = createSocket.getOutputStream();
                outputStream.write(this.zzcjY.zzaby());
                byte[] bArr = new byte[1000];
                ArrayList arrayList = new ArrayList();
                int i = 0;
                boolean z2 = false;
                while (!z2) {
                    int read = dataInputStream.read();
                    if (read == -1) {
                        throw new zzbso("Connection closed before handshake was complete");
                    }
                    bArr[i] = (byte) read;
                    i++;
                    if (bArr[i - 1] == 10 && bArr[i - 2] == 13) {
                        String str = new String(bArr, zzcjR);
                        if (str.trim().equals("")) {
                            z = true;
                        } else {
                            arrayList.add(str.trim());
                            z = z2;
                        }
                        z2 = z;
                        bArr = new byte[1000];
                        i = 0;
                    } else if (i == 1000) {
                        String valueOf = String.valueOf(new String(bArr, zzcjR));
                        throw new zzbso(valueOf.length() != 0 ? "Unexpected long line in handshake: ".concat(valueOf) : new String("Unexpected long line in handshake: "));
                    }
                }
                this.zzcjY.zzjc((String) arrayList.get(0));
                arrayList.remove(0);
                HashMap<String, String> hashMap = new HashMap<>();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String[] split = ((String) it.next()).split(": ", 2);
                    hashMap.put(split[0], split[1]);
                }
                this.zzcjY.zzc(hashMap);
                this.zzcjX.zzb(outputStream);
                this.zzcjW.zza(dataInputStream);
                this.zzcjS = zza.CONNECTED;
                this.zzcjX.zzabx().start();
                this.zzcjU.zzYd();
                this.zzcjW.run();
            }
        } catch (zzbso e2) {
            this.zzcjU.zza(e2);
        } catch (IOException e3) {
            zzbsn zzbsnVar = this.zzcjU;
            String valueOf2 = String.valueOf(e3.getMessage());
            zzbsnVar.zza(new zzbso(valueOf2.length() != 0 ? "error while connecting: ".concat(valueOf2) : new String("error while connecting: "), e3));
        } finally {
            close();
        }
    }

    public synchronized void close() {
        switch (this.zzcjS) {
            case NONE:
                this.zzcjS = zza.DISCONNECTED;
                break;
            case CONNECTING:
                zzabt();
                break;
            case CONNECTED:
                zzabu();
                break;
        }
    }

    public synchronized void connect() {
        if (this.zzcjS != zza.NONE) {
            this.zzcjU.zza(new zzbso("connect() already called"));
            close();
        } else {
            zzbsl zzabq = zzabq();
            Thread zzabx = zzabx();
            String valueOf = String.valueOf("TubeSockReader-");
            zzabq.zza(zzabx, new StringBuilder(String.valueOf(valueOf).length() + 11).append(valueOf).append(this.zzazO).toString());
            this.zzcjS = zza.CONNECTING;
            zzabx().start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void zzY(byte[] bArr) {
        zza((byte) 10, bArr);
    }

    public void zza(zzbsn zzbsnVar) {
        this.zzcjU = zzbsnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbsn zzabr() {
        return this.zzcjU;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzabs() {
        zzabt();
    }

    public void zzabv() throws InterruptedException {
        if (this.zzcjX.zzabx().getState() != Thread.State.NEW) {
            this.zzcjX.zzabx().join();
        }
        zzabx().join();
    }

    Thread zzabx() {
        return this.zzcjZ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzbso zzbsoVar) {
        this.zzcjU.zza(zzbsoVar);
        if (this.zzcjS == zza.CONNECTED) {
            close();
        }
        zzabt();
    }

    public synchronized void zziS(String str) {
        zza((byte) 1, str.getBytes(zzcjR));
    }
}
