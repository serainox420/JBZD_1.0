package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.zzh;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes2.dex */
public abstract class zza<T extends LifecycleDelegate> {
    private T zzaRA;
    private Bundle zzaRB;
    private LinkedList<InterfaceC0184zza> zzaRC;
    private final zze<T> zzaRD = (zze<T>) new zze<T>() { // from class: com.google.android.gms.dynamic.zza.1
        @Override // com.google.android.gms.dynamic.zze
        public void zza(T t) {
            zza.this.zzaRA = t;
            Iterator it = zza.this.zzaRC.iterator();
            while (it.hasNext()) {
                ((InterfaceC0184zza) it.next()).zzb(zza.this.zzaRA);
            }
            zza.this.zzaRC.clear();
            zza.this.zzaRB = null;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.dynamic.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0184zza {
        int getState();

        void zzb(LifecycleDelegate lifecycleDelegate);
    }

    private void zza(Bundle bundle, InterfaceC0184zza interfaceC0184zza) {
        if (this.zzaRA != null) {
            interfaceC0184zza.zzb(this.zzaRA);
            return;
        }
        if (this.zzaRC == null) {
            this.zzaRC = new LinkedList<>();
        }
        this.zzaRC.add(interfaceC0184zza);
        if (bundle != null) {
            if (this.zzaRB == null) {
                this.zzaRB = (Bundle) bundle.clone();
            } else {
                this.zzaRB.putAll(bundle);
            }
        }
        zza(this.zzaRD);
    }

    static void zza(FrameLayout frameLayout, GoogleApiAvailability googleApiAvailability) {
        final Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(context);
        String zzi = zzh.zzi(context, isGooglePlayServicesAvailable);
        String zzk = zzh.zzk(context, isGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(zzi);
        linearLayout.addView(textView);
        final Intent zzb = googleApiAvailability.zzb(context, isGooglePlayServicesAvailable, null);
        if (zzb != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(zzk);
            linearLayout.addView(button);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.dynamic.zza.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        context.startActivity(zzb);
                    } catch (ActivityNotFoundException e) {
                        Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
                    }
                }
            });
        }
    }

    public static void zzb(FrameLayout frameLayout) {
        zza(frameLayout, GoogleApiAvailability.getInstance());
    }

    private void zzgt(int i) {
        while (!this.zzaRC.isEmpty() && this.zzaRC.getLast().getState() >= i) {
            this.zzaRC.removeLast();
        }
    }

    public void onCreate(final Bundle bundle) {
        zza(bundle, new InterfaceC0184zza() { // from class: com.google.android.gms.dynamic.zza.3
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public int getState() {
                return 1;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzaRA.onCreate(bundle);
            }
        });
    }

    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        zza(bundle, new InterfaceC0184zza() { // from class: com.google.android.gms.dynamic.zza.4
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public int getState() {
                return 2;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(zza.this.zzaRA.onCreateView(layoutInflater, viewGroup, bundle));
            }
        });
        if (this.zzaRA == null) {
            zza(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.zzaRA != null) {
            this.zzaRA.onDestroy();
        } else {
            zzgt(1);
        }
    }

    public void onDestroyView() {
        if (this.zzaRA != null) {
            this.zzaRA.onDestroyView();
        } else {
            zzgt(2);
        }
    }

    public void onInflate(final Activity activity, final Bundle bundle, final Bundle bundle2) {
        zza(bundle2, new InterfaceC0184zza() { // from class: com.google.android.gms.dynamic.zza.2
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public int getState() {
                return 0;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzaRA.onInflate(activity, bundle, bundle2);
            }
        });
    }

    public void onLowMemory() {
        if (this.zzaRA != null) {
            this.zzaRA.onLowMemory();
        }
    }

    public void onPause() {
        if (this.zzaRA != null) {
            this.zzaRA.onPause();
        } else {
            zzgt(5);
        }
    }

    public void onResume() {
        zza((Bundle) null, new InterfaceC0184zza() { // from class: com.google.android.gms.dynamic.zza.7
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public int getState() {
                return 5;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzaRA.onResume();
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.zzaRA != null) {
            this.zzaRA.onSaveInstanceState(bundle);
        } else if (this.zzaRB == null) {
        } else {
            bundle.putAll(this.zzaRB);
        }
    }

    public void onStart() {
        zza((Bundle) null, new InterfaceC0184zza() { // from class: com.google.android.gms.dynamic.zza.6
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public int getState() {
                return 4;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0184zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzaRA.onStart();
            }
        });
    }

    public void onStop() {
        if (this.zzaRA != null) {
            this.zzaRA.onStop();
        } else {
            zzgt(4);
        }
    }

    public T zzBN() {
        return this.zzaRA;
    }

    protected void zza(FrameLayout frameLayout) {
        zzb(frameLayout);
    }

    protected abstract void zza(zze<T> zzeVar);
}
