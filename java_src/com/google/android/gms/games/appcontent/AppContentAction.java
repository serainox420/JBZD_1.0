package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import java.util.List;
/* loaded from: classes2.dex */
public interface AppContentAction extends Parcelable, Freezable<AppContentAction> {
    Bundle getExtras();

    String getId();

    String getType();

    AppContentAnnotation zzEh();

    List<AppContentCondition> zzEi();

    String zzEj();

    String zzEk();
}
