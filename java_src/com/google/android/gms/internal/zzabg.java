package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.f.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class zzabg extends Fragment implements zzabf {
    private static WeakHashMap<Activity, WeakReference<zzabg>> zzaCS = new WeakHashMap<>();
    private Bundle zzaCU;
    private Map<String, zzabe> zzaCT = new a();
    private int zzJO = 0;

    private void zzb(final String str, final zzabe zzabeVar) {
        if (this.zzJO > 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.zzabg.1
                @Override // java.lang.Runnable
                public void run() {
                    if (zzabg.this.zzJO >= 1) {
                        zzabeVar.onCreate(zzabg.this.zzaCU != null ? zzabg.this.zzaCU.getBundle(str) : null);
                    }
                    if (zzabg.this.zzJO >= 2) {
                        zzabeVar.onStart();
                    }
                    if (zzabg.this.zzJO >= 3) {
                        zzabeVar.onStop();
                    }
                    if (zzabg.this.zzJO >= 4) {
                        zzabeVar.onDestroy();
                    }
                }
            });
        }
    }

    public static zzabg zzt(Activity activity) {
        zzabg zzabgVar;
        WeakReference<zzabg> weakReference = zzaCS.get(activity);
        if (weakReference == null || (zzabgVar = weakReference.get()) == null) {
            try {
                zzabgVar = (zzabg) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
                if (zzabgVar == null || zzabgVar.isRemoving()) {
                    zzabgVar = new zzabg();
                    activity.getFragmentManager().beginTransaction().add(zzabgVar, "LifecycleFragmentImpl").commitAllowingStateLoss();
                }
                zzaCS.put(activity, new WeakReference<>(zzabgVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e);
            }
        }
        return zzabgVar;
    }

    @Override // android.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzJO = 1;
        this.zzaCU = bundle;
        for (Map.Entry<String, zzabe> entry : this.zzaCT.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.zzJO = 4;
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.onDestroy();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, zzabe> entry : this.zzaCT.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().onSaveInstanceState(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.zzJO = 2;
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.zzJO = 3;
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.onStop();
        }
    }

    @Override // com.google.android.gms.internal.zzabf
    public <T extends zzabe> T zza(String str, Class<T> cls) {
        return cls.cast(this.zzaCT.get(str));
    }

    @Override // com.google.android.gms.internal.zzabf
    public void zza(String str, zzabe zzabeVar) {
        if (!this.zzaCT.containsKey(str)) {
            this.zzaCT.put(str, zzabeVar);
            zzb(str, zzabeVar);
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 59).append("LifecycleCallback with tag ").append(str).append(" already added to this fragment.").toString());
    }

    @Override // com.google.android.gms.internal.zzabf
    public Activity zzwV() {
        return getActivity();
    }
}
