package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;
import com.google.android.gms.tagmanager.zzbc;
import com.google.android.gms.tagmanager.zzbd;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
final class zzae {
    private static volatile DynamiteModule zzbFY;
    private static volatile zzbc zzbFZ;
    private static final Map<String, CustomTagProvider> zzbGa = new HashMap();
    private static final Map<String, CustomVariableProvider> zzbGb = new HashMap();

    private zzae() {
    }

    static zzay zzQG() {
        return new zzay.zza() { // from class: com.google.android.gms.tagmanager.zzae.2
            @Override // com.google.android.gms.tagmanager.zzay
            public void zzf(String str, Map map) {
                CustomTagProvider customTagProvider;
                if (!zzae.zzbGa.containsKey(str)) {
                    customTagProvider = (CustomTagProvider) zzae.zzc(str, CustomTagProvider.class);
                    zzae.zzbGa.put(str, customTagProvider);
                } else {
                    customTagProvider = (CustomTagProvider) zzae.zzbGa.get(str);
                }
                if (customTagProvider != null) {
                    customTagProvider.execute(map);
                }
            }

            @Override // com.google.android.gms.tagmanager.zzay
            public String zzg(String str, Map map) {
                CustomVariableProvider customVariableProvider;
                if (!zzae.zzbGb.containsKey(str)) {
                    customVariableProvider = (CustomVariableProvider) zzae.zzc(str, CustomVariableProvider.class);
                    zzae.zzbGb.put(str, customVariableProvider);
                } else {
                    customVariableProvider = (CustomVariableProvider) zzae.zzbGb.get(str);
                }
                if (customVariableProvider != null) {
                    return customVariableProvider.getValue(map);
                }
                return null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Intent intent, Context context) {
        zzbc zzbX = zzbX(context);
        synchronized (zzae.class) {
            try {
                zzbX.previewIntent(intent, com.google.android.gms.dynamic.zzd.zzA(context), com.google.android.gms.dynamic.zzd.zzA(zzbFY.zzBS()), zzbZ(context), zzQG());
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IBinder zzbV(Context context) {
        try {
            try {
                return zzbd.zza.asInterface(zzbY(context).zzdT("com.google.android.gms.tagmanager.TagManagerServiceProviderImpl")).getService(com.google.android.gms.dynamic.zzd.zzA(context), zzbZ(context), zzQG()).asBinder();
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        } catch (DynamiteModule.zza e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzbW(Context context) {
        zzbc zzbX = zzbX(context);
        synchronized (zzae.class) {
            try {
                zzbX.initialize(com.google.android.gms.dynamic.zzd.zzA(context), zzbZ(context), zzQG());
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    private static zzbc zzbX(Context context) {
        zzbc zzbcVar = zzbFZ;
        if (zzbcVar == null) {
            synchronized (zzae.class) {
                zzbcVar = zzbFZ;
                if (zzbcVar == null) {
                    try {
                        zzbcVar = zzbc.zza.asInterface(zzbY(context).zzdT("com.google.android.gms.tagmanager.TagManagerApiImpl"));
                        zzbFZ = zzbcVar;
                    } catch (DynamiteModule.zza e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        return zzbcVar;
    }

    private static DynamiteModule zzbY(Context context) throws DynamiteModule.zza {
        DynamiteModule dynamiteModule = zzbFY;
        if (dynamiteModule == null) {
            synchronized (zzae.class) {
                dynamiteModule = zzbFY;
                if (zzbFY == null) {
                    dynamiteModule = DynamiteModule.zza(context, DynamiteModule.zzaRX, ModuleDescriptor.MODULE_ID);
                    zzbFY = dynamiteModule;
                }
            }
        }
        return dynamiteModule;
    }

    private static zzbb zzbZ(Context context) {
        final AppMeasurement appMeasurement = AppMeasurement.getInstance(context);
        return new zzbb.zza() { // from class: com.google.android.gms.tagmanager.zzae.1
            @Override // com.google.android.gms.tagmanager.zzbb
            public Map<String, Object> zzQI() {
                return AppMeasurement.this.zzaJ(true);
            }

            @Override // com.google.android.gms.tagmanager.zzbb
            public void zza(final zzaz zzazVar) {
                AppMeasurement.this.zza(new AppMeasurement.zzc(this) { // from class: com.google.android.gms.tagmanager.zzae.1.2
                    @Override // com.google.android.gms.measurement.AppMeasurement.zzc
                    public void zzc(String str, String str2, Bundle bundle, long j) {
                        try {
                            zzazVar.zzc(str, str2, bundle, j);
                        } catch (RemoteException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.tagmanager.zzbb
            public void zza(final zzba zzbaVar) {
                AppMeasurement.this.zza(new AppMeasurement.zzb(this) { // from class: com.google.android.gms.tagmanager.zzae.1.1
                    @Override // com.google.android.gms.measurement.AppMeasurement.zzb
                    public void zzb(String str, String str2, Bundle bundle, long j) {
                        try {
                            zzbaVar.zzb(str, str2, bundle, j);
                        } catch (RemoteException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.tagmanager.zzbb
            public void zza(String str, String str2, Bundle bundle, long j) {
                AppMeasurement.this.zza(str, str2, bundle, j);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object zzc(String str, Class<?> cls) {
        boolean z = false;
        try {
            Class<?> cls2 = Class.forName(str);
            Class<?>[] interfaces = cls2.getInterfaces();
            int length = interfaces.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (interfaces[i].equals(cls)) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                String valueOf = String.valueOf(cls.getCanonicalName());
                Log.e("GoogleTagManagerAPI", new StringBuilder(String.valueOf(str).length() + 30 + String.valueOf(valueOf).length()).append(str).append(" doesn't implement ").append(valueOf).append(" interface.").toString());
                return null;
            }
            try {
                try {
                    return cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (IllegalAccessException e) {
                    Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" doesn't have an accessible no-arg constructor"));
                    return null;
                } catch (InvocationTargetException e2) {
                    Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" construction threw an exception."));
                    return null;
                }
            } catch (InstantiationException e3) {
                Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" is an abstract class."));
                return null;
            } catch (NoSuchMethodException e4) {
                Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" doesn't have a valid no-arg constructor"));
                return null;
            } catch (SecurityException e5) {
                Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" doesn't have an accessible no-arg constructor"));
                return null;
            }
        } catch (ClassNotFoundException e6) {
            Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" can't be found in the application."));
            return null;
        }
    }
}
