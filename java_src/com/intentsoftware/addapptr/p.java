package com.intentsoftware.addapptr;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import com.intentsoftware.addapptr.ad.BannerAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MultiSizeBannerPlacement.java */
/* loaded from: classes2.dex */
public class p extends j {
    private Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(String str, PlacementSize placementSize, Context context) {
        super(str, placementSize, context);
        this.context = context;
    }

    @Override // com.intentsoftware.addapptr.j, com.intentsoftware.addapptr.s
    public void onResume(Activity activity) {
        super.onResume(activity);
        this.context = activity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.intentsoftware.addapptr.j
    public void presentNewAd() {
        int width;
        int height;
        if (this.newAd.getConfig().getBannerSize() != null) {
            BannerAd.a customSize = ((BannerAd) this.newAd).getCustomSize();
            boolean z = false;
            if (customSize != null) {
                width = customSize.getWidth();
                height = customSize.getHeight();
                z = customSize.areDimensionsInPixels();
            } else {
                width = this.newAd.getConfig().getBannerSize().getWidth();
                height = this.newAd.getConfig().getBannerSize().getHeight();
            }
            this.placementView = new k(width, height, this.gravity, this.context, z);
            super.presentNewAd();
            for (u uVar : this.listeners) {
                uVar.onPlacementHaveAdWithBannerView(this, this.placementView);
            }
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
            com.intentsoftware.addapptr.c.c.e(this, "Error, banner ad does not have information about size.");
        }
    }

    @Override // com.intentsoftware.addapptr.j, com.intentsoftware.addapptr.s
    public void setDefaultImage(Bitmap bitmap) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Default image is not supported for placement of size: " + getSize().name() + ".");
        }
    }

    @Override // com.intentsoftware.addapptr.j, com.intentsoftware.addapptr.s
    public void setDefaultImageResource(int i) {
        if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, "Default image is not supported for placement of size: " + getSize().name() + ".");
        }
    }
}
