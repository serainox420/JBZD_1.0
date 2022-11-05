package com.adcolony.sdk;

import com.adcolony.sdk.bn;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bs extends Exception {
    private static final long serialVersionUID = 1;

    /* renamed from: a  reason: collision with root package name */
    bn.a f1215a;
    int b;
    int c;

    public bs(bn.a aVar, String str) {
        super(str);
        this.f1215a = aVar;
        this.c = aVar.ordinal();
    }

    public bs(int i, String str) {
        super(str);
        this.f1215a = a(i);
        this.c = i;
    }

    public bs(Exception exc, String str) {
        super(str);
        this.f1215a = bn.a.YVOLVER_ERROR_UNKNOWN;
        this.c = this.f1215a.ordinal();
        setStackTrace(exc.getStackTrace());
    }

    public bs(Exception exc, bn.a aVar, String str) {
        super(str);
        this.f1215a = aVar;
        this.c = aVar.ordinal();
        setStackTrace(exc.getStackTrace());
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "YvolverException: Error code:" + this.c + ", Message: " + getMessage();
    }

    private bn.a a(int i) {
        bn.a aVar = bn.a.YVOLVER_ERROR_NONE;
        switch (i) {
            case 1:
                return bn.a.YVOLVER_ERROR_UNKNOWN;
            case 2:
                return bn.a.YVOLVER_ERROR_INVALID_SSL_DOMAIN;
            case 3:
                return bn.a.YVOLVER_ERROR_TIMEOUT;
            case 4:
                return bn.a.YVOLVER_ERROR_HOST_UNREACHABLE;
            case 5:
                return bn.a.YVOLVER_ERROR_WEB_ERROR;
            case 6:
                return bn.a.YVOLVER_ERROR_SERVER_MAINTENANCE;
            case 7:
                return bn.a.YVOLVER_ERROR_APP_DISABLED;
            case 8:
                return bn.a.YVOLVER_ERROR_APP_BANNED;
            case 9:
                return bn.a.YVOLVER_ERROR_SESSION_CONNECTED;
            case 10:
                return bn.a.YVOLVER_ERROR_SESSION_DISCONNECTED;
            case 11:
                return bn.a.YVOLVER_ERROR_MALFORMED_ERROR_ID;
            case 12:
                return bn.a.YVOLVER_ERROR_UNKNOWN_APP_STATE;
            case 13:
                return bn.a.YVOLVER_ERROR_MALFORMED_RESULTS;
            case 14:
                return bn.a.YVOLVER_ERROR_MISSING_PARAMETER;
            case 15:
                return bn.a.YVOLVER_ERROR_CLIENT_EXCEPTION;
            case 16:
                return bn.a.YVOLVER_ERROR_API_SUBMISSION;
            case 17:
                return bn.a.YVOLVER_ERROR_SERVER_TO_SERVER;
            case 18:
                return bn.a.YVOLVER_ERROR_SSL;
            case 19:
                return bn.a.YVOLVER_ERROR_JSON;
            case 20:
                return bn.a.YVOLVER_ERROR_NULL_VALUE;
            case 21:
                return bn.a.YVOLVER_ERROR_NULL_RESPONSE;
            case 22:
                return bn.a.YVOLVER_ERROR_IO_FAILURE;
            case 23:
                return bn.a.YVOLVER_ERROR_MISC;
            case 24:
                return bn.a.YVOLVER_ERROR_DB_REWARD;
            case 25:
                return bn.a.YVOLVER_ERROR_INVALIDCONSUMERKEY;
            case 26:
                return bn.a.YVOLVER_ERROR_INVALID_IAP_PAYLOAD_SIGNATURE;
            case 27:
                return bn.a.YVOLVER_ERROR_INSUFFICIENT_OS_VERSION;
            case 28:
                return bn.a.YVOLVER_ERROR_NUM;
            case 29:
                return bn.a.YVOLVER_ERROR_UNCAUGHT_EXCEPTION;
            default:
                return aVar;
        }
    }
}
