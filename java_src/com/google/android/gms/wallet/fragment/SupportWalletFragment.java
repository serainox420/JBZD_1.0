package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.u;
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
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.internal.zzbks;
import com.google.android.gms.internal.zzbkt;
import com.google.android.gms.internal.zzbkz;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
/* loaded from: classes2.dex */
public final class SupportWalletFragment extends Fragment {
    private zzb zzbRN;
    private WalletFragmentOptions zzbRR;
    private WalletFragmentInitParams zzbRS;
    private MaskedWalletRequest zzbRT;
    private MaskedWallet zzbRU;
    private Boolean zzbRV;
    private boolean mCreated = false;
    private final zzg zzbRO = zzg.zza(this);
    private final zzc zzbRP = new zzc();
    private zza zzbRQ = new zza(this);
    private final Fragment zzaRN = this;

    /* loaded from: classes2.dex */
    public interface OnStateChangedListener {
        void onStateChanged(SupportWalletFragment supportWalletFragment, int i, int i2, Bundle bundle);
    }

    /* loaded from: classes2.dex */
    static class zza extends zzbkt.zza {
        private OnStateChangedListener zzbRW;
        private final SupportWalletFragment zzbRX;

        zza(SupportWalletFragment supportWalletFragment) {
            this.zzbRX = supportWalletFragment;
        }

        @Override // com.google.android.gms.internal.zzbkt
        public void zza(int i, int i2, Bundle bundle) {
            if (this.zzbRW != null) {
                this.zzbRW.onStateChanged(this.zzbRX, i, i2, bundle);
            }
        }

        public void zza(OnStateChangedListener onStateChangedListener) {
            this.zzbRW = onStateChangedListener;
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
            FragmentActivity activity = SupportWalletFragment.this.zzaRN.getActivity();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(activity), activity, -1);
        }

        @Override // com.google.android.gms.dynamic.zza
        protected void zza(FrameLayout frameLayout) {
            WalletFragmentStyle fragmentStyle;
            int i = -1;
            int i2 = -2;
            Button button = new Button(SupportWalletFragment.this.zzaRN.getActivity());
            button.setText(R.string.wallet_buy_button_place_holder);
            if (SupportWalletFragment.this.zzbRR != null && (fragmentStyle = SupportWalletFragment.this.zzbRR.getFragmentStyle()) != null) {
                DisplayMetrics displayMetrics = SupportWalletFragment.this.zzaRN.getResources().getDisplayMetrics();
                i = fragmentStyle.zza("buyButtonWidth", displayMetrics, -1);
                i2 = fragmentStyle.zza("buyButtonHeight", displayMetrics, -2);
            }
            button.setLayoutParams(new ViewGroup.LayoutParams(i, i2));
            button.setOnClickListener(this);
            frameLayout.addView(button);
        }

        @Override // com.google.android.gms.dynamic.zza
        protected void zza(zze<zzb> zzeVar) {
            FragmentActivity activity = SupportWalletFragment.this.zzaRN.getActivity();
            if (SupportWalletFragment.this.zzbRN != null || !SupportWalletFragment.this.mCreated || activity == null) {
                return;
            }
            try {
                zzbks zza = zzbkz.zza(activity, SupportWalletFragment.this.zzbRO, SupportWalletFragment.this.zzbRR, SupportWalletFragment.this.zzbRQ);
                SupportWalletFragment.this.zzbRN = new zzb(zza);
                SupportWalletFragment.this.zzbRR = null;
                zzeVar.zza(SupportWalletFragment.this.zzbRN);
                if (SupportWalletFragment.this.zzbRS != null) {
                    SupportWalletFragment.this.zzbRN.initialize(SupportWalletFragment.this.zzbRS);
                    SupportWalletFragment.this.zzbRS = null;
                }
                if (SupportWalletFragment.this.zzbRT != null) {
                    SupportWalletFragment.this.zzbRN.updateMaskedWalletRequest(SupportWalletFragment.this.zzbRT);
                    SupportWalletFragment.this.zzbRT = null;
                }
                if (SupportWalletFragment.this.zzbRU != null) {
                    SupportWalletFragment.this.zzbRN.updateMaskedWallet(SupportWalletFragment.this.zzbRU);
                    SupportWalletFragment.this.zzbRU = null;
                }
                if (SupportWalletFragment.this.zzbRV == null) {
                    return;
                }
                SupportWalletFragment.this.zzbRN.setEnabled(SupportWalletFragment.this.zzbRV.booleanValue());
                SupportWalletFragment.this.zzbRV = null;
            } catch (GooglePlayServicesNotAvailableException e) {
            }
        }
    }

    public static SupportWalletFragment newInstance(WalletFragmentOptions walletFragmentOptions) {
        SupportWalletFragment supportWalletFragment = new SupportWalletFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("extraWalletFragmentOptions", walletFragmentOptions);
        supportWalletFragment.zzaRN.setArguments(bundle);
        return supportWalletFragment;
    }

    public int getState() {
        if (this.zzbRN != null) {
            return this.zzbRN.getState();
        }
        return 0;
    }

    public void initialize(WalletFragmentInitParams walletFragmentInitParams) {
        if (this.zzbRN != null) {
            this.zzbRN.initialize(walletFragmentInitParams);
            this.zzbRS = null;
        } else if (this.zzbRS != null) {
            Log.w("SupportWalletFragment", "initialize(WalletFragmentInitParams) was called more than once. Ignoring.");
        } else {
            this.zzbRS = walletFragmentInitParams;
            if (this.zzbRT != null) {
                Log.w("SupportWalletFragment", "updateMaskedWalletRequest() was called before initialize()");
            }
            if (this.zzbRU == null) {
                return;
            }
            Log.w("SupportWalletFragment", "updateMaskedWallet() was called before initialize()");
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.zzbRN != null) {
            this.zzbRN.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        WalletFragmentOptions walletFragmentOptions;
        super.onCreate(bundle);
        if (bundle != null) {
            bundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
            WalletFragmentInitParams walletFragmentInitParams = (WalletFragmentInitParams) bundle.getParcelable("walletFragmentInitParams");
            if (walletFragmentInitParams != null) {
                if (this.zzbRS != null) {
                    Log.w("SupportWalletFragment", "initialize(WalletFragmentInitParams) was called more than once.Ignoring.");
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
        } else if (this.zzaRN.getArguments() != null && (walletFragmentOptions = (WalletFragmentOptions) this.zzaRN.getArguments().getParcelable("extraWalletFragmentOptions")) != null) {
            walletFragmentOptions.zzci(this.zzaRN.getActivity());
            this.zzbRR = walletFragmentOptions;
        }
        this.mCreated = true;
        this.zzbRP.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.zzbRP.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mCreated = false;
    }

    @Override // android.support.v4.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(activity, attributeSet, bundle);
        if (this.zzbRR == null) {
            this.zzbRR = WalletFragmentOptions.zzc(activity, attributeSet);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("attrKeyWalletFragmentOptions", this.zzbRR);
        this.zzbRP.onInflate(activity, bundle2, bundle);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.zzbRP.onPause();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.zzbRP.onResume();
        u supportFragmentManager = this.zzaRN.getActivity().getSupportFragmentManager();
        Fragment a2 = supportFragmentManager.a(GooglePlayServicesUtil.GMS_ERROR_DIALOG);
        if (a2 != null) {
            supportFragmentManager.a().a(a2).b();
            GooglePlayServicesUtil.showErrorDialogFragment(GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.zzaRN.getActivity()), this.zzaRN.getActivity(), -1);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
        this.zzbRP.onSaveInstanceState(bundle);
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

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.zzbRP.onStart();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        this.zzbRP.onStop();
    }

    public void setEnabled(boolean z) {
        if (this.zzbRN == null) {
            this.zzbRV = Boolean.valueOf(z);
            return;
        }
        this.zzbRN.setEnabled(z);
        this.zzbRV = null;
    }

    public void setOnStateChangedListener(OnStateChangedListener onStateChangedListener) {
        this.zzbRQ.zza(onStateChangedListener);
    }

    public void updateMaskedWallet(MaskedWallet maskedWallet) {
        if (this.zzbRN == null) {
            this.zzbRU = maskedWallet;
            return;
        }
        this.zzbRN.updateMaskedWallet(maskedWallet);
        this.zzbRU = null;
    }

    public void updateMaskedWalletRequest(MaskedWalletRequest maskedWalletRequest) {
        if (this.zzbRN == null) {
            this.zzbRT = maskedWalletRequest;
            return;
        }
        this.zzbRN.updateMaskedWalletRequest(maskedWalletRequest);
        this.zzbRT = null;
    }
}
