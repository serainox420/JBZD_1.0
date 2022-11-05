package pl.jbzd.api.exception;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import retrofit2.Call;
import retrofit2.Response;
/* loaded from: classes3.dex */
public final class ApiException extends Exception {
    private final int code;
    private final String message;
    private final transient Response<?> response;
    private final transient Throwable throwable;

    /* loaded from: classes3.dex */
    public enum ErrorLevel {
        EMERGENCY,
        CRITICAL,
        ERROR,
        ALERT
    }

    private static String getErrorMessage(Response<?> response, Throwable th, String str, int i) {
        if (str == null) {
            if (response != null) {
                if (response.code() != 200) {
                    if (response.message() != null) {
                        str = response.message();
                    } else {
                        str = "Unknown response message";
                    }
                } else {
                    str = "Unknown error";
                }
            } else if (th != null) {
                if (th.getMessage() != null) {
                    str = th.getMessage();
                } else {
                    str = "Unknown throwable message";
                }
            } else {
                str = "Unknown error";
            }
        }
        return str.trim();
    }

    public ApiException(ErrorLevel errorLevel, Call<?> call, String str, int i) {
        this(errorLevel, call, null, null, str, i);
    }

    public ApiException(ErrorLevel errorLevel, Call<?> call, Response<?> response, int i) {
        this(errorLevel, call, response, null, null, i);
    }

    public ApiException(ErrorLevel errorLevel, Call<?> call, Response<?> response, String str) {
        this(errorLevel, call, response, null, str, -1);
    }

    public ApiException(ErrorLevel errorLevel, Call<?> call, Response<?> response) {
        this(errorLevel, call, response, null, null, -1);
    }

    public ApiException(ErrorLevel errorLevel, Call<?> call, Throwable th) {
        this(errorLevel, call, null, th, null, -1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private ApiException(ErrorLevel errorLevel, Call<?> call, Response<?> response, Throwable th, String str, int i) {
        super("HTTP " + (i < 0 ? response != null ? response.code() : 0 : i) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + getErrorMessage(response, th, str, i));
        int i2 = 0;
        if (i >= 0) {
            i2 = i;
        } else if (response != null) {
            i2 = response.code();
        }
        this.code = i2;
        this.message = getErrorMessage(response, th, str, i);
        this.response = response;
        this.throwable = th;
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public Response<?> response() {
        return this.response;
    }

    public Throwable throwable() {
        return this.throwable;
    }
}
