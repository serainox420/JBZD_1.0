package com.flurry.sdk;

import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ep extends eq {
    private List<byte[]> g;
    private String d = "";
    private Integer f = 0;
    private String e = Long.toHexString(System.nanoTime());

    /* loaded from: classes2.dex */
    public interface a {
        void a(int i, String str);

        void a(Long l);
    }

    private byte[] d() {
        byte[] bArr = new byte[this.f.intValue()];
        int i = 0;
        for (byte[] bArr2 : this.g) {
            System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
            i = bArr2.length + i;
        }
        return bArr;
    }

    private void a(StringBuilder sb) {
        byte[] bytes = sb.toString().getBytes();
        this.g.add(bytes);
        this.f = Integer.valueOf(bytes.length + this.f.intValue());
    }

    @Override // com.flurry.sdk.eq
    protected final ku.a a() {
        return ku.a.kPost;
    }

    @Override // com.flurry.sdk.eq
    protected final String b() {
        return this.d;
    }

    @Override // com.flurry.sdk.eq
    public final void c() {
        jw.a().a(this);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [byte[], RequestObjectType] */
    public final void a(String str, Map<String, String> map, final a aVar) {
        this.d = ef.a(str);
        try {
            this.g = new ArrayList();
            StringBuilder sb = new StringBuilder();
            sb.append("Content-Type: multipart/form-data; boundary=").append(this.e).append("\r\n\r\n");
            StringBuilder sb2 = sb;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (value != null) {
                    if ("data".equals(key)) {
                        File file = new File(value);
                        if (file.exists()) {
                            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(file.getName());
                            byte[] bArr = new byte[(int) file.length()];
                            DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(file)));
                            dataInputStream.readFully(bArr);
                            dataInputStream.close();
                            sb2.append("--").append(this.e).append("\r\n");
                            sb2.append("Content-Disposition: form-data; name=\"").append(key).append("\"; filename=\"").append(file.getName()).append("\"\r\n");
                            sb2.append("Content-Type: ").append(guessContentTypeFromName).append("\r\n\r\n");
                            a(sb2);
                            this.g.add(bArr);
                            this.f = Integer.valueOf(this.f.intValue() + bArr.length);
                            sb2 = new StringBuilder("\r\n");
                        }
                    } else {
                        sb2.append("--").append(this.e).append("\r\n");
                        sb2.append("Content-Disposition: form-data; name=\"").append(key).append("\"\r\n\r\n");
                        sb2.append(value).append("\r\n");
                    }
                }
            }
            sb2.append("--").append(this.e).append("--\r\n");
            a(sb2);
        } catch (IOException e) {
            aVar.a(-1, "Error while creating payload");
            e.printStackTrace();
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            String key2 = entry2.getKey();
            String value2 = entry2.getValue();
            if (!"data".equals(key2)) {
                b(key2, value2);
            }
        }
        el c = ed.c();
        ks<?, ?> ksVar = new ks<>();
        ksVar.f = this.d;
        ksVar.g = ku.a.kPost;
        a(ksVar, c);
        ks ksVar2 = new ks();
        ksVar2.f = this.d;
        ksVar2.g = ku.a.kPost;
        ksVar2.b = d();
        ksVar2.w = 20000;
        ksVar2.a("Authorization", this.b.get("Authorization"));
        ksVar2.a("Content-Type", "multipart/form-data, boundary=" + this.e);
        ksVar2.a("Content-Length", this.f.toString());
        ksVar2.c = new lc();
        ksVar2.d = new lh();
        ksVar2.a("Content-Type", er.f());
        ksVar2.f2978a = new ks.a<byte[], String>() { // from class: com.flurry.sdk.ep.1
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<byte[], String> ksVar3, String str2) {
                String str3 = str2;
                if (str3 != null) {
                    int a2 = eg.a(str3);
                    if (a2 == 201) {
                        aVar.a(eg.c(str3));
                        return;
                    }
                    aVar.a(a2, str3);
                    return;
                }
                aVar.a(-1, "Post failed");
            }
        };
        jw.a().a((Object) this, (ep) ksVar2);
    }
}
