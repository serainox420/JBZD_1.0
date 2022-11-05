package com.video.adsdk.internal.checker;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.video.adsdk.interfaces.checker.ResolutionChecker;
/* loaded from: classes3.dex */
public class ADResolutionChecker implements ResolutionChecker {
    private Context context;
    private int screenHeight;
    private int screenWidth;

    public ADResolutionChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.ResolutionChecker
    public int getScreenHeight() {
        return this.screenHeight;
    }

    @Override // com.video.adsdk.interfaces.checker.ResolutionChecker
    public int getScreenWidth() {
        return this.screenWidth;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            this.screenWidth = displayMetrics.widthPixels;
            this.screenHeight = displayMetrics.heightPixels;
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
