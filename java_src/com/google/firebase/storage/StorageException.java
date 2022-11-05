package com.google.firebase.storage;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.FirebaseException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class StorageException extends FirebaseException {
    public static final int ERROR_BUCKET_NOT_FOUND = -13011;
    public static final int ERROR_CANCELED = -13040;
    public static final int ERROR_INVALID_CHECKSUM = -13031;
    public static final int ERROR_NOT_AUTHENTICATED = -13020;
    public static final int ERROR_NOT_AUTHORIZED = -13021;
    public static final int ERROR_OBJECT_NOT_FOUND = -13010;
    public static final int ERROR_PROJECT_NOT_FOUND = -13012;
    public static final int ERROR_QUOTA_EXCEEDED = -13013;
    public static final int ERROR_RETRY_LIMIT_EXCEEDED = -13030;
    public static final int ERROR_UNKNOWN = -13000;

    /* renamed from: a  reason: collision with root package name */
    static IOException f3604a;
    static final /* synthetic */ boolean b;
    private final int c;
    private final int d;
    private String e;
    private Throwable f;

    static {
        b = !StorageException.class.desiredAssertionStatus();
        f3604a = new IOException("The operation was canceled.");
    }

    StorageException(int i, Throwable th, int i2) {
        this.e = a(i);
        this.f = th;
        this.c = i;
        this.d = i2;
        String str = this.e;
        String valueOf = String.valueOf(Integer.toString(this.c));
        String valueOf2 = String.valueOf(Integer.toString(this.d));
        Log.e("StorageException", new StringBuilder(String.valueOf(str).length() + 52 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length()).append("StorageException has occurred.\n").append(str).append("\n Code: ").append(valueOf).append(" HttpResult: ").append(valueOf2).toString());
        if (this.f != null) {
            Log.e("StorageException", this.f.getMessage(), this.f);
        }
    }

    StorageException(Status status) {
        this(a(status), null, 0);
    }

    StorageException(Throwable th, int i) {
        this(a(th, i), th, i);
    }

    private static int a(Status status) {
        return status.isCanceled() ? ERROR_CANCELED : status == Status.zzazA ? ERROR_RETRY_LIMIT_EXCEEDED : ERROR_UNKNOWN;
    }

    private static int a(Throwable th, int i) {
        if (th == f3604a) {
            return ERROR_CANCELED;
        }
        switch (i) {
            case -2:
                return ERROR_RETRY_LIMIT_EXCEEDED;
            case 401:
                return ERROR_NOT_AUTHENTICATED;
            case 403:
                return ERROR_NOT_AUTHORIZED;
            case WalletConstants.ERROR_CODE_INVALID_PARAMETERS /* 404 */:
                return ERROR_OBJECT_NOT_FOUND;
            case WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR /* 409 */:
                return ERROR_INVALID_CHECKSUM;
            default:
                return ERROR_UNKNOWN;
        }
    }

    static String a(int i) {
        switch (i) {
            case ERROR_CANCELED /* -13040 */:
                return "The operation was cancelled.";
            case ERROR_INVALID_CHECKSUM /* -13031 */:
                return "Object has a checksum which does not match. Please retry the operation.";
            case ERROR_RETRY_LIMIT_EXCEEDED /* -13030 */:
                return "The operation retry limit has been exceeded.";
            case ERROR_NOT_AUTHORIZED /* -13021 */:
                return "User does not have permission to access this object.";
            case ERROR_NOT_AUTHENTICATED /* -13020 */:
                return "User is not authenticated, please authenticate using Firebase Authentication and try again.";
            case ERROR_QUOTA_EXCEEDED /* -13013 */:
                return "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage.";
            case ERROR_PROJECT_NOT_FOUND /* -13012 */:
                return "Project does not exist.";
            case ERROR_BUCKET_NOT_FOUND /* -13011 */:
                return "Bucket does not exist.";
            case ERROR_OBJECT_NOT_FOUND /* -13010 */:
                return "Object does not exist at location.";
            case ERROR_UNKNOWN /* -13000 */:
                return "An unknown error occurred, please check the HTTP result code and inner exception for server response.";
            default:
                return "An unknown error occurred, please check the HTTP result code and inner exception for server response.";
        }
    }

    private static boolean b(int i) {
        return i == 0 || (i >= 200 && i < 300);
    }

    public static StorageException fromErrorStatus(Status status) {
        zzac.zzw(status);
        zzac.zzax(!status.isSuccess());
        return new StorageException(status);
    }

    public static StorageException fromException(Throwable th) {
        StorageException fromExceptionAndHttpCode = fromExceptionAndHttpCode(th, 0);
        if (b || fromExceptionAndHttpCode != null) {
            return fromExceptionAndHttpCode;
        }
        throw new AssertionError();
    }

    public static StorageException fromExceptionAndHttpCode(Throwable th, int i) {
        if (th instanceof StorageException) {
            return (StorageException) th;
        }
        if (b(i) && th == null) {
            return null;
        }
        return new StorageException(th, i);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        if (this.f == this) {
            return null;
        }
        return this.f;
    }

    public int getErrorCode() {
        return this.c;
    }

    public int getHttpResultCode() {
        return this.d;
    }

    public boolean getIsRecoverableException() {
        return getErrorCode() == -13030;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.e;
    }
}
