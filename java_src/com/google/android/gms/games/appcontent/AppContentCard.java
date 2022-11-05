package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import java.util.List;
/* loaded from: classes2.dex */
public interface AppContentCard extends Parcelable, Freezable<AppContentCard> {
    List<AppContentAction> getActions();

    String getDescription();

    Bundle getExtras();

    String getId();

    String getTitle();

    String getType();

    List<AppContentCondition> zzEi();

    String zzEj();

    List<AppContentAnnotation> zzEt();

    int zzEu();

    String zzEv();

    int zzEw();
}
