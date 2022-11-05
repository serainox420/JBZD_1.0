package retrofit2;

import com.flurry.android.Constants;
import java.io.IOException;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.c;
import okio.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class RequestBuilder {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final String PATH_SEGMENT_ALWAYS_ENCODE_SET = " \"<>^`{}|\\?#";
    private final HttpUrl baseUrl;
    private RequestBody body;
    private MediaType contentType;
    private FormBody.Builder formBuilder;
    private final boolean hasBody;
    private final String method;
    private MultipartBody.Builder multipartBuilder;
    private String relativeUrl;
    private final Request.Builder requestBuilder = new Request.Builder();
    private HttpUrl.Builder urlBuilder;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestBuilder(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.method = str;
        this.baseUrl = httpUrl;
        this.relativeUrl = str2;
        this.contentType = mediaType;
        this.hasBody = z;
        if (headers != null) {
            this.requestBuilder.headers(headers);
        }
        if (z2) {
            this.formBuilder = new FormBody.Builder();
        } else if (z3) {
            this.multipartBuilder = new MultipartBody.Builder();
            this.multipartBuilder.setType(MultipartBody.FORM);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRelativeUrl(Object obj) {
        if (obj == null) {
            throw new NullPointerException("@Url parameter is null.");
        }
        this.relativeUrl = obj.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addHeader(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            MediaType parse = MediaType.parse(str2);
            if (parse == null) {
                throw new IllegalArgumentException("Malformed content type: " + str2);
            }
            this.contentType = parse;
            return;
        }
        this.requestBuilder.addHeader(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPathParam(String str, String str2, boolean z) {
        if (this.relativeUrl == null) {
            throw new AssertionError();
        }
        this.relativeUrl = this.relativeUrl.replace("{" + str + "}", canonicalizeForPath(str2, z));
    }

    private static String canonicalizeForPath(String str, boolean z) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt >= 32 && codePointAt < 127 && PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(codePointAt) == -1 && (z || (codePointAt != 47 && codePointAt != 37))) {
                i += Character.charCount(codePointAt);
            } else {
                c cVar = new c();
                cVar.a(str, 0, i);
                canonicalizeForPath(cVar, str, i, length, z);
                return cVar.q();
            }
        }
        return str;
    }

    private static void canonicalizeForPath(c cVar, String str, int i, int i2, boolean z) {
        c cVar2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt < 32 || codePointAt >= 127 || PATH_SEGMENT_ALWAYS_ENCODE_SET.indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                    if (cVar2 == null) {
                        cVar2 = new c();
                    }
                    cVar2.a(codePointAt);
                    while (!cVar2.e()) {
                        int h = cVar2.h() & Constants.UNKNOWN;
                        cVar.i(37);
                        cVar.i((int) HEX_DIGITS[(h >> 4) & 15]);
                        cVar.i((int) HEX_DIGITS[h & 15]);
                    }
                } else {
                    cVar.a(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addQueryParam(String str, String str2, boolean z) {
        if (this.relativeUrl != null) {
            this.urlBuilder = this.baseUrl.newBuilder(this.relativeUrl);
            if (this.urlBuilder == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
            this.relativeUrl = null;
        }
        if (z) {
            this.urlBuilder.addEncodedQueryParameter(str, str2);
        } else {
            this.urlBuilder.addQueryParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addFormField(String str, String str2, boolean z) {
        if (z) {
            this.formBuilder.addEncoded(str, str2);
        } else {
            this.formBuilder.add(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPart(Headers headers, RequestBody requestBody) {
        this.multipartBuilder.addPart(headers, requestBody);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPart(MultipartBody.Part part) {
        this.multipartBuilder.addPart(part);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBody(RequestBody requestBody) {
        this.body = requestBody;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request build() {
        HttpUrl resolve;
        HttpUrl.Builder builder = this.urlBuilder;
        if (builder != null) {
            resolve = builder.build();
        } else {
            resolve = this.baseUrl.resolve(this.relativeUrl);
            if (resolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.baseUrl + ", Relative: " + this.relativeUrl);
            }
        }
        ContentTypeOverridingRequestBody contentTypeOverridingRequestBody = this.body;
        if (contentTypeOverridingRequestBody == null) {
            if (this.formBuilder != null) {
                contentTypeOverridingRequestBody = this.formBuilder.build();
            } else if (this.multipartBuilder != null) {
                contentTypeOverridingRequestBody = this.multipartBuilder.build();
            } else if (this.hasBody) {
                contentTypeOverridingRequestBody = RequestBody.create((MediaType) null, new byte[0]);
            }
        }
        MediaType mediaType = this.contentType;
        if (mediaType != null) {
            if (contentTypeOverridingRequestBody != null) {
                contentTypeOverridingRequestBody = new ContentTypeOverridingRequestBody(contentTypeOverridingRequestBody, mediaType);
            } else {
                this.requestBuilder.addHeader("Content-Type", mediaType.toString());
            }
        }
        return this.requestBuilder.url(resolve).method(this.method, contentTypeOverridingRequestBody).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ContentTypeOverridingRequestBody extends RequestBody {
        private final MediaType contentType;
        private final RequestBody delegate;

        ContentTypeOverridingRequestBody(RequestBody requestBody, MediaType mediaType) {
            this.delegate = requestBody;
            this.contentType = mediaType;
        }

        @Override // okhttp3.RequestBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.RequestBody
        public void writeTo(d dVar) throws IOException {
            this.delegate.writeTo(dVar);
        }
    }
}
