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
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzaf;
import com.google.android.gms.maps.internal.zzah;
import com.google.android.gms.maps.internal.zzai;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
@TargetApi(11)
/* loaded from: classes2.dex */
public class StreetViewPanoramaFragment extends Fragment {
    private final zzb zzboF = new zzb(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza implements StreetViewLifecycleDelegate {
        private final Fragment zzaRK;
        private final IStreetViewPanoramaFragmentDelegate zzboG;

        public zza(Fragment fragment, IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate) {
            this.zzboG = (IStreetViewPanoramaFragmentDelegate) zzac.zzw(iStreetViewPanoramaFragmentDelegate);
            this.zzaRK = (Fragment) zzac.zzw(fragment);
        }

        @Override // com.google.android.gms.maps.internal.StreetViewLifecycleDelegate
        public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            try {
                this.zzboG.getStreetViewPanoramaAsync(new zzaf.zza(this) { // from class: com.google.android.gms.maps.StreetViewPanoramaFragment.zza.1
                    @Override // com.google.android.gms.maps.internal.zzaf
                    public void zza(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) throws RemoteException {
                        onStreetViewPanoramaReadyCallback.onStreetViewPanoramaReady(new StreetViewPanorama(iStreetViewPanoramaDelegate));
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
                if (arguments != null && arguments.containsKey("StreetViewPanoramaOptions")) {
                    zzah.zza(bundle2, "StreetViewPanoramaOptions", arguments.getParcelable("StreetViewPanoramaOptions"));
                }
                this.zzboG.onCreate(bundle2);
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
                IObjectWrapper onCreateView = this.zzboG.onCreateView(zzd.zzA(layoutInflater), zzd.zzA(viewGroup), bundle2);
                zzah.zzd(bundle2, bundle);
                return (View) zzd.zzF(onCreateView);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.zzboG.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroyView() {
            try {
                this.zzboG.onDestroyView();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            try {
                Bundle bundle3 = new Bundle();
                zzah.zzd(bundle2, bundle3);
                this.zzboG.onInflate(zzd.zzA(activity), null, bundle3);
                zzah.zzd(bundle3, bundle2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onLowMemory() {
            try {
                this.zzboG.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                this.zzboG.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                this.zzboG.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzboG.onSaveInstanceState(bundle2);
                zzah.zzd(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStart() {
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStop() {
        }
    }

    /* loaded from: classes2.dex */
    static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private Activity mActivity;
        private final Fragment zzaRK;
        private final List<OnStreetViewPanoramaReadyCallback> zzboI = new ArrayList();
        protected zze<zza> zzbor;

        zzb(Fragment fragment) {
            this.zzaRK = fragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivity(Activity activity) {
            this.mActivity = activity;
            zzJz();
        }

        public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            if (zzBN() != null) {
                zzBN().getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
            } else {
                this.zzboI.add(onStreetViewPanoramaReadyCallback);
            }
        }

        public void zzJz() {
            if (this.mActivity == null || this.zzbor == null || zzBN() != null) {
                return;
            }
            try {
                MapsInitializer.initialize(this.mActivity);
                this.zzbor.zza(new zza(this.zzaRK, zzai.zzbI(this.mActivity).zzJ(zzd.zzA(this.mActivity))));
                for (OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback : this.zzboI) {
                    zzBN().getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
                }
                this.zzboI.clear();
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

    public static StreetViewPanoramaFragment newInstance() {
        return new StreetViewPanoramaFragment();
    }

    public static StreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions streetViewPanoramaOptions) {
        StreetViewPanoramaFragment streetViewPanoramaFragment = new StreetViewPanoramaFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("StreetViewPanoramaOptions", streetViewPanoramaOptions);
        streetViewPanoramaFragment.setArguments(bundle);
        return streetViewPanoramaFragment;
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
        zzac.zzdj("getStreetViewPanoramaAsync() must be called on the main thread");
        this.zzboF.getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.zzboF.setActivity(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzboF.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.zzboF.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.zzboF.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.zzboF.onDestroyView();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(activity, attributeSet, bundle);
        this.zzboF.setActivity(activity);
        this.zzboF.onInflate(activity, new Bundle(), bundle);
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.zzboF.onLowMemory();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.zzboF.onPause();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.zzboF.onResume();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.zzboF.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
