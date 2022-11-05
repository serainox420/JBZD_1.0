package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
@zzme
/* loaded from: classes.dex */
public class zzef {
    public static final zzef zzzx = new zzef();

    protected zzef() {
    }

    public static zzef zzeD() {
        return zzzx;
    }

    public zzec zza(Context context, zzfe zzfeVar) {
        Date birthday = zzfeVar.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1L;
        String contentUrl = zzfeVar.getContentUrl();
        int gender = zzfeVar.getGender();
        Set<String> keywords = zzfeVar.getKeywords();
        List unmodifiableList = !keywords.isEmpty() ? Collections.unmodifiableList(new ArrayList(keywords)) : null;
        boolean isTestDevice = zzfeVar.isTestDevice(context);
        int zzff = zzfeVar.zzff();
        Location location = zzfeVar.getLocation();
        Bundle networkExtrasBundle = zzfeVar.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean manualImpressionsEnabled = zzfeVar.getManualImpressionsEnabled();
        String publisherProvidedId = zzfeVar.getPublisherProvidedId();
        SearchAdRequest zzfc = zzfeVar.zzfc();
        zzfp zzfpVar = zzfc != null ? new zzfp(zzfc) : null;
        String str = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            str = zzel.zzeT().zza(Thread.currentThread().getStackTrace(), applicationContext.getPackageName());
        }
        return new zzec(7, time, networkExtrasBundle, gender, unmodifiableList, isTestDevice, zzff, manualImpressionsEnabled, publisherProvidedId, zzfpVar, location, contentUrl, zzfeVar.zzfe(), zzfeVar.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzfeVar.zzfg())), zzfeVar.zzfb(), str, zzfeVar.isDesignedForFamilies());
    }

    public zzoa zza(Context context, zzfe zzfeVar, String str) {
        return new zzoa(zza(context, zzfeVar), str);
    }
}
