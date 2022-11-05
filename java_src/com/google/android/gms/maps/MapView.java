package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzah;
import com.google.android.gms.maps.internal.zzai;
import com.google.android.gms.maps.internal.zzt;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class MapView extends FrameLayout {
    private final zzb zzbot;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza implements MapLifecycleDelegate {
        private final ViewGroup zzbou;
        private final IMapViewDelegate zzbov;
        private View zzbow;

        public zza(ViewGroup viewGroup, IMapViewDelegate iMapViewDelegate) {
            this.zzbov = (IMapViewDelegate) zzac.zzw(iMapViewDelegate);
            this.zzbou = (ViewGroup) zzac.zzw(viewGroup);
        }

        @Override // com.google.android.gms.maps.internal.MapLifecycleDelegate
        public void getMapAsync(final OnMapReadyCallback onMapReadyCallback) {
            try {
                this.zzbov.getMapAsync(new zzt.zza(this) { // from class: com.google.android.gms.maps.MapView.zza.1
                    @Override // com.google.android.gms.maps.internal.zzt
                    public void zza(IGoogleMapDelegate iGoogleMapDelegate) throws RemoteException {
                        onMapReadyCallback.onMapReady(new GoogleMap(iGoogleMapDelegate));
                    }
                });
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbov.onCreate(bundle2);
                zzah.zzd(bundle2, bundle);
                this.zzbow = (View) zzd.zzF(this.zzbov.getView());
                this.zzbou.removeAllViews();
                this.zzbou.addView(this.zzbow);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.zzbov.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        public void onEnterAmbient(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbov.onEnterAmbient(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onExitAmbient() {
            try {
                this.zzbov.onExitAmbient();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onLowMemory() {
            try {
                this.zzbov.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                this.zzbov.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                this.zzbov.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbov.onSaveInstanceState(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStart() {
            try {
                this.zzbov.onStart();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStop() {
            try {
                this.zzbov.onStop();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* loaded from: classes2.dex */
    static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private final Context mContext;
        protected zze<zza> zzbor;
        private final List<OnMapReadyCallback> zzbos = new ArrayList();
        private final ViewGroup zzbox;
        private final GoogleMapOptions zzboy;

        zzb(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.zzbox = viewGroup;
            this.mContext = context;
            this.zzboy = googleMapOptions;
        }

        public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
            if (zzBN() != null) {
                zzBN().getMapAsync(onMapReadyCallback);
            } else {
                this.zzbos.add(onMapReadyCallback);
            }
        }

        public void onEnterAmbient(Bundle bundle) {
            if (zzBN() != null) {
                zzBN().onEnterAmbient(bundle);
            }
        }

        public void onExitAmbient() {
            if (zzBN() != null) {
                zzBN().onExitAmbient();
            }
        }

        public void zzJz() {
            if (this.zzbor == null || zzBN() != null) {
                return;
            }
            try {
                MapsInitializer.initialize(this.mContext);
                IMapViewDelegate zza = zzai.zzbI(this.mContext).zza(zzd.zzA(this.mContext), this.zzboy);
                if (zza == null) {
                    return;
                }
                this.zzbor.zza(new zza(this.zzbox, zza));
                for (OnMapReadyCallback onMapReadyCallback : this.zzbos) {
                    zzBN().getMapAsync(onMapReadyCallback);
                }
                this.zzbos.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }

        @Override // com.google.android.gms.dynamic.zza
        protected void zza(zze<zza> zzeVar) {
            this.zzbor = zzeVar;
            zzJz();
        }
    }

    public MapView(Context context) {
        super(context);
        this.zzbot = new zzb(this, context, null);
        zzJA();
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzbot = new zzb(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        zzJA();
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzbot = new zzb(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        zzJA();
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.zzbot = new zzb(this, context, googleMapOptions);
        zzJA();
    }

    private void zzJA() {
        setClickable(true);
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        zzac.zzdj("getMapAsync() must be called on the main thread");
        this.zzbot.getMapAsync(onMapReadyCallback);
    }

    public final void onCreate(Bundle bundle) {
        this.zzbot.onCreate(bundle);
        if (this.zzbot.zzBN() == null) {
            com.google.android.gms.dynamic.zza.zzb(this);
        }
    }

    public final void onDestroy() {
        this.zzbot.onDestroy();
    }

    public final void onEnterAmbient(Bundle bundle) {
        zzac.zzdj("onEnterAmbient() must be called on the main thread");
        this.zzbot.onEnterAmbient(bundle);
    }

    public final void onExitAmbient() {
        zzac.zzdj("onExitAmbient() must be called on the main thread");
        this.zzbot.onExitAmbient();
    }

    public final void onLowMemory() {
        this.zzbot.onLowMemory();
    }

    public final void onPause() {
        this.zzbot.onPause();
    }

    public final void onResume() {
        this.zzbot.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.zzbot.onSaveInstanceState(bundle);
    }

    public final void onStart() {
        this.zzbot.onStart();
    }

    public final void onStop() {
        this.zzbot.onStop();
    }
}
