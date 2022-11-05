package com.openx.common.utils.logger;

import android.util.Log;
/* loaded from: classes3.dex */
public class OXLogWrapper implements OXLogNodeInterface {
    public static final String TAG = "LogWrapper";
    private OXLogNodeInterface mNext;

    public OXLogNodeInterface getNext() {
        return this.mNext;
    }

    public void setNext(OXLogNodeInterface oXLogNodeInterface) {
        this.mNext = oXLogNodeInterface;
    }

    @Override // com.openx.common.utils.logger.OXLogNodeInterface
    public void print(int i, String str, String str2, Throwable th) {
        String str3 = str2 == null ? "" : str2;
        if (OXLog.getLogLevel() >= i) {
            if (th != null) {
                str2 = str2 + "\n" + Log.getStackTraceString(th);
            }
            Log.println(i, str, str3);
            if (this.mNext != null) {
                this.mNext.print(i, str, str2, th);
            }
        }
    }
}
