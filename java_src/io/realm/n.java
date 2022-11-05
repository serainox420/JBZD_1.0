package io.realm;

import com.facebook.common.time.Clock;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealmCache.java */
/* loaded from: classes3.dex */
public final class n {
    private static Map<String, n> d = new HashMap();
    private final p b;
    private final io.realm.internal.b[] c = new io.realm.internal.b[4];

    /* renamed from: a  reason: collision with root package name */
    private final EnumMap<b, c> f5808a = new EnumMap<>(b.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RealmCache.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RealmCache.java */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadLocal<io.realm.b> f5810a;
        private final ThreadLocal<Integer> b;
        private int c;

        private c() {
            this.f5810a = new ThreadLocal<>();
            this.b = new ThreadLocal<>();
            this.c = 0;
        }

        static /* synthetic */ int d(c cVar) {
            int i = cVar.c;
            cVar.c = i + 1;
            return i;
        }

        static /* synthetic */ int e(c cVar) {
            int i = cVar.c;
            cVar.c = i - 1;
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RealmCache.java */
    /* loaded from: classes3.dex */
    public enum b {
        TYPED_REALM,
        DYNAMIC_REALM;

        static b a(Class<? extends io.realm.b> cls) {
            if (cls == l.class) {
                return TYPED_REALM;
            }
            if (cls == d.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
        }
    }

    private n(p pVar) {
        this.b = pVar;
        for (b bVar : b.values()) {
            this.f5808a.put((EnumMap<b, c>) bVar, (b) new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized <E extends io.realm.b> E a(p pVar, Class<E> cls) {
        n nVar;
        boolean z;
        E e;
        io.realm.b c2;
        synchronized (n.class) {
            n nVar2 = d.get(pVar.l());
            if (nVar2 == null) {
                n nVar3 = new n(pVar);
                b(pVar);
                nVar = nVar3;
                z = false;
            } else {
                nVar2.a(pVar);
                nVar = nVar2;
                z = true;
            }
            c cVar = nVar.f5808a.get(b.a(cls));
            if (cVar.c == 0) {
                SharedRealm a2 = SharedRealm.a(pVar);
                if (Table.b(a2)) {
                    a2.a();
                    if (Table.a(a2)) {
                        a2.b();
                    } else {
                        a2.c();
                    }
                }
                a2.close();
            }
            if (cVar.f5810a.get() == null) {
                if (cls == l.class) {
                    c2 = l.a(pVar, nVar.c);
                } else if (cls == d.class) {
                    c2 = d.c(pVar);
                } else {
                    throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
                }
                if (!z) {
                    d.put(pVar.l(), nVar);
                }
                cVar.f5810a.set(c2);
                cVar.b.set(0);
            }
            Integer num = (Integer) cVar.b.get();
            if (num.intValue() == 0) {
                if (cls == l.class && cVar.c == 0) {
                    a(nVar.c, ((io.realm.b) cVar.f5810a.get()).f.f5743a.clone());
                }
                c.d(cVar);
            }
            cVar.b.set(Integer.valueOf(num.intValue() + 1));
            e = (E) cVar.f5810a.get();
            if (cVar.c == 1) {
                io.realm.internal.h.a(pVar.o()).b(pVar);
            }
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(io.realm.b bVar) {
        c cVar;
        int i = 0;
        Integer num = null;
        synchronized (n.class) {
            String f = bVar.f();
            n nVar = d.get(f);
            if (nVar != null) {
                c cVar2 = nVar.f5808a.get(b.a(bVar.getClass()));
                num = (Integer) cVar2.b.get();
                cVar = cVar2;
            } else {
                cVar = null;
            }
            if (num == null) {
                num = 0;
            }
            if (num.intValue() <= 0) {
                RealmLog.b("%s has been closed already.", f);
            } else {
                Integer valueOf = Integer.valueOf(num.intValue() - 1);
                if (valueOf.intValue() == 0) {
                    cVar.b.set(null);
                    cVar.f5810a.set(null);
                    c.e(cVar);
                    if (cVar.c < 0) {
                        throw new IllegalStateException("Global reference counter of Realm" + f + " got corrupted.");
                    }
                    if ((bVar instanceof l) && cVar.c == 0) {
                        Arrays.fill(nVar.c, (Object) null);
                    }
                    for (b bVar2 : b.values()) {
                        i += nVar.f5808a.get(bVar2).c;
                    }
                    bVar.i();
                    if (i == 0) {
                        d.remove(f);
                        io.realm.internal.h.a(bVar.g().o()).a(bVar.g());
                    }
                } else {
                    cVar.b.set(valueOf);
                }
            }
        }
    }

    private void a(p pVar) {
        if (this.b.equals(pVar)) {
            return;
        }
        if (!Arrays.equals(this.b.c(), pVar.c())) {
            throw new IllegalArgumentException("Wrong key used to decrypt Realm.");
        }
        s e = pVar.e();
        s e2 = this.b.e();
        if (e2 != null && e != null && e2.getClass().equals(e.getClass()) && !e.equals(e2)) {
            throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: " + pVar.e().getClass().getCanonicalName());
        }
        throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.b + "\n\nNew configuration: \n" + pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(p pVar, a aVar) {
        synchronized (n.class) {
            n nVar = d.get(pVar.l());
            if (nVar == null) {
                aVar.a(0);
            } else {
                int i = 0;
                for (b bVar : b.values()) {
                    i += nVar.f5808a.get(bVar).c;
                }
                aVar.a(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a(l lVar) {
        io.realm.internal.b[] bVarArr;
        io.realm.internal.b a2;
        synchronized (n.class) {
            n nVar = d.get(lVar.f());
            if (nVar != null && nVar.f5808a.get(b.TYPED_REALM).f5810a.get() != null && (a2 = lVar.a((bVarArr = nVar.c))) != null) {
                a(bVarArr, a2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void b(p pVar) {
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        IOException iOException;
        IOException e = null;
        if (pVar.j()) {
            File file = new File(pVar.a(), pVar.b());
            if (!file.exists()) {
                try {
                    InputStream k = pVar.k();
                    try {
                        if (k == null) {
                            throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Invalid input stream to asset file.");
                        }
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int read = k.read(bArr);
                                if (read <= -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, read);
                            }
                            if (k != null) {
                                try {
                                    k.close();
                                    iOException = null;
                                } catch (IOException e2) {
                                    iOException = e2;
                                }
                            } else {
                                iOException = null;
                            }
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e3) {
                                    e = e3;
                                    if (iOException != null) {
                                        e = iOException;
                                    }
                                    iOException = e;
                                }
                            }
                            if (iOException != null) {
                                throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, iOException);
                            }
                        } catch (IOException e4) {
                            e = e4;
                            inputStream = k;
                            fileOutputStream = fileOutputStream2;
                            try {
                                throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Could not resolve the path to the Realm asset file.", e);
                            } catch (Throwable th) {
                                th = th;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e5) {
                                        e = e5;
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e6) {
                                        if (e == null) {
                                        }
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = k;
                            fileOutputStream = fileOutputStream2;
                            if (inputStream != null) {
                            }
                            if (fileOutputStream != null) {
                            }
                            throw th;
                        }
                    } catch (IOException e7) {
                        e = e7;
                        inputStream = k;
                        fileOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = k;
                        fileOutputStream = null;
                    }
                } catch (IOException e8) {
                    e = e8;
                    fileOutputStream = null;
                    inputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                    inputStream = null;
                }
            }
        }
    }

    public static io.realm.internal.b a(io.realm.internal.b[] bVarArr, long j) {
        for (int length = bVarArr.length - 1; length >= 0; length--) {
            io.realm.internal.b bVar = bVarArr[length];
            if (bVar != null && bVar.a() == j) {
                return bVar;
            }
        }
        return null;
    }

    private static int a(io.realm.internal.b[] bVarArr, io.realm.internal.b bVar) {
        long j = Clock.MAX_TIME;
        int i = -1;
        for (int length = bVarArr.length - 1; length >= 0; length--) {
            if (bVarArr[length] == null) {
                bVarArr[length] = bVar;
                return length;
            }
            io.realm.internal.b bVar2 = bVarArr[length];
            if (bVar2.a() <= j) {
                j = bVar2.a();
                i = length;
            }
        }
        bVarArr[i] = bVar;
        return i;
    }
}
