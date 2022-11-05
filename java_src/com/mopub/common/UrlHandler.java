package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.UrlResolutionTask;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class UrlHandler {

    /* renamed from: a  reason: collision with root package name */
    private static final ResultActions f4355a = new ResultActions() { // from class: com.mopub.common.UrlHandler.1
        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }
    };
    private static final MoPubSchemeListener b = new MoPubSchemeListener() { // from class: com.mopub.common.UrlHandler.2
        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }
    };
    private EnumSet<UrlAction> c;
    private ResultActions d;
    private MoPubSchemeListener e;
    private String f;
    private boolean g;
    private boolean h;
    private boolean i;

    /* loaded from: classes3.dex */
    public interface MoPubSchemeListener {
        void onClose();

        void onFailLoad();

        void onFinishLoad();
    }

    /* loaded from: classes3.dex */
    public interface ResultActions {
        void urlHandlingFailed(String str, UrlAction urlAction);

        void urlHandlingSucceeded(String str, UrlAction urlAction);
    }

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private EnumSet<UrlAction> f4357a = EnumSet.of(UrlAction.NOOP);
        private ResultActions b = UrlHandler.f4355a;
        private MoPubSchemeListener c = UrlHandler.b;
        private boolean d = false;
        private String e;

        public Builder withSupportedUrlActions(UrlAction urlAction, UrlAction... urlActionArr) {
            this.f4357a = EnumSet.of(urlAction, urlActionArr);
            return this;
        }

        public Builder withSupportedUrlActions(EnumSet<UrlAction> enumSet) {
            this.f4357a = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public Builder withResultActions(ResultActions resultActions) {
            this.b = resultActions;
            return this;
        }

        public Builder withMoPubSchemeListener(MoPubSchemeListener moPubSchemeListener) {
            this.c = moPubSchemeListener;
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.d = true;
            return this;
        }

        public Builder withDspCreativeId(String str) {
            this.e = str;
            return this;
        }

        public UrlHandler build() {
            return new UrlHandler(this.f4357a, this.b, this.c, this.d, this.e);
        }
    }

    private UrlHandler(EnumSet<UrlAction> enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str) {
        this.c = EnumSet.copyOf((EnumSet) enumSet);
        this.d = resultActions;
        this.e = moPubSchemeListener;
        this.g = z;
        this.f = str;
        this.h = false;
        this.i = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoPubSchemeListener a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.g;
    }

    public void handleUrl(Context context, String str) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, true);
    }

    public void handleUrl(Context context, String str, boolean z) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, z, null);
    }

    public void handleUrl(final Context context, final String str, final boolean z, final Iterable<String> iterable) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            a(str, null, "Attempted to handle empty url.", null);
            return;
        }
        UrlResolutionTask.getResolvedUrl(str, new UrlResolutionTask.a() { // from class: com.mopub.common.UrlHandler.3
            @Override // com.mopub.common.UrlResolutionTask.a
            public void onSuccess(String str2) {
                UrlHandler.this.i = false;
                UrlHandler.this.handleResolvedUrl(context, str2, z, iterable);
            }

            @Override // com.mopub.common.UrlResolutionTask.a
            public void onFailure(String str2, Throwable th) {
                UrlHandler.this.i = false;
                UrlHandler.this.a(str, null, str2, th);
            }
        });
        this.i = true;
    }

    public boolean handleResolvedUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        if (TextUtils.isEmpty(str)) {
            a(str, null, "Attempted to handle empty url.", null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(str);
        Iterator it = this.c.iterator();
        while (true) {
            UrlAction urlAction2 = urlAction;
            if (it.hasNext()) {
                urlAction = (UrlAction) it.next();
                if (urlAction.shouldTryHandlingUrl(parse)) {
                    try {
                        urlAction.handleUrl(this, context, parse, z, this.f);
                        if (this.h || this.i || UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction) || UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction)) {
                            break;
                        }
                        TrackingRequest.makeTrackingHttpRequest(iterable, context, BaseEvent.Name.CLICK_REQUEST);
                        this.d.urlHandlingSucceeded(parse.toString(), urlAction);
                        this.h = true;
                        break;
                    } catch (IntentNotResolvableException e) {
                        MoPubLog.d(e.getMessage(), e);
                    }
                } else {
                    urlAction = urlAction2;
                }
            } else {
                a(str, urlAction2, "Link ignored. Unable to handle url: " + str, null);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, UrlAction urlAction, String str2, Throwable th) {
        Preconditions.checkNotNull(str2);
        if (urlAction == null) {
            urlAction = UrlAction.NOOP;
        }
        MoPubLog.d(str2, th);
        this.d.urlHandlingFailed(str, urlAction);
    }
}
