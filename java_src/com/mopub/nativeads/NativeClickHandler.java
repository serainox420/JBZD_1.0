package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
/* loaded from: classes3.dex */
public class NativeClickHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4610a;
    private final String b;
    private boolean c;

    public NativeClickHandler(Context context) {
        this(context, null);
    }

    public NativeClickHandler(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f4610a = context.getApplicationContext();
        this.b = str;
    }

    public void setOnClickListener(View view, final ClickInterface clickInterface) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot set click listener on a null view") && Preconditions.NoThrow.checkNotNull(clickInterface, "Cannot set click listener with a null ClickInterface")) {
            a(view, new View.OnClickListener() { // from class: com.mopub.nativeads.NativeClickHandler.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    clickInterface.handleClick(view2);
                }
            });
        }
    }

    private void a(View view, View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    public void clearOnClickListener(View view) {
        if (Preconditions.NoThrow.checkNotNull(view, "Cannot clear click listener from a null view")) {
            a(view, (View.OnClickListener) null);
        }
    }

    public void openClickDestinationUrl(String str, View view) {
        a(str, view, new i(this.f4610a));
    }

    @VisibleForTesting
    void a(String str, final View view, final i iVar) {
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot open a null click destination url")) {
            Preconditions.checkNotNull(iVar);
            if (!this.c) {
                this.c = true;
                if (view != null) {
                    iVar.a(view);
                }
                UrlHandler.Builder builder = new UrlHandler.Builder();
                if (!TextUtils.isEmpty(this.b)) {
                    builder.withDspCreativeId(this.b);
                }
                builder.withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.nativeads.NativeClickHandler.2
                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public void urlHandlingSucceeded(String str2, UrlAction urlAction) {
                        a();
                        NativeClickHandler.this.c = false;
                    }

                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public void urlHandlingFailed(String str2, UrlAction urlAction) {
                        a();
                        NativeClickHandler.this.c = false;
                    }

                    private void a() {
                        if (view != null) {
                            iVar.a();
                        }
                    }
                }).build().handleUrl(this.f4610a, str);
            }
        }
    }
}
