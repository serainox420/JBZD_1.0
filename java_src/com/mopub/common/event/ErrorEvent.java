package com.mopub.common.event;

import com.mopub.common.event.BaseEvent;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes3.dex */
public class ErrorEvent extends BaseEvent {

    /* renamed from: a  reason: collision with root package name */
    private final String f4371a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final Integer g;

    private ErrorEvent(Builder builder) {
        super(builder);
        this.f4371a = builder.f4372a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
    }

    public String getErrorExceptionClassName() {
        return this.f4371a;
    }

    public String getErrorMessage() {
        return this.b;
    }

    public String getErrorStackTrace() {
        return this.c;
    }

    public String getErrorFileName() {
        return this.d;
    }

    public String getErrorClassName() {
        return this.e;
    }

    public String getErrorMethodName() {
        return this.f;
    }

    public Integer getErrorLineNumber() {
        return this.g;
    }

    @Override // com.mopub.common.event.BaseEvent
    public String toString() {
        return super.toString() + "ErrorEvent\nErrorExceptionClassName: " + getErrorExceptionClassName() + "\nErrorMessage: " + getErrorMessage() + "\nErrorStackTrace: " + getErrorStackTrace() + "\nErrorFileName: " + getErrorFileName() + "\nErrorClassName: " + getErrorClassName() + "\nErrorMethodName: " + getErrorMethodName() + "\nErrorLineNumber: " + getErrorLineNumber() + "\n";
    }

    /* loaded from: classes3.dex */
    public static class Builder extends BaseEvent.Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f4372a;
        private String b;
        private String c;
        private String d;
        private String e;
        private String f;
        private Integer g;

        public Builder(BaseEvent.Name name, BaseEvent.Category category, double d) {
            super(BaseEvent.ScribeCategory.EXCHANGE_CLIENT_ERROR, name, category, d);
        }

        public Builder withErrorExceptionClassName(String str) {
            this.f4372a = str;
            return this;
        }

        public Builder withErrorMessage(String str) {
            this.b = str;
            return this;
        }

        public Builder withErrorStackTrace(String str) {
            this.c = str;
            return this;
        }

        public Builder withErrorFileName(String str) {
            this.d = str;
            return this;
        }

        public Builder withErrorClassName(String str) {
            this.e = str;
            return this;
        }

        public Builder withErrorMethodName(String str) {
            this.f = str;
            return this;
        }

        public Builder withErrorLineNumber(Integer num) {
            this.g = num;
            return this;
        }

        public Builder withException(Exception exc) {
            this.f4372a = exc.getClass().getName();
            this.b = exc.getMessage();
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            this.c = stringWriter.toString();
            if (exc.getStackTrace().length > 0) {
                this.d = exc.getStackTrace()[0].getFileName();
                this.e = exc.getStackTrace()[0].getClassName();
                this.f = exc.getStackTrace()[0].getMethodName();
                this.g = Integer.valueOf(exc.getStackTrace()[0].getLineNumber());
            }
            return this;
        }

        @Override // com.mopub.common.event.BaseEvent.Builder
        /* renamed from: build  reason: collision with other method in class */
        public ErrorEvent mo552build() {
            return new ErrorEvent(this);
        }
    }
}
