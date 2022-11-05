package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import java.util.List;
/* loaded from: classes2.dex */
public interface AppContentSection extends Parcelable, Freezable<AppContentSection> {
    List<AppContentAction> getActions();

    Bundle getExtras();

    String getId();

    String getTitle();

    String getType();

    List<AppContentCard> zzED();

    String zzEE();

    String zzEj();

    List<AppContentAnnotation> zzEt();

    String zzEv();
}
