package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.Presentation;
import android.content.Context;
import android.view.Display;
import android.view.Window;
import com.google.android.gms.drive.DriveFile;
@TargetApi(19)
/* loaded from: classes2.dex */
public abstract class CastPresentation extends Presentation {
    public CastPresentation(Context context, Display display) {
        super(context, display);
        zzsj();
    }

    public CastPresentation(Context context, Display display, int i) {
        super(context, display, i);
        zzsj();
    }

    private void zzsj() {
        Window window = getWindow();
        if (window != null) {
            window.setType(2030);
            window.addFlags(DriveFile.MODE_READ_ONLY);
            window.addFlags(16777216);
            window.addFlags(1024);
        }
    }
}
