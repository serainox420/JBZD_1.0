package com.google.android.gms.location.places.internal;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import com.google.android.gms.location.places.internal.zza;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public class zzf {
    public static CharSequence zza(String str, List<zza.C0413zza> list, CharacterStyle characterStyle) {
        if (characterStyle == null) {
            return str;
        }
        SpannableString spannableString = new SpannableString(str);
        for (zza.C0413zza c0413zza : list) {
            spannableString.setSpan(CharacterStyle.wrap(characterStyle), c0413zza.getOffset(), c0413zza.getLength() + c0413zza.getOffset(), 0);
        }
        return spannableString;
    }

    public static String zzo(Collection<String> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        return TextUtils.join(", ", collection);
    }
}
