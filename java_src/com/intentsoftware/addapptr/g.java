package com.intentsoftware.addapptr;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: AdPicker.java */
/* loaded from: classes2.dex */
class g {
    g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b pickAd(ArrayList<b> arrayList, v vVar) {
        float f;
        int i;
        int i2;
        long j;
        int i3;
        float f2;
        int i4;
        b bVar;
        f fVar;
        b bVar2 = null;
        int i5 = 999999;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        int i6 = 0;
        long j2 = 0;
        Iterator<b> it = arrayList.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (ad.isNetworkEnabled(next.getNetwork())) {
                if (next.getPercentage() == 0) {
                    f = BitmapDescriptorFactory.HUE_RED;
                } else if (vVar.getTotalImpressionsCount() == 0) {
                    f = next.getPercentage() / 50.0f;
                } else {
                    float totalImpressionsCount = (vVar.getTotalImpressionsCount() * next.getPercentage()) / 100.0f;
                    float impressionsCountForAdpicker = vVar.getImpressionsCountForAdpicker(next);
                    if (impressionsCountForAdpicker == BitmapDescriptorFactory.HUE_RED) {
                        impressionsCountForAdpicker = 0.8f;
                    }
                    f = totalImpressionsCount / impressionsCountForAdpicker;
                }
                boolean z = false;
                if (next.getPriority() < i5) {
                    z = true;
                }
                if (f > f3 && next.getPriority() <= i5) {
                    z = true;
                }
                boolean z2 = (next.getPriority() == i5 && f == f3 && next.getPercentage() > i6) ? true : z;
                if (next.getPriority() != i5 || f != f3 || next.getPercentage() != i6) {
                    i = 100;
                    i2 = 100;
                } else {
                    f fVar2 = vVar.getTotalNetworksStatistics().get(next);
                    if (bVar2 == null) {
                        fVar = null;
                    } else {
                        fVar = vVar.getTotalNetworksStatistics().get(bVar2);
                    }
                    if (fVar2 == null || fVar2.numRequests <= 0) {
                        i2 = 100;
                    } else {
                        i2 = (fVar2.numResponses * 100) / fVar2.numRequests;
                    }
                    if (fVar == null || fVar.numRequests <= 0) {
                        i = 100;
                    } else {
                        i = (fVar.numResponses * 100) / fVar.numRequests;
                    }
                    if (i2 > i) {
                        z2 = true;
                    }
                }
                if (next.getPriority() == i5 && f == f3 && next.getPercentage() == i6 && i2 == i && next.getLastTryTimestamp() < j2) {
                    z2 = true;
                }
                if (z2) {
                    int percentage = next.getPercentage();
                    i4 = next.getPriority();
                    bVar = next;
                    j = next.getLastTryTimestamp();
                    f2 = f;
                    i3 = percentage;
                } else {
                    j = j2;
                    i3 = i6;
                    f2 = f3;
                    i4 = i5;
                    bVar = bVar2;
                }
                f3 = f2;
                i5 = i4;
                bVar2 = bVar;
                i6 = i3;
                j2 = j;
            }
        }
        return bVar2;
    }
}
