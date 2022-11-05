package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamite.zza;
import com.google.android.gms.dynamite.zzb;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class DynamiteModule {
    private static Boolean zzaRO;
    private static com.google.android.gms.dynamite.zza zzaRP;
    private static com.google.android.gms.dynamite.zzb zzaRQ;
    private static String zzaRS;
    private final Context zzaRZ;
    private static final HashMap<String, byte[]> zzaRR = new HashMap<>();
    private static final zzb.zza zzaRT = new zzb.zza() { // from class: com.google.android.gms.dynamite.DynamiteModule.1
        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb.zza
        public int zzH(Context context, String str) {
            return DynamiteModule.zzH(context, str);
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb.zza
        public int zzb(Context context, String str, boolean z) throws zza {
            return DynamiteModule.zzb(context, str, z);
        }
    };
    public static final zzb zzaRU = new zzb() { // from class: com.google.android.gms.dynamite.DynamiteModule.2
        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb
        public zzb.C0186zzb zza(Context context, String str, zzb.zza zzaVar) throws zza {
            zzb.C0186zzb c0186zzb = new zzb.C0186zzb();
            c0186zzb.zzaSc = zzaVar.zzb(context, str, true);
            if (c0186zzb.zzaSc != 0) {
                c0186zzb.zzaSd = 1;
            } else {
                c0186zzb.zzaSb = zzaVar.zzH(context, str);
                if (c0186zzb.zzaSb != 0) {
                    c0186zzb.zzaSd = -1;
                }
            }
            return c0186zzb;
        }
    };
    public static final zzb zzaRV = new zzb() { // from class: com.google.android.gms.dynamite.DynamiteModule.3
        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb
        public zzb.C0186zzb zza(Context context, String str, zzb.zza zzaVar) throws zza {
            zzb.C0186zzb c0186zzb = new zzb.C0186zzb();
            c0186zzb.zzaSb = zzaVar.zzH(context, str);
            if (c0186zzb.zzaSb != 0) {
                c0186zzb.zzaSd = -1;
            } else {
                c0186zzb.zzaSc = zzaVar.zzb(context, str, true);
                if (c0186zzb.zzaSc != 0) {
                    c0186zzb.zzaSd = 1;
                }
            }
            return c0186zzb;
        }
    };
    public static final zzb zzaRW = new zzb() { // from class: com.google.android.gms.dynamite.DynamiteModule.4
        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb
        public zzb.C0186zzb zza(Context context, String str, zzb.zza zzaVar) throws zza {
            zzb.C0186zzb c0186zzb = new zzb.C0186zzb();
            c0186zzb.zzaSb = zzaVar.zzH(context, str);
            c0186zzb.zzaSc = zzaVar.zzb(context, str, true);
            if (c0186zzb.zzaSb == 0 && c0186zzb.zzaSc == 0) {
                c0186zzb.zzaSd = 0;
            } else if (c0186zzb.zzaSb >= c0186zzb.zzaSc) {
                c0186zzb.zzaSd = -1;
            } else {
                c0186zzb.zzaSd = 1;
            }
            return c0186zzb;
        }
    };
    public static final zzb zzaRX = new zzb() { // from class: com.google.android.gms.dynamite.DynamiteModule.5
        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb
        public zzb.C0186zzb zza(Context context, String str, zzb.zza zzaVar) throws zza {
            zzb.C0186zzb c0186zzb = new zzb.C0186zzb();
            c0186zzb.zzaSb = zzaVar.zzH(context, str);
            c0186zzb.zzaSc = zzaVar.zzb(context, str, true);
            if (c0186zzb.zzaSb == 0 && c0186zzb.zzaSc == 0) {
                c0186zzb.zzaSd = 0;
            } else if (c0186zzb.zzaSc >= c0186zzb.zzaSb) {
                c0186zzb.zzaSd = 1;
            } else {
                c0186zzb.zzaSd = -1;
            }
            return c0186zzb;
        }
    };
    public static final zzb zzaRY = new zzb() { // from class: com.google.android.gms.dynamite.DynamiteModule.6
        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb
        public zzb.C0186zzb zza(Context context, String str, zzb.zza zzaVar) throws zza {
            zzb.C0186zzb c0186zzb = new zzb.C0186zzb();
            c0186zzb.zzaSb = zzaVar.zzH(context, str);
            if (c0186zzb.zzaSb != 0) {
                c0186zzb.zzaSc = zzaVar.zzb(context, str, false);
            } else {
                c0186zzb.zzaSc = zzaVar.zzb(context, str, true);
            }
            if (c0186zzb.zzaSb == 0 && c0186zzb.zzaSc == 0) {
                c0186zzb.zzaSd = 0;
            } else if (c0186zzb.zzaSc >= c0186zzb.zzaSb) {
                c0186zzb.zzaSd = 1;
            } else {
                c0186zzb.zzaSd = -1;
            }
            return c0186zzb;
        }
    };

    @DynamiteApi
    /* loaded from: classes2.dex */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes2.dex */
    public static class zza extends Exception {
        private zza(String str) {
            super(str);
        }

        private zza(String str, Throwable th) {
            super(str, th);
        }
    }

    /* loaded from: classes2.dex */
    public interface zzb {

        /* loaded from: classes2.dex */
        public interface zza {
            int zzH(Context context, String str);

            int zzb(Context context, String str, boolean z) throws zza;
        }

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0186zzb {
            public int zzaSb = 0;
            public int zzaSc = 0;
            public int zzaSd = 0;
        }

        C0186zzb zza(Context context, String str, zza zzaVar) throws zza;
    }

    private DynamiteModule(Context context) {
        this.zzaRZ = (Context) zzac.zzw(context);
    }

    private static ClassLoader zzBT() {
        return new PathClassLoader(zzaRS, ClassLoader.getSystemClassLoader()) { // from class: com.google.android.gms.dynamite.DynamiteModule.8
            @Override // java.lang.ClassLoader
            protected Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
                if (!str.startsWith("java.") && !str.startsWith("android.")) {
                    try {
                        return findClass(str);
                    } catch (ClassNotFoundException e) {
                    }
                }
                return super.loadClass(str, z);
            }
        };
    }

    public static int zzH(Context context, String str) {
        int i;
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            String valueOf = String.valueOf("com.google.android.gms.dynamite.descriptors.");
            String valueOf2 = String.valueOf("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length() + String.valueOf(valueOf2).length()).append(valueOf).append(str).append(".").append(valueOf2).toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!declaredField.get(null).equals(str)) {
                String valueOf3 = String.valueOf(declaredField.get(null));
                Log.e("DynamiteModule", new StringBuilder(String.valueOf(valueOf3).length() + 51 + String.valueOf(str).length()).append("Module descriptor id '").append(valueOf3).append("' didn't match expected id '").append(str).append("'").toString());
                i = 0;
            } else {
                i = declaredField2.getInt(null);
            }
            return i;
        } catch (ClassNotFoundException e) {
            Log.w("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 45).append("Local module descriptor class for ").append(str).append(" not found.").toString());
            return 0;
        } catch (Exception e2) {
            String valueOf4 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", valueOf4.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf4) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int zzI(Context context, String str) {
        return zzb(context, str, false);
    }

    private static DynamiteModule zzJ(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static Context zza(Context context, String str, byte[] bArr, com.google.android.gms.dynamite.zzb zzbVar) {
        try {
            return (Context) zzd.zzF(zzbVar.zza(zzd.zzA(context), str, bArr));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.toString());
            Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load DynamiteLoader: ".concat(valueOf) : new String("Failed to load DynamiteLoader: "));
            return null;
        }
    }

    public static DynamiteModule zza(Context context, zzb zzbVar, String str) throws zza {
        zzb.C0186zzb zza2 = zzbVar.zza(context, str, zzaRT);
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length()).append("Considering local module ").append(str).append(":").append(zza2.zzaSb).append(" and remote module ").append(str).append(":").append(zza2.zzaSc).toString());
        if (zza2.zzaSd == 0 || ((zza2.zzaSd == -1 && zza2.zzaSb == 0) || (zza2.zzaSd == 1 && zza2.zzaSc == 0))) {
            throw new zza(new StringBuilder(91).append("No acceptable module found. Local version is ").append(zza2.zzaSb).append(" and remote version is ").append(zza2.zzaSc).append(".").toString());
        } else if (zza2.zzaSd == -1) {
            return zzJ(context, str);
        } else {
            if (zza2.zzaSd != 1) {
                throw new zza(new StringBuilder(47).append("VersionPolicy returned invalid code:").append(zza2.zzaSd).toString());
            }
            try {
                return zza(context, str, zza2.zzaSc);
            } catch (zza e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to load remote module: ".concat(valueOf) : new String("Failed to load remote module: "));
                if (zza2.zzaSb != 0) {
                    final int i = zza2.zzaSb;
                    if (zzbVar.zza(context, str, new zzb.zza() { // from class: com.google.android.gms.dynamite.DynamiteModule.7
                        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb.zza
                        public int zzH(Context context2, String str2) {
                            return i;
                        }

                        @Override // com.google.android.gms.dynamite.DynamiteModule.zzb.zza
                        public int zzb(Context context2, String str2, boolean z) {
                            return 0;
                        }
                    }).zzaSd == -1) {
                        return zzJ(context, str);
                    }
                }
                throw new zza("Remote load failed. No local fallback found.", e);
            }
        }
    }

    private static DynamiteModule zza(Context context, String str, int i) throws zza {
        Boolean bool;
        synchronized (DynamiteModule.class) {
            bool = zzaRO;
        }
        if (bool == null) {
            throw new zza("Failed to determine which loading route to use.");
        }
        return bool.booleanValue() ? zzc(context, str, i) : zzb(context, str, i);
    }

    private static void zza(ClassLoader classLoader) throws zza {
        try {
            zzaRQ = zzb.zza.zzcf((IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new zza("Failed to instantiate dynamite loader", e);
        }
    }

    public static int zzb(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        synchronized (DynamiteModule.class) {
            Boolean bool = zzaRO;
            if (bool == null) {
                try {
                    loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                    declaredField = loadClass.getDeclaredField("sClassLoader");
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                    String valueOf = String.valueOf(e);
                    Log.w("DynamiteModule", new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to load module via V2: ").append(valueOf).toString());
                    bool = Boolean.FALSE;
                }
                synchronized (loadClass) {
                    ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                    if (classLoader != null) {
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else {
                            try {
                                zza(classLoader);
                            } catch (zza e2) {
                            }
                            bool = Boolean.TRUE;
                        }
                    } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                        bool = Boolean.FALSE;
                    } else {
                        try {
                            int zzd = zzd(context, str, z);
                            if (zzaRS == null || zzaRS.isEmpty()) {
                                return zzd;
                            }
                            ClassLoader zzBT = zzBT();
                            zza(zzBT);
                            declaredField.set(null, zzBT);
                            zzaRO = Boolean.TRUE;
                            return zzd;
                        } catch (zza e3) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                    }
                    zzaRO = bool;
                }
            }
            if (bool.booleanValue()) {
                try {
                    return zzd(context, str, z);
                } catch (zza e4) {
                    String valueOf2 = String.valueOf(e4.getMessage());
                    Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                    return 0;
                }
            }
            return zzc(context, str, z);
        }
    }

    private static DynamiteModule zzb(Context context, String str, int i) throws zza {
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        com.google.android.gms.dynamite.zza zzbm = zzbm(context);
        if (zzbm == null) {
            throw new zza("Failed to create IDynamiteLoader.");
        }
        try {
            IObjectWrapper zza2 = zzbm.zza(zzd.zzA(context), str, i);
            if (zzd.zzF(zza2) != null) {
                return new DynamiteModule((Context) zzd.zzF(zza2));
            }
            throw new zza("Failed to load remote module.");
        } catch (RemoteException e) {
            throw new zza("Failed to load remote module.", e);
        }
    }

    private static com.google.android.gms.dynamite.zza zzbm(Context context) {
        synchronized (DynamiteModule.class) {
            if (zzaRP != null) {
                return zzaRP;
            } else if (zze.zzuY().isGooglePlayServicesAvailable(context) != 0) {
                return null;
            } else {
                try {
                    com.google.android.gms.dynamite.zza zzce = zza.AbstractBinderC0187zza.zzce((IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance());
                    if (zzce != null) {
                        zzaRP = zzce;
                        return zzce;
                    }
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
                }
                return null;
            }
        }
    }

    private static int zzc(Context context, String str, boolean z) {
        com.google.android.gms.dynamite.zza zzbm = zzbm(context);
        if (zzbm == null) {
            return 0;
        }
        try {
            return zzbm.zza(zzd.zzA(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    private static DynamiteModule zzc(Context context, String str, int i) throws zza {
        byte[] bArr;
        com.google.android.gms.dynamite.zzb zzbVar;
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i).toString());
        synchronized (DynamiteModule.class) {
            bArr = zzaRR.get(new StringBuilder(String.valueOf(str).length() + 12).append(str).append(":").append(i).toString());
            zzbVar = zzaRQ;
        }
        if (bArr == null) {
            throw new zza("Module implementation could not be found.");
        }
        if (zzbVar == null) {
            throw new zza("DynamiteLoaderV2 was not cached.");
        }
        Context zza2 = zza(context.getApplicationContext(), str, bArr, zzbVar);
        if (zza2 != null) {
            return new DynamiteModule(zza2);
        }
        throw new zza("Failed to get module context");
    }

    private static int zzd(Context context, String str, boolean z) throws zza {
        Cursor cursor = null;
        try {
            try {
                Cursor zze = zze(context, str, z);
                if (zze == null || !zze.moveToFirst()) {
                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                    throw new zza("Failed to connect to dynamite module ContentResolver.");
                }
                int i = zze.getInt(0);
                if (i > 0) {
                    synchronized (DynamiteModule.class) {
                        zzaRR.put(new StringBuilder(String.valueOf(str).length() + 12).append(str).append(":").append(i).toString(), Base64.decode(zze.getString(3), 0));
                        zzaRS = zze.getString(2);
                    }
                }
                if (zze != null) {
                    zze.close();
                }
                return i;
            } catch (Exception e) {
                if (!(e instanceof zza)) {
                    throw new zza("V2 version check failed", e);
                }
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public static Cursor zze(Context context, String str, boolean z) {
        String str2 = z ? "api_force_staging" : PhoenixConstants.APP_API_PARAM;
        String valueOf = String.valueOf("content://com.google.android.gms.chimera/");
        return context.getContentResolver().query(Uri.parse(new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str2).length() + String.valueOf(str).length()).append(valueOf).append(str2).append("/").append(str).toString()), null, null, null, null);
    }

    public Context zzBS() {
        return this.zzaRZ;
    }

    public IBinder zzdT(String str) throws zza {
        try {
            return (IBinder) this.zzaRZ.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new zza(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e);
        }
    }
}
