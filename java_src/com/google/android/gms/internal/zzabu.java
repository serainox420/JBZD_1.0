package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.f.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class zzabu extends Fragment implements zzabf {
    private static WeakHashMap<FragmentActivity, WeakReference<zzabu>> zzaCS = new WeakHashMap<>();
    private Bundle zzaCU;
    private Map<String, zzabe> zzaCT = new a();
    private int zzJO = 0;

    public static zzabu zza(FragmentActivity fragmentActivity) {
        zzabu zzabuVar;
        WeakReference<zzabu> weakReference = zzaCS.get(fragmentActivity);
        if (weakReference == null || (zzabuVar = weakReference.get()) == null) {
            try {
                zzabuVar = (zzabu) fragmentActivity.getSupportFragmentManager().a("SupportLifecycleFragmentImpl");
                if (zzabuVar == null || zzabuVar.isRemoving()) {
                    zzabuVar = new zzabu();
                    fragmentActivity.getSupportFragmentManager().a().a(zzabuVar, "SupportLifecycleFragmentImpl").c();
                }
                zzaCS.put(fragmentActivity, new WeakReference<>(zzabuVar));
            } catch (ClassCastException e) {
                throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
            }
        }
        return zzabuVar;
    }

    private void zzb(final String str, final zzabe zzabeVar) {
        if (this.zzJO > 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.zzabu.1
                @Override // java.lang.Runnable
                public void run() {
                    if (zzabu.this.zzJO >= 1) {
                        zzabeVar.onCreate(zzabu.this.zzaCU != null ? zzabu.this.zzaCU.getBundle(str) : null);
                    }
                    if (zzabu.this.zzJO >= 2) {
                        zzabeVar.onStart();
                    }
                    if (zzabu.this.zzJO >= 3) {
                        zzabeVar.onStop();
                    }
                    if (zzabu.this.zzJO >= 4) {
                        zzabeVar.onDestroy();
                    }
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzJO = 1;
        this.zzaCU = bundle;
        for (Map.Entry<String, zzabe> entry : this.zzaCT.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.zzJO = 4;
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.onDestroy();
        }
    }

    @Override // android.support.v4.app.Fragment
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

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.zzJO = 2;
        for (zzabe zzabeVar : this.zzaCT.values()) {
            zzabeVar.onStart();
        }
    }

    @Override // android.support.v4.app.Fragment
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
    /* renamed from: zzwZ */
    public FragmentActivity zzwV() {
        return getActivity();
    }
}
