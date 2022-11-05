package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import java.util.Map;
/* loaded from: classes3.dex */
public class NativeRendererHelper {
    public static void addTextView(TextView textView, String str) {
        if (textView == null) {
            MoPubLog.d("Attempted to add text (" + str + ") to null TextView.");
            return;
        }
        textView.setText((CharSequence) null);
        if (str == null) {
            MoPubLog.d("Attempted to set TextView contents to null.");
        } else {
            textView.setText(str);
        }
    }

    public static void addPrivacyInformationIcon(ImageView imageView, String str, final String str2) {
        if (imageView != null) {
            if (str2 == null) {
                imageView.setImageDrawable(null);
                imageView.setOnClickListener(null);
                imageView.setVisibility(4);
                return;
            }
            final Context context = imageView.getContext();
            if (context != null) {
                if (str == null) {
                    imageView.setImageDrawable(Drawables.NATIVE_PRIVACY_INFORMATION_ICON.createDrawable(context));
                } else {
                    NativeImageHelper.loadImageView(str, imageView);
                }
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.nativeads.NativeRendererHelper.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(context, str2);
                    }
                });
                imageView.setVisibility(0);
            }
        }
    }

    public static void addCtaButton(TextView textView, final View view, String str) {
        addTextView(textView, str);
        if (textView != null && view != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.nativeads.NativeRendererHelper.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    view.performClick();
                }
            });
        }
    }

    public static void updateExtras(View view, Map<String, Integer> map, Map<String, Object> map2) {
        if (view == null) {
            MoPubLog.w("Attempted to bind extras on a null main view.");
            return;
        }
        for (String str : map.keySet()) {
            View findViewById = view.findViewById(map.get(str).intValue());
            Object obj = map2.get(str);
            if (findViewById instanceof ImageView) {
                ((ImageView) findViewById).setImageDrawable(null);
                Object obj2 = map2.get(str);
                if (obj2 != null && (obj2 instanceof String)) {
                    NativeImageHelper.loadImageView((String) obj2, (ImageView) findViewById);
                }
            } else if (findViewById instanceof TextView) {
                ((TextView) findViewById).setText((CharSequence) null);
                if (obj instanceof String) {
                    addTextView((TextView) findViewById, (String) obj);
                }
            } else {
                MoPubLog.d("View bound to " + str + " should be an instance of TextView or ImageView.");
            }
        }
    }
}
