package com.google.android.gms.wearable;

import com.google.android.gms.common.data.Freezable;
/* loaded from: classes2.dex */
public interface DataEvent extends Freezable<DataEvent> {
    public static final int TYPE_CHANGED = 1;
    public static final int TYPE_DELETED = 2;

    DataItem getDataItem();

    int getType();
}
