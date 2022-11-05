package com.google.android.gms.internal;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public class zzbnb {
    private final String zzaka;
    private final String zzbYQ;
    private final int zzbkP;

    public zzbnb(zzbmt zzbmtVar) {
        if (TextUtils.isEmpty(zzbmtVar.zzWi())) {
            this.zzaka = zzbmtVar.getEmail();
        } else {
            this.zzaka = zzbmtVar.zzWi();
        }
        this.zzbYQ = zzbmtVar.getEmail();
        if (TextUtils.isEmpty(zzbmtVar.zzWj())) {
            this.zzbkP = 3;
        } else if (zzbmtVar.zzWj().equals("PASSWORD_RESET")) {
            this.zzbkP = 0;
        } else if (zzbmtVar.zzWj().equals("VERIFY_EMAIL")) {
            this.zzbkP = 1;
        } else if (zzbmtVar.zzWj().equals("RECOVER_EMAIL")) {
            this.zzbkP = 2;
        } else {
            this.zzbkP = 3;
        }
    }

    public String getData(int i) {
        switch (i) {
            case 0:
                return this.zzaka;
            case 1:
                return this.zzbYQ;
            default:
                return null;
        }
    }

    public int getOperation() {
        return this.zzbkP;
    }
}
