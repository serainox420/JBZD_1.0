package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.google.android.gms.dynamic.zzc;
/* loaded from: classes2.dex */
public final class zzg extends zzc.zza {
    private Fragment zzaRN;

    private zzg(Fragment fragment) {
        this.zzaRN = fragment;
    }

    public static zzg zza(Fragment fragment) {
        if (fragment != null) {
            return new zzg(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.zzaRN.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.zzaRN.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.zzaRN.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.zzaRN.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.zzaRN.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.zzaRN.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public IObjectWrapper getView() {
        return zzd.zzA(this.zzaRN.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.zzaRN.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.zzaRN.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.zzaRN.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.zzaRN.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.zzaRN.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.zzaRN.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.zzaRN.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.zzaRN.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.zzaRN.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.zzaRN.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.zzaRN.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.zzaRN.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.zzaRN.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public IObjectWrapper zzBO() {
        return zzd.zzA(this.zzaRN.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzBP() {
        return zza(this.zzaRN.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public IObjectWrapper zzBQ() {
        return zzd.zzA(this.zzaRN.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzBR() {
        return zza(this.zzaRN.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzD(IObjectWrapper iObjectWrapper) {
        this.zzaRN.registerForContextMenu((View) zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzE(IObjectWrapper iObjectWrapper) {
        this.zzaRN.unregisterForContextMenu((View) zzd.zzF(iObjectWrapper));
    }
}
