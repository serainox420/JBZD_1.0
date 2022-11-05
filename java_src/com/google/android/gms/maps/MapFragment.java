package com.google.android.gms.maps;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.MapLifecycleDelegate;
import com.google.android.gms.maps.internal.zzah;
import com.google.android.gms.maps.internal.zzai;
import com.google.android.gms.maps.internal.zzt;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
@TargetApi(11)
/* loaded from: classes2.dex */
public class MapFragment extends Fragment {
    private final zzb zzboo = new zzb(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza implements MapLifecycleDelegate {
        private final Fragment zzaRK;
        private final IMapFragmentDelegate zzbop;

        public zza(Fragment fragment, IMapFragmentDelegate iMapFragmentDelegate) {
            this.zzbop = (IMapFragmentDelegate) zzac.zzw(iMapFragmentDelegate);
            this.zzaRK = (Fragment) zzac.zzw(fragment);
        }

        @Override // com.google.android.gms.maps.internal.MapLifecycleDelegate
        public void getMapAsync(final OnMapReadyCallback onMapReadyCallback) {
            try {
                this.zzbop.getMapAsync(new zzt.zza(this) { // from class: com.google.android.gms.maps.MapFragment.zza.1
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
                Bundle arguments = this.zzaRK.getArguments();
                if (arguments != null && arguments.containsKey("MapOptions")) {
                    zzah.zza(bundle2, "MapOptions", arguments.getParcelable("MapOptions"));
                }
                this.zzbop.onCreate(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                IObjectWrapper onCreateView = this.zzbop.onCreateView(zzd.zzA(layoutInflater), zzd.zzA(viewGroup), bundle2);
                zzah.zzd(bundle2, bundle);
                return (View) zzd.zzF(onCreateView);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.zzbop.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroyView() {
            try {
                this.zzbop.onDestroyView();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onEnterAmbient(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbop.onEnterAmbient(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public void onExitAmbient() {
            try {
                this.zzbop.onExitAmbient();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            GoogleMapOptions googleMapOptions = (GoogleMapOptions) bundle.getParcelable("MapOptions");
            try {
                Bundle bundle3 = new Bundle();
                zzah.zzd(bundle2, bundle3);
                this.zzbop.onInflate(zzd.zzA(activity), googleMapOptions, bundle3);
                zzah.zzd(bundle3, bundle2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onLowMemory() {
            try {
                this.zzbop.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                this.zzbop.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                this.zzbop.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzbop.onSaveInstanceState(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStart() {
            try {
                this.zzbop.onStart();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStop() {
            try {
                this.zzbop.onStop();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* loaded from: classes2.dex */
    static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private Activity mActivity;
        private final Fragment zzaRK;
        protected zze<zza> zzbor;
        private final List<OnMapReadyCallback> zzbos = new ArrayList();

        zzb(Fragment fragment) {
            this.zzaRK = fragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivity(Activity activity) {
            this.mActivity = activity;
            zzJz();
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
            if (this.mActivity == null || this.zzbor == null || zzBN() != null) {
                return;
            }
            try {
                MapsInitializer.initialize(this.mActivity);
                IMapFragmentDelegate zzI = zzai.zzbI(this.mActivity).zzI(zzd.zzA(this.mActivity));
                if (zzI == null) {
                    return;
                }
                this.zzbor.zza(new zza(this.zzaRK, zzI));
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

    public static MapFragment newInstance() {
        return new MapFragment();
    }

    public static MapFragment newInstance(GoogleMapOptions googleMapOptions) {
        MapFragment mapFragment = new MapFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("MapOptions", googleMapOptions);
        mapFragment.setArguments(bundle);
        return mapFragment;
    }

    public void getMapAsync(OnMapReadyCallback onMapReadyCallback) {
        zzac.zzdj("getMapAsync must be called on the main thread.");
        this.zzboo.getMapAsync(onMapReadyCallback);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MapFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.zzboo.setActivity(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzboo.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = this.zzboo.onCreateView(layoutInflater, viewGroup, bundle);
        onCreateView.setClickable(true);
        return onCreateView;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.zzboo.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.zzboo.onDestroyView();
        super.onDestroyView();
    }

    public final void onEnterAmbient(Bundle bundle) {
        zzac.zzdj("onEnterAmbient must be called on the main thread.");
        this.zzboo.onEnterAmbient(bundle);
    }

    public final void onExitAmbient() {
        zzac.zzdj("onExitAmbient must be called on the main thread.");
        this.zzboo.onExitAmbient();
    }

    @Override // android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(activity, attributeSet, bundle);
        this.zzboo.setActivity(activity);
        GoogleMapOptions createFromAttributes = GoogleMapOptions.createFromAttributes(activity, attributeSet);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("MapOptions", createFromAttributes);
        this.zzboo.onInflate(activity, bundle2, bundle);
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.zzboo.onLowMemory();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.zzboo.onPause();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.zzboo.onResume();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MapFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.zzboo.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.zzboo.onStart();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.zzboo.onStop();
        super.onStop();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
