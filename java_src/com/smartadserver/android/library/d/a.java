package com.smartadserver.android.library.d;

import android.content.Context;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.smartadserver.android.library.exception.SASAdCachingException;
import com.smartadserver.android.library.model.SASAdElement;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
/* compiled from: SASAdCacheManager.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f5428a = ".ready";
    public static String b = ".temp";
    private static a c;
    private WeakReference<Context> d;
    private HashSet<Integer> e = new HashSet<>();
    private Hashtable<String, String> f;
    private Hashtable<String, ArrayList<String>> g;

    public static a a(Context context) throws SASAdCachingException {
        if (c == null) {
            if (context == null) {
                throw new SASAdCachingException("Can not get cache manager instance: associated context is null");
            }
            c = new a(context);
        } else if (c.a() == null) {
            c.d = new WeakReference<>(context);
        }
        return c;
    }

    private a(Context context) {
        this.d = new WeakReference<>(context);
        this.f = (Hashtable) com.smartadserver.android.library.g.b.b(a(), "SmartAdServerCache", "placementToCurrentInsertionID.bin");
        if (this.f == null) {
            this.f = new Hashtable<>();
        }
        this.g = (Hashtable) com.smartadserver.android.library.g.b.b(a(), "SmartAdServerCache", "insertionIdToPlacements.bin");
        if (this.g == null) {
            this.g = new Hashtable<>();
        }
    }

    private Context a() {
        return this.d.get();
    }

    public void a(int i, String str, int i2, String str2) throws SASAdCachingException {
        a(i, str, i2, str2, null);
    }

    public synchronized void a(int i, String str, int i2, String str2, SASAdElement sASAdElement) throws SASAdCachingException {
        String str3;
        if (sASAdElement != null) {
            String str4 = "" + sASAdElement.getInsertionId();
            synchronized (this.e) {
                this.e.add(Integer.valueOf(sASAdElement.getInsertionId()));
            }
            str3 = str4;
        } else {
            str3 = null;
        }
        a(false);
        boolean z = false;
        String c2 = c(i, str, i2, str2);
        SASAdElement sASAdElement2 = null;
        String str5 = this.f.get(c2);
        if (str5 != null) {
            sASAdElement2 = a(str5);
            if (sASAdElement2 == null) {
                sASAdElement2 = a(str5.concat(".ready"));
            }
        } else if (sASAdElement != null) {
            sASAdElement2 = a(str3);
            z = true;
        }
        boolean a2 = a(sASAdElement2, sASAdElement);
        File file = null;
        if (a2) {
            if (sASAdElement == null) {
                z = true;
            } else {
                try {
                    File dir = a().getDir("SmartAdServerCache", 0);
                    String baseUrl = sASAdElement.getBaseUrl();
                    sASAdElement.setBaseUrl("file:" + dir.getAbsolutePath() + "/" + str3 + "/");
                    String htmlContents = sASAdElement.getHtmlContents();
                    if (htmlContents == null) {
                        throw new SASAdCachingException("Can not get html contents from script URL: " + sASAdElement.getScriptUrl());
                    }
                    String a3 = com.smartadserver.android.library.controller.mraid.a.a(htmlContents);
                    String b2 = b.b(a3);
                    if (b2 == null) {
                        throw new SASAdCachingException("Can not determine cache manifest filename from html contents from script URL: " + sASAdElement.getScriptUrl());
                    }
                    String c3 = b.c(a3);
                    sASAdElement.setHtmlContents(c3);
                    String[] a4 = b.a(baseUrl + b2);
                    String str6 = str3 + b + "/";
                    File file2 = new File(dir, str6);
                    for (int i3 = 0; i3 < a4.length; i3++) {
                        try {
                            if (!a(baseUrl + a4[i3].replace(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR, "%20F"), str6 + a4[i3])) {
                                throw new SASAdCachingException("Can not download file: " + baseUrl + a4[i3]);
                            }
                        } catch (Throwable th) {
                            th = th;
                            file = file2;
                            if (file != null && file.exists()) {
                                com.smartadserver.android.library.g.b.a(file);
                            }
                            if (sASAdElement != null) {
                                synchronized (this.e) {
                                    this.e.remove(Integer.valueOf(sASAdElement.getInsertionId()));
                                }
                            }
                            throw th;
                        }
                    }
                    if (c3.contains("\"mraid.js\"")) {
                        String str7 = com.smartadserver.android.library.controller.mraid.a.b;
                        if (!a(str7, str6 + str7.substring(str7.lastIndexOf("/") + 1))) {
                            throw new SASAdCachingException("Can not download mraid bridge at: " + str7);
                        }
                    }
                    if (!com.smartadserver.android.library.g.b.a(a(), sASAdElement, "SmartAdServerCache", str6 + "SasAdElement.bin")) {
                        throw new SASAdCachingException("Can not write ad element in cache");
                    }
                    File file3 = new File(dir, str3 + f5428a);
                    if (file3.exists()) {
                        com.smartadserver.android.library.g.b.a(file3);
                    }
                    if (file2.renameTo(file3)) {
                        file = file2;
                        z = true;
                    } else {
                        throw new SASAdCachingException("Can not rename temporary insertion folder in cache");
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        if (z && !a(c2, str5, str3)) {
            throw new SASAdCachingException("Can not save insertion tables in cache");
        }
        if (file != null && file.exists()) {
            com.smartadserver.android.library.g.b.a(file);
        }
        if (sASAdElement != null) {
            synchronized (this.e) {
                this.e.remove(Integer.valueOf(sASAdElement.getInsertionId()));
            }
        }
    }

    private SASAdElement a(String str) {
        return (SASAdElement) com.smartadserver.android.library.g.b.b(a(), "SmartAdServerCache", str + "/SasAdElement.bin");
    }

    private boolean a(String str, String str2, String str3) {
        if (str2 == null || str2 == str3) {
        }
        if (str2 != str3 || str3 == null) {
            ArrayList<String> arrayList = null;
            if (str2 != null) {
                arrayList = this.g.get(str2);
            }
            if (arrayList != null) {
                arrayList.remove(str);
            }
            if (str3 != null) {
                ArrayList<String> arrayList2 = this.g.get(str3);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    this.g.put(str3, arrayList2);
                }
                if (!arrayList2.contains(str)) {
                    arrayList2.add(str);
                }
                this.f.put(str, str3);
            } else {
                this.f.remove(str);
            }
            return (com.smartadserver.android.library.g.b.a(a(), this.g, "SmartAdServerCache", "insertionIdToPlacements.bin")) && com.smartadserver.android.library.g.b.a(a(), this.f, "SmartAdServerCache", "placementToCurrentInsertionID.bin");
        }
        return true;
    }

    private boolean a(SASAdElement sASAdElement, SASAdElement sASAdElement2) {
        boolean z = false;
        if (sASAdElement == null || sASAdElement2 == null) {
            return true;
        }
        boolean z2 = sASAdElement.getInsertionId() == sASAdElement2.getInsertionId();
        boolean equals = sASAdElement.getScriptUrl().equals(sASAdElement2.getScriptUrl());
        boolean equals2 = sASAdElement.getExpirationDate().equals(sASAdElement2.getExpirationDate());
        if (!z2 || !equals || !equals2) {
            z = true;
        }
        return z;
    }

    private boolean a(String str, String str2) {
        try {
            com.smartadserver.android.library.g.b.a(a(), str, "SmartAdServerCache", str2);
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    private String c(int i, String str, int i2, String str2) {
        return "" + i + "/" + str + "/" + i2 + "/" + str2;
    }

    public SASAdElement b(int i, String str, int i2, String str2) throws SASAdCachingException {
        SASAdElement sASAdElement;
        String str3 = this.f.get(c(i, str, i2, str2));
        if (str3 != null) {
            synchronized (this.e) {
                File dir = a().getDir("SmartAdServerCache", 0);
                File file = new File(dir, str3 + f5428a);
                File file2 = new File(dir, str3);
                if (!this.e.contains(str3) && file.exists()) {
                    if (file2.exists()) {
                        com.smartadserver.android.library.g.b.a(file2);
                    }
                    if (!file.renameTo(file2)) {
                        throw new SASAdCachingException("could not rename a folder in cache");
                    }
                }
                SASAdElement a2 = a(str3);
                if (a2 == null) {
                    throw new SASAdCachingException("could not read SASAdElement from cache");
                }
                if (a2.getExpirationDate().compareTo(new Date()) <= 0) {
                    com.smartadserver.android.library.g.b.a(file2);
                    ArrayList<String> remove = this.g.remove(str3);
                    if (remove != null) {
                        Iterator<String> it = remove.iterator();
                        while (it.hasNext()) {
                            this.f.remove(it.next());
                        }
                    }
                    sASAdElement = null;
                } else {
                    sASAdElement = a2;
                }
            }
            return sASAdElement;
        }
        return null;
    }

    public synchronized void a(boolean z) {
        boolean z2;
        int i = 0;
        synchronized (this) {
            File[] listFiles = a().getDir("SmartAdServerCache", 0).listFiles(new FileFilter() { // from class: com.smartadserver.android.library.d.a.1
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return file.isDirectory();
                }
            });
            while (true) {
                int i2 = i;
                if (i2 < listFiles.length) {
                    String name = listFiles[i2].getName();
                    if (!name.endsWith(f5428a) || z) {
                        ArrayList<String> arrayList = this.g.get(name);
                        if (arrayList == null || arrayList.size() == 0 || z) {
                            z2 = true;
                            this.g.remove(name);
                        } else {
                            z2 = z;
                        }
                        if (z2) {
                            com.smartadserver.android.library.g.b.a(listFiles[i2]);
                        }
                    }
                    if (z) {
                        this.f.clear();
                    }
                    i = i2 + 1;
                }
            }
        }
    }
}
