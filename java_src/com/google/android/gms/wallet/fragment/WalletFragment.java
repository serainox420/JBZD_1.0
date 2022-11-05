package com.google.android.gms.wallet.fragment;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.R;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzbks;
import com.google.android.gms.internal.zzbkt;
import com.google.android.gms.internal.zzbkz;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
@TargetApi(12)
/* loaded from: classes2.dex */
public final class WalletFragment extends Fragment {
    private WalletFragmentOptions zzbRR;
    private WalletFragmentInitParams zzbRS;
    private MaskedWalletRequest zzbRT;
    private MaskedWallet zzbRU;
    private Boolean zzbRV;
    private zzb zzbSa;
    private boolean mCreated = false;
    private final com.google.android.gms.dynamic.zzb zzbSb = com.google.android.gms.dynamic.zzb.zza(this);
    private final zzc zzbSc = new zzc();
    private zza zzbSd = new zza(this);
    private final Fragment zzaRK = this;

    /* loaded from: classes2.dex */
    public interface OnStateChangedListener {
        void onStateChanged(WalletFragment walletFragment, int i, int i2, Bundle bundle);
    }

    /* loaded from: classes2.dex */
    static class zza extends zzbkt.zza {
        private OnStateChangedListener zzbSe;
        private final WalletFragment zzbSf;

        zza(WalletFragment walletFragment) {
            this.zzbSf = walletFragment;
        }

        @Override // com.google.android.gms.internal.zzbkt
        public void zza(int i, int i2, Bundle bundle) {
            if (this.zzbSe != null) {
                this.zzbSe.onStateChanged(this.zzbSf, i, i2, bundle);
            }
        }

        public void zza(OnStateChangedListener onStateChangedListener) {
            this.zzbSe = onStateChangedListener;
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb implements LifecycleDelegate {
        private final zzbks zzbRY;

        private zzb(zzbks zzbksVar) {
            this.zzbRY = zzbksVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getState() {
            try {
                return this.zzbRY.getState();
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initialize(WalletFragmentInitParams walletFragmentInitParams) {
            try {
                this.zzbRY.initialize(walletFragmentInitParams);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onActivityResult(int i, int i2, Intent intent) {
            try {
                this.zzbRY.onActivityResult(i, i2, intent);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEnabled(boolean z) {
            try {
                this.zzbRY.setEnabled(z);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateMaskedWallet(MaskedWallet maskedWallet) {
            try {
                this.zzbRY.updateMaskedWallet(maskedWallet);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateMaskedWalletRequest(MaskedWalletRequest maskedWalletRequest) {
            try {
                this.zzbRY.updateMaskedWalletRequest(maskedWalletRequest);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onCreate(Bundle bundle) {
            try {
                this.zzbRY.onCreate(bundle);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                return (View) zzd.zzF(this.zzbRY.onCreateView(zzd.zzA(layoutInflater), zzd.zzA(viewGroup), bundle));
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroy() {
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroyView() {
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            try {
                this.zzbRY.zza(zzd.zzA(activity), (WalletFragmentOptions) bundle.getParcelable("extraWalletFragmentOptions"), bundle2);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onLowMemory() {
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                this.zzbRY.onPause();
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                this.zzbRY.onResume();
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onSaveInstanceState(Bundle bundle) {
            try {
                this.zzbRY.onSaveInstanceState(bundle);
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStart() {
            try {
                this.zzbRY.onStart();
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStop() {
            try {
                this.zzbRY.onStop();
            } catch (RemoteException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzc extends com.google.android.gms.dynamic.zza<zzb> implements View.OnClickListener {
        private zzc() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Activity activity = WalletFragment.this.zzaRK.getActivity();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(activity), activity, -1);
        }

        @Override // com.google.android.gms.dynamic.zza
        protected void zza(FrameLayout frameLayout) {
            WalletFragmentStyle fragmentStyle;
            int i = -1;
            int i2 = -2;
            Button button = new Button(WalletFragment.this.zzaRK.getActivity());
            button.setText(R.string.wallet_buy_button_place_holder);
            if (WalletFragment.this.zzbRR != null && (fragmentStyle = WalletFragment.this.zzbRR.getFragmentStyle()) != null) {
                DisplayMetrics displayMetrics = WalletFragment.this.zzaRK.getResources().getDisplayMetrics();
                i = fragmentStyle.zza("buyButtonWidth", displayMetrics, -1);
                i2 = fragmentStyle.zza("buyButtonHeight", displayMetrics, -2);
            }
            button.setLayoutParams(new ViewGroup.LayoutParams(i, i2));
            button.setOnClickListener(this);
            frameLayout.addView(button);
        }

        @Override // com.google.android.gms.dynamic.zza
        protected void zza(zze<zzb> zzeVar) {
            Activity activity = WalletFragment.this.zzaRK.getActivity();
            if (WalletFragment.this.zzbSa != null || !WalletFragment.this.mCreated || activity == null) {
                return;
            }
            try {
                zzbks zza = zzbkz.zza(activity, WalletFragment.this.zzbSb, WalletFragment.this.zzbRR, WalletFragment.this.zzbSd);
                WalletFragment.this.zzbSa = new zzb(zza);
                WalletFragment.this.zzbRR = null;
                zzeVar.zza(WalletFragment.this.zzbSa);
                if (WalletFragment.this.zzbRS != null) {
                    WalletFragment.this.zzbSa.initialize(WalletFragment.this.zzbRS);
                    WalletFragment.this.zzbRS = null;
                }
                if (WalletFragment.this.zzbRT != null) {
                    WalletFragment.this.zzbSa.updateMaskedWalletRequest(WalletFragment.this.zzbRT);
                    WalletFragment.this.zzbRT = null;
                }
                if (WalletFragment.this.zzbRU != null) {
                    WalletFragment.this.zzbSa.updateMaskedWallet(WalletFragment.this.zzbRU);
                    WalletFragment.this.zzbRU = null;
                }
                if (WalletFragment.this.zzbRV == null) {
                    return;
                }
                WalletFragment.this.zzbSa.setEnabled(WalletFragment.this.zzbRV.booleanValue());
                WalletFragment.this.zzbRV = null;
            } catch (GooglePlayServicesNotAvailableException e) {
            }
        }
    }

    public static WalletFragment newInstance(WalletFragmentOptions walletFragmentOptions) {
        WalletFragment walletFragment = new WalletFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("extraWalletFragmentOptions", walletFragmentOptions);
        walletFragment.zzaRK.setArguments(bundle);
        return walletFragment;
    }

    public int getState() {
        if (this.zzbSa != null) {
            return this.zzbSa.getState();
        }
        return 0;
    }

    public void initialize(WalletFragmentInitParams walletFragmentInitParams) {
        if (this.zzbSa != null) {
            this.zzbSa.initialize(walletFragmentInitParams);
            this.zzbRS = null;
        } else if (this.zzbRS != null) {
            Log.w("WalletFragment", "initialize(WalletFragmentInitParams) was called more than once. Ignoring.");
        } else {
            this.zzbRS = walletFragmentInitParams;
            if (this.zzbRT != null) {
                Log.w("WalletFragment", "updateMaskedWalletRequest() was called before initialize()");
            }
            if (this.zzbRU == null) {
                return;
            }
            Log.w("WalletFragment", "updateMaskedWallet() was called before initialize()");
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.zzbSa != null) {
            this.zzbSa.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        WalletFragmentOptions walletFragmentOptions;
        super.onCreate(bundle);
        if (bundle != null) {
            bundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
            WalletFragmentInitParams walletFragmentInitParams = (WalletFragmentInitParams) bundle.getParcelable("walletFragmentInitParams");
            if (walletFragmentInitParams != null) {
                if (this.zzbRS != null) {
                    Log.w("WalletFragment", "initialize(WalletFragmentInitParams) was called more than once.Ignoring.");
                }
                this.zzbRS = walletFragmentInitParams;
            }
            if (this.zzbRT == null) {
                this.zzbRT = (MaskedWalletRequest) bundle.getParcelable("maskedWalletRequest");
            }
            if (this.zzbRU == null) {
                this.zzbRU = (MaskedWallet) bundle.getParcelable("maskedWallet");
            }
            if (bundle.containsKey("walletFragmentOptions")) {
                this.zzbRR = (WalletFragmentOptions) bundle.getParcelable("walletFragmentOptions");
            }
            if (bundle.containsKey("enabled")) {
                this.zzbRV = Boolean.valueOf(bundle.getBoolean("enabled"));
            }
        } else if (this.zzaRK.getArguments() != null && (walletFragmentOptions = (WalletFragmentOptions) this.zzaRK.getArguments().getParcelable("extraWalletFragmentOptions")) != null) {
            walletFragmentOptions.zzci(this.zzaRK.getActivity());
            this.zzbRR = walletFragmentOptions;
        }
        this.mCreated = true;
        this.zzbSc.onCreate(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.zzbSc.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mCreated = false;
    }

    @Override // android.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(activity, attributeSet, bundle);
        if (this.zzbRR == null) {
            this.zzbRR = WalletFragmentOptions.zzc(activity, attributeSet);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("attrKeyWalletFragmentOptions", this.zzbRR);
        this.zzbSc.onInflate(activity, bundle2, bundle);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        this.zzbSc.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.zzbSc.onResume();
        FragmentManager fragmentManager = this.zzaRK.getActivity().getFragmentManager();
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag(GooglePlayServicesUtil.GMS_ERROR_DIALOG);
        if (findFragmentByTag != null) {
            fragmentManager.beginTransaction().remove(findFragmentByTag).commit();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.zzaRK.getActivity()), this.zzaRK.getActivity(), -1);
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
        this.zzbSc.onSaveInstanceState(bundle);
        if (this.zzbRS != null) {
            bundle.putParcelable("walletFragmentInitParams", this.zzbRS);
            this.zzbRS = null;
        }
        if (this.zzbRT != null) {
            bundle.putParcelable("maskedWalletRequest", this.zzbRT);
            this.zzbRT = null;
        }
        if (this.zzbRU != null) {
            bundle.putParcelable("maskedWallet", this.zzbRU);
            this.zzbRU = null;
        }
        if (this.zzbRR != null) {
            bundle.putParcelable("walletFragmentOptions", this.zzbRR);
            this.zzbRR = null;
        }
        if (this.zzbRV != null) {
            bundle.putBoolean("enabled", this.zzbRV.booleanValue());
            this.zzbRV = null;
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.zzbSc.onStart();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.zzbSc.onStop();
    }

    public void setEnabled(boolean z) {
        if (this.zzbSa == null) {
            this.zzbRV = Boolean.valueOf(z);
            return;
        }
        this.zzbSa.setEnabled(z);
        this.zzbRV = null;
    }

    public void setOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.zzbSd.zza(onStateChangedListener);
    }

    public void updateMaskedWallet(MaskedWallet maskedWallet) {
        if (this.zzbSa == null) {
            this.zzbRU = maskedWallet;
            return;
        }
        this.zzbSa.updateMaskedWallet(maskedWallet);
        this.zzbRU = null;
    }

    public void updateMaskedWalletRequest(MaskedWalletRequest maskedWalletRequest) {
        if (this.zzbSa == null) {
            this.zzbRT = maskedWalletRequest;
            return;
        }
        this.zzbSa.updateMaskedWalletRequest(maskedWalletRequest);
        this.zzbRT = null;
    }
}
