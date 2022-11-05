package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.util.v;
import com.mopub.common.AdType;
import com.pubmatic.sdk.common.CommonConstants;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface HttpDataSource extends e {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.exoplayer2.util.n<String> f3470a = new com.google.android.exoplayer2.util.n<String>() { // from class: com.google.android.exoplayer2.upstream.HttpDataSource.1
        @Override // com.google.android.exoplayer2.util.n
        public boolean a(String str) {
            String d = v.d(str);
            return !TextUtils.isEmpty(d) && (!d.contains(CommonConstants.RESPONSE_TEXT) || d.contains("text/vtt")) && !d.contains(AdType.HTML) && !d.contains("xml");
        }
    };

    /* loaded from: classes2.dex */
    public interface b extends e.a {
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f3472a = new HashMap();
        private Map<String, String> b;

        public synchronized Map<String, String> a() {
            if (this.b == null) {
                this.b = Collections.unmodifiableMap(new HashMap(this.f3472a));
            }
            return this.b;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final c f3471a = new c();

        protected abstract HttpDataSource b(c cVar);

        @Override // com.google.android.exoplayer2.upstream.e.a
        /* renamed from: b */
        public final HttpDataSource a() {
            return b(this.f3471a);
        }
    }

    /* loaded from: classes2.dex */
    public static class HttpDataSourceException extends IOException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final g dataSpec;
        public final int type;

        public HttpDataSourceException(g gVar, int i) {
            this.dataSpec = gVar;
            this.type = i;
        }

        public HttpDataSourceException(String str, g gVar, int i) {
            super(str);
            this.dataSpec = gVar;
            this.type = i;
        }

        public HttpDataSourceException(IOException iOException, g gVar, int i) {
            super(iOException);
            this.dataSpec = gVar;
            this.type = i;
        }

        public HttpDataSourceException(String str, IOException iOException, g gVar, int i) {
            super(str, iOException);
            this.dataSpec = gVar;
            this.type = i;
        }
    }

    /* loaded from: classes2.dex */
    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, g gVar) {
            super("Invalid content type: " + str, gVar, 1);
            this.contentType = str;
        }
    }

    /* loaded from: classes2.dex */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;

        public InvalidResponseCodeException(int i, Map<String, List<String>> map, g gVar) {
            super("Response code: " + i, gVar, 1);
            this.responseCode = i;
            this.headerFields = map;
        }
    }
}
