package retrofit2;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* loaded from: classes3.dex */
public class HttpException extends Exception {
    private final int code;
    private final String message;
    private final transient Response<?> response;

    private static String getMessage(Response<?> response) {
        if (response == null) {
            throw new NullPointerException("response == null");
        }
        return "HTTP " + response.code() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + response.message();
    }

    public HttpException(Response<?> response) {
        super(getMessage(response));
        this.code = response.code();
        this.message = response.message();
        this.response = response;
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
}
