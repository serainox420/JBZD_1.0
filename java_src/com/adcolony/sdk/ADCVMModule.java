package com.adcolony.sdk;

import android.app.Activity;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ADCVMModule implements ad {
    static boolean d = false;

    /* renamed from: a  reason: collision with root package name */
    boolean f959a;
    int b;
    ExecutorService c;
    private JSONArray e = s.b();
    private Runnable f;
    private Runnable g;
    private ADCJSVirtualMachine h;

    /* loaded from: classes.dex */
    private class ADCJSVirtualMachine {
        private long b;
        private int c;

        private native long create(int i, byte[] bArr, byte[] bArr2);

        private native void delete(long j, int i);

        private native byte[] update(long j, int i, byte[] bArr);

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends Exception {
            a(String str) {
                super(str);
            }
        }

        ADCJSVirtualMachine(int i, byte[] bArr, byte[] bArr2) throws a {
            this.b = create(i, bArr, bArr2);
            if (this.b < 0) {
                throw new a("Virtual machine could not be created.");
            }
            this.c = i;
        }

        void a() {
            delete(this.b, this.c);
        }

        byte[] a(byte[] bArr) throws a {
            byte[] update = update(this.b, this.c, bArr);
            if (update == null) {
                if (com.adcolony.sdk.a.l != null && (com.adcolony.sdk.a.l instanceof b)) {
                    au.a(new Runnable() { // from class: com.adcolony.sdk.ADCVMModule.ADCJSVirtualMachine.1
                        @Override // java.lang.Runnable
                        public void run() {
                            z zVar = new z("AdSession.finish_fullscreen_ad", 0);
                            s.b(zVar.b, "status", 1);
                            ((b) com.adcolony.sdk.a.l).a(zVar);
                        }
                    });
                }
                if (ADCVMModule.this.f959a) {
                    try {
                        StringBuilder append = new StringBuilder().append(com.adcolony.sdk.a.m.k.f1048a);
                        h hVar = com.adcolony.sdk.a.m;
                        new File(append.append("7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5").toString()).delete();
                    } catch (Exception e) {
                    }
                }
                throw new a("Virtual machine error.");
            }
            return update;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ADCVMModule(Activity activity, int i, String str, JSONObject jSONObject, ExecutorService executorService) {
        this.b = i;
        this.c = executorService;
        if (i == 1 && d) {
            str = "ADCController.js";
        }
        u.b.b("----------------------------------------------------------------------");
        u.b.b("CREATING VM " + str);
        File file = new File(str);
        StringBuilder sb = new StringBuilder((int) file.length());
        if (i == 1) {
            try {
            } catch (IOException e) {
                u.h.a("JavaScript file not found: ").b(str);
            } catch (Exception e2) {
                u.h.a("Unable to create virtual machine for: ").b(str);
            }
            if (d) {
                this.f959a = true;
                InputStream open = activity.getAssets().open(str);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(open.available());
                for (int read = open.read(); read != -1; read = open.read()) {
                    byteArrayOutputStream.write(read);
                }
                String jSONObject2 = jSONObject != null ? jSONObject.toString() : "";
                if (!a.m.F) {
                    this.h = new ADCJSVirtualMachine(i, byteArrayOutputStream.toByteArray(), jSONObject2.getBytes("UTF-8"));
                }
                open.close();
                u.b.b("----------------------------------------------------------------------");
            }
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file.getAbsolutePath())));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            sb.append(readLine);
            sb.append('\n');
        }
        String jSONObject3 = jSONObject != null ? jSONObject.toString() : "";
        if (!a.m.F) {
            this.h = new ADCJSVirtualMachine(i, sb.toString().getBytes(), jSONObject3.getBytes("UTF-8"));
        }
        bufferedReader.close();
        u.b.b("----------------------------------------------------------------------");
    }

    @Override // com.adcolony.sdk.ad
    public int a() {
        return this.b;
    }

    @Override // com.adcolony.sdk.ad
    public void a(JSONObject jSONObject) {
        synchronized (this.e) {
            this.e.put(jSONObject);
        }
    }

    @Override // com.adcolony.sdk.ad
    public void b() {
        if (this.g == null) {
            this.g = new Runnable() { // from class: com.adcolony.sdk.ADCVMModule.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!a.m.F) {
                        ADCVMModule.this.h.a();
                    }
                }
            };
        }
        this.c.submit(this.g);
        this.c.shutdown();
    }

    @Override // com.adcolony.sdk.ad
    public void c() {
        if (this.f == null) {
            this.f = new Runnable() { // from class: com.adcolony.sdk.ADCVMModule.2
                @Override // java.lang.Runnable
                public void run() {
                    String str;
                    JSONArray b;
                    String str2 = "";
                    synchronized (ADCVMModule.this.e) {
                        if (ADCVMModule.this.e.length() > 0) {
                            str2 = ADCVMModule.this.e.toString();
                            ADCVMModule.this.e = s.b();
                        }
                    }
                    if (!a.m.F) {
                        try {
                            str = new String(ADCVMModule.this.h.a(str2.getBytes("UTF-8")), "UTF-8");
                        } catch (Exception e) {
                            u.h.a("VM update failed: ").b(au.a(e));
                            a.m.d.a(ADCVMModule.this.b);
                        }
                        if (str == null && str.length() > 2 && (b = s.b(str)) != null) {
                            for (int i = 0; i < b.length(); i++) {
                                JSONObject a2 = s.a(b, i);
                                if (a2 != null) {
                                    a.m.d.a(a2);
                                }
                            }
                            return;
                        }
                        return;
                    }
                    str = null;
                    if (str == null) {
                    }
                }
            };
        }
        this.c.submit(this.f);
    }

    @Override // com.adcolony.sdk.ad
    public boolean d() {
        return this.f959a;
    }
}
