package com.mdotm.android.constants;
/* loaded from: classes2.dex */
public enum MdotMGender {
    MALE,
    FEMALE,
    UNKNOWN;

    /* renamed from: values  reason: to resolve conflict with enum method */
    public static MdotMGender[] valuesCustom() {
        MdotMGender[] valuesCustom = values();
        int length = valuesCustom.length;
        MdotMGender[] mdotMGenderArr = new MdotMGender[length];
        System.arraycopy(valuesCustom, 0, mdotMGenderArr, 0, length);
        return mdotMGenderArr;
    }
}
