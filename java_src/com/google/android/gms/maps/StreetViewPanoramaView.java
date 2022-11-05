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
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzaf;
import com.google.android.gms.maps.internal.zzah;
import com.google.android.gms.maps.internal.zzai;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class StreetViewPanoramaView extends FrameLayout {
    private final zzb zzboQ;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza implements StreetViewLifecycleDelegate {
        private final IStreetViewPanoramaViewDelegate zzboR;
        private View zzboS;
        private final ViewGroup zzbou;

        public zza(ViewGroup viewGroup, IStreetViewPanoramaViewDelegate iStreetViewPanoramaViewDelegate) {
            this.zzboR = (IStreetViewPanoramaViewDelegate) zzac.zzw(iStreetViewPanoramaViewDelegate);
            this.zzbou = (ViewGroup) zzac.zzw(viewGroup);
        }

        @Override // com.google.android.gms.maps.internal.StreetViewLifecycleDelegate
        public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            try {
                this.zzboR.getStreetViewPanoramaAsync(new zzaf.zza(this) { // from class: com.google.android.gms.maps.StreetViewPanoramaView.zza.1
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
                this.zzboR.onCreate(bundle2);
                zzah.zzd(bundle2, bundle);
                this.zzboS = (View) zzd.zzF(this.zzboR.getView());
                this.zzbou.removeAllViews();
                this.zzbou.addView(this.zzboS);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.zzboR.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onLowMemory() {
            try {
                this.zzboR.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                this.zzboR.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                this.zzboR.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onSaveInstanceState(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                zzah.zzd(bundle, bundle2);
                this.zzboR.onSaveInstanceState(bundle2);
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
        private final Context mContext;
        private final List<OnStreetViewPanoramaReadyCallback> zzboI = new ArrayList();
        private final StreetViewPanoramaOptions zzboT;
        protected zze<zza> zzbor;
        private final ViewGroup zzbox;

        zzb(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.zzbox = viewGroup;
            this.mContext = context;
            this.zzboT = streetViewPanoramaOptions;
        }

        public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
            if (zzBN() != null) {
                zzBN().getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
            } else {
                this.zzboI.add(onStreetViewPanoramaReadyCallback);
            }
        }

        public void zzJz() {
            if (this.zzbor == null || zzBN() != null) {
                return;
            }
            try {
                this.zzbor.zza(new zza(this.zzbox, zzai.zzbI(this.mContext).zza(zzd.zzA(this.mContext), this.zzboT)));
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

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.zzboQ = new zzb(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zzboQ = new zzb(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzboQ = new zzb(this, context, null);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        super(context);
        this.zzboQ = new zzb(this, context, streetViewPanoramaOptions);
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback onStreetViewPanoramaReadyCallback) {
        zzac.zzdj("getStreetViewPanoramaAsync() must be called on the main thread");
        this.zzboQ.getStreetViewPanoramaAsync(onStreetViewPanoramaReadyCallback);
    }

    public final void onCreate(Bundle bundle) {
        this.zzboQ.onCreate(bundle);
        if (this.zzboQ.zzBN() == null) {
            com.google.android.gms.dynamic.zza.zzb(this);
        }
    }

    public final void onDestroy() {
        this.zzboQ.onDestroy();
    }

    public final void onLowMemory() {
        this.zzboQ.onLowMemory();
    }

    public final void onPause() {
        this.zzboQ.onPause();
    }

    public final void onResume() {
        this.zzboQ.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.zzboQ.onSaveInstanceState(bundle);
    }
}
