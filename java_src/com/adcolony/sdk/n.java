package com.adcolony.sdk;

import com.facebook.GraphResponse;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.util.LinkedList;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private LinkedList<Runnable> f1470a = new LinkedList<>();
    private boolean b;

    boolean a(z zVar) {
        String b = s.b(zVar.b, "filepath");
        a.m.k.b();
        JSONObject a2 = s.a();
        try {
            int c = s.c(zVar.b, VastIconXmlManager.OFFSET);
            int c2 = s.c(zVar.b, "size");
            boolean d = s.d(zVar.b, "gunzip");
            String b2 = s.b(zVar.b, "output_filepath");
            InputStream anVar = new an(new FileInputStream(b), c, c2);
            if (d) {
                anVar = new GZIPInputStream(anVar, 1024);
            }
            if (b2.equals("")) {
                StringBuilder sb = new StringBuilder(anVar.available());
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = anVar.read(bArr, 0, 1024);
                    if (read < 0) {
                        break;
                    }
                    sb.append(new String(bArr, 0, read, "ISO-8859-1"));
                }
                s.b(a2, "size", sb.length());
                s.a(a2, "data", sb.toString());
            } else {
                FileOutputStream fileOutputStream = new FileOutputStream(b2);
                byte[] bArr2 = new byte[1024];
                int i = 0;
                while (true) {
                    int read2 = anVar.read(bArr2, 0, 1024);
                    if (read2 < 0) {
                        break;
                    }
                    fileOutputStream.write(bArr2, 0, read2);
                    i += read2;
                }
                fileOutputStream.close();
                s.b(a2, "size", i);
            }
            anVar.close();
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            return true;
        } catch (IOException e) {
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        } catch (OutOfMemoryError e2) {
            u.g.b("Out of memory error - disabling AdColony.");
            a.m.b(true);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean b(z zVar) {
        String b = s.b(zVar.b, "filepath");
        String b2 = s.b(zVar.b, "bundle_path");
        JSONArray g = s.g(zVar.b, "bundle_filenames");
        a.m.k.b();
        JSONObject a2 = s.a();
        try {
            File file = new File(b2);
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            byte[] bArr = new byte[4];
            byte[] bArr2 = new byte[32];
            randomAccessFile.readInt();
            int readInt = randomAccessFile.readInt();
            JSONArray jSONArray = new JSONArray();
            byte[] bArr3 = new byte[1024];
            for (int i = 0; i < readInt; i++) {
                randomAccessFile.seek((i * 44) + 8);
                randomAccessFile.read(bArr2);
                new String(bArr2);
                randomAccessFile.readInt();
                int readInt2 = randomAccessFile.readInt();
                int readInt3 = randomAccessFile.readInt();
                jSONArray.put(readInt3);
                try {
                    String str = b + g.get(i);
                    randomAccessFile.seek(readInt2);
                    FileOutputStream fileOutputStream = new FileOutputStream(str);
                    int i2 = readInt3 / 1024;
                    int i3 = readInt3 % 1024;
                    for (int i4 = 0; i4 < i2; i4++) {
                        randomAccessFile.read(bArr3, 0, 1024);
                        fileOutputStream.write(bArr3, 0, 1024);
                    }
                    randomAccessFile.read(bArr3, 0, i3);
                    fileOutputStream.write(bArr3, 0, i3);
                    fileOutputStream.close();
                } catch (JSONException e) {
                    u.g.a("Could extract file name at index ").a(i).a(" unpacking ad unit bundle at").b(b2);
                    s.a(a2, GraphResponse.SUCCESS_KEY, false);
                    zVar.a(a2).b();
                    return false;
                }
            }
            randomAccessFile.close();
            file.delete();
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            s.a(a2, "file_sizes", jSONArray);
            zVar.a(a2).b();
            return true;
        } catch (IOException e2) {
            u.h.a("Failed to find or open ad unit bundle at path: ").b(b2);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        } catch (OutOfMemoryError e3) {
            u.g.b("Out of memory error - disabling AdColony.");
            a.m.b(true);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        a.a("FileSystem.save", new ac() { // from class: com.adcolony.sdk.n.1
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.c(zVar);
                        n.this.b();
                    }
                });
            }
        });
        a.a("FileSystem.delete", new ac() { // from class: com.adcolony.sdk.n.2
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.a(zVar, new File(s.b(zVar.b, "filepath")));
                        n.this.b();
                    }
                });
            }
        });
        a.a("FileSystem.listing", new ac() { // from class: com.adcolony.sdk.n.3
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.d(zVar);
                        n.this.b();
                    }
                });
            }
        });
        a.a("FileSystem.load", new ac() { // from class: com.adcolony.sdk.n.4
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.e(zVar);
                        n.this.b();
                    }
                });
            }
        });
        a.a("FileSystem.rename", new ac() { // from class: com.adcolony.sdk.n.5
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.f(zVar);
                        n.this.b();
                    }
                });
            }
        });
        a.a("FileSystem.exists", new ac() { // from class: com.adcolony.sdk.n.6
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.g(zVar);
                        n.this.b();
                    }
                });
            }
        });
        a.a("FileSystem.extract", new ac() { // from class: com.adcolony.sdk.n.7
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.a(zVar);
                        n.this.b();
                    }
                });
            }
        });
        a.a("FileSystem.unpack_bundle", new ac() { // from class: com.adcolony.sdk.n.8
            @Override // com.adcolony.sdk.ac
            public void a(final z zVar) {
                n.this.a(new Runnable() { // from class: com.adcolony.sdk.n.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.b(zVar);
                        n.this.b();
                    }
                });
            }
        });
    }

    boolean c(z zVar) {
        String b = s.b(zVar.b, "filepath");
        String b2 = s.b(zVar.b, "data");
        String b3 = s.b(zVar.b, "encoding");
        boolean z = b3 != null && b3.equals("utf8");
        a.m.k.b();
        JSONObject a2 = s.a();
        try {
            a(b, b2, z);
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            return true;
        } catch (IOException e) {
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2, boolean z) throws IOException {
        BufferedWriter bufferedWriter = z ? new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str), "UTF-8")) : new BufferedWriter(new OutputStreamWriter(new FileOutputStream(str)));
        bufferedWriter.write(str2);
        bufferedWriter.flush();
        bufferedWriter.close();
    }

    boolean a(z zVar, File file) {
        a.m.k.b();
        JSONObject a2 = s.a();
        try {
            if (file.isDirectory()) {
                if (file.list().length == 0) {
                    file.delete();
                } else {
                    for (String str : file.list()) {
                        a(zVar, new File(file, str));
                    }
                    if (file.list().length == 0) {
                        file.delete();
                    }
                }
            } else {
                file.delete();
            }
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            return true;
        } catch (Exception e) {
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean d(z zVar) {
        String b = s.b(zVar.b, "filepath");
        a.m.k.b();
        JSONObject a2 = s.a();
        String[] list = new File(b).list();
        if (list != null) {
            JSONArray b2 = s.b();
            for (String str : list) {
                JSONObject a3 = s.a();
                s.a(a3, "filename", str);
                if (new File(b + str).isDirectory()) {
                    s.a(a3, "is_folder", true);
                } else {
                    s.a(a3, "is_folder", false);
                }
                s.a(b2, a3);
            }
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            s.a(a2, "entries", b2);
            zVar.a(a2).b();
            return true;
        }
        s.a(a2, GraphResponse.SUCCESS_KEY, false);
        zVar.a(a2).b();
        return false;
    }

    String e(z zVar) {
        boolean z = true;
        String b = s.b(zVar.b, "filepath");
        String b2 = s.b(zVar.b, "encoding");
        if (b2 == null || !b2.equals("utf8")) {
            z = false;
        }
        a.m.k.b();
        JSONObject a2 = s.a();
        try {
            StringBuilder a3 = a(b, z);
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            s.a(a2, "data", a3.toString());
            zVar.a(a2).b();
            return a3.toString();
        } catch (IOException e) {
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringBuilder a(String str, boolean z) throws IOException {
        File file = new File(str);
        StringBuilder sb = new StringBuilder((int) file.length());
        BufferedReader bufferedReader = z ? new BufferedReader(new InputStreamReader(new FileInputStream(file.getAbsolutePath()), "UTF-8")) : new BufferedReader(new InputStreamReader(new FileInputStream(file.getAbsolutePath())));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
                sb.append("\n");
            } else {
                bufferedReader.close();
                return sb;
            }
        }
    }

    boolean f(z zVar) {
        boolean z = true;
        String b = s.b(zVar.b, "filepath");
        String b2 = s.b(zVar.b, "new_filepath");
        a.m.k.b();
        JSONObject a2 = s.a();
        try {
            if (new File(b).renameTo(new File(b2))) {
                s.a(a2, GraphResponse.SUCCESS_KEY, true);
                zVar.a(a2).b();
            } else {
                s.a(a2, GraphResponse.SUCCESS_KEY, false);
                zVar.a(a2).b();
                z = false;
            }
            return z;
        } catch (Exception e) {
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            return false;
        }
    }

    boolean g(z zVar) {
        String b = s.b(zVar.b, "filepath");
        a.m.k.b();
        JSONObject a2 = s.a();
        try {
            boolean exists = new File(b).exists();
            s.a(a2, "result", exists);
            s.a(a2, GraphResponse.SUCCESS_KEY, true);
            zVar.a(a2).b();
            return exists;
        } catch (Exception e) {
            s.a(a2, "result", false);
            s.a(a2, GraphResponse.SUCCESS_KEY, false);
            zVar.a(a2).b();
            e.printStackTrace();
            return false;
        }
    }

    void a(Runnable runnable) {
        if (this.f1470a.isEmpty() && !this.b) {
            this.b = true;
            runnable.run();
            return;
        }
        this.f1470a.push(runnable);
    }

    void b() {
        this.b = false;
        if (!this.f1470a.isEmpty()) {
            this.b = true;
            this.f1470a.removeLast().run();
        }
    }
}
