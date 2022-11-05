package com.google.android.gms.dynamic;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.zzc;
@SuppressLint({"NewApi"})
/* loaded from: classes2.dex */
public final class zzb extends zzc.zza {
    private Fragment zzaRK;

    private zzb(Fragment fragment) {
        this.zzaRK = fragment;
    }

    public static zzb zza(Fragment fragment) {
        if (fragment != null) {
            return new zzb(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.zzaRK.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.zzaRK.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.zzaRK.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.zzaRK.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.zzaRK.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.zzaRK.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public IObjectWrapper getView() {
        return zzd.zzA(this.zzaRK.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.zzaRK.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.zzaRK.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.zzaRK.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.zzaRK.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.zzaRK.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.zzaRK.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.zzaRK.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.zzaRK.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.zzaRK.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.zzaRK.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.zzaRK.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.zzaRK.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.zzaRK.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public IObjectWrapper zzBO() {
        return zzd.zzA(this.zzaRK.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzBP() {
        return zza(this.zzaRK.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public IObjectWrapper zzBQ() {
        return zzd.zzA(this.zzaRK.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzBR() {
        return zza(this.zzaRK.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzD(IObjectWrapper iObjectWrapper) {
        this.zzaRK.registerForContextMenu((View) zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzE(IObjectWrapper iObjectWrapper) {
        this.zzaRK.unregisterForContextMenu((View) zzd.zzF(iObjectWrapper));
    }
}
