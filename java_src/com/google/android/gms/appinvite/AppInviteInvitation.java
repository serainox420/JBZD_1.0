package com.google.android.gms.appinvite;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.common.util.UriUtil;
import com.google.android.gms.common.internal.zzac;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;
/* loaded from: classes.dex */
public final class AppInviteInvitation {
    private static final String[] zzaif = {"jpg", "jpeg", "png"};

    /* loaded from: classes.dex */
    public static final class IntentBuilder {
        public static final int MAX_CALL_TO_ACTION_TEXT_LENGTH = 20;
        public static final int MAX_EMAIL_HTML_CONTENT = 512000;
        public static final int MAX_MESSAGE_LENGTH = 100;
        public static final int MIN_CALL_TO_ACTION_TEXT_LENGTH = 2;
        private final Intent mIntent;
        private String zzaig;
        private String zzaih;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface PlatformMode {
            public static final int PROJECT_PLATFORM_ANDROID = 2;
            public static final int PROJECT_PLATFORM_IOS = 1;
        }

        public IntentBuilder(CharSequence charSequence) {
            zzac.zzw(charSequence);
            this.mIntent = new Intent("com.google.android.gms.appinvite.ACTION_APP_INVITE");
            this.mIntent.putExtra("com.google.android.gms.appinvite.TITLE", charSequence);
            this.mIntent.setPackage("com.google.android.gms");
        }

        public Intent build() {
            if (!TextUtils.isEmpty(this.zzaig)) {
                zzac.zzh(this.zzaih, "Email html content must be set when email subject is set.");
                zzac.zzb(this.mIntent.getData() == null, "Custom image must not be set when email html content is set.");
                zzac.zzb(TextUtils.isEmpty(this.mIntent.getCharSequenceExtra("com.google.android.gms.appinvite.BUTTON_TEXT")), "Call to action text must not be set when email html content is set.");
                this.mIntent.putExtra("com.google.android.gms.appinvite.EMAIL_SUBJECT", this.zzaig);
                this.mIntent.putExtra("com.google.android.gms.appinvite.EMAIL_CONTENT", this.zzaih);
            } else if (!TextUtils.isEmpty(this.zzaih)) {
                throw new IllegalArgumentException("Email subject must be set when email html content is set.");
            }
            return this.mIntent;
        }

        public IntentBuilder setAccount(Account account) {
            if (account == null || !"com.google".equals(account.type)) {
                this.mIntent.removeExtra("com.google.android.gms.appinvite.ACCOUNT_NAME");
            } else {
                this.mIntent.putExtra("com.google.android.gms.appinvite.ACCOUNT_NAME", account);
            }
            return this;
        }

        public IntentBuilder setAdditionalReferralParameters(Map<String, String> map) {
            if (map != null) {
                this.mIntent.putExtra("com.google.android.gms.appinvite.REFERRAL_PARAMETERS_URI", AppInviteInvitation.zzU(map));
            } else {
                this.mIntent.removeExtra("com.google.android.gms.appinvite.REFERRAL_PARAMETERS_URI");
            }
            return this;
        }

        public IntentBuilder setAndroidMinimumVersionCode(int i) {
            this.mIntent.putExtra("com.google.android.gms.appinvite.appMinimumVersionCode", i);
            return this;
        }

        public IntentBuilder setCallToActionText(CharSequence charSequence) {
            if (charSequence == null || charSequence.length() < 2 || charSequence.length() > 20) {
                throw new IllegalArgumentException(String.format("Text must be between %d and %d chars in length.", 2, 20));
            }
            this.mIntent.putExtra("com.google.android.gms.appinvite.BUTTON_TEXT", charSequence);
            return this;
        }

        public IntentBuilder setCustomImage(Uri uri) {
            boolean z = false;
            zzac.zzw(uri);
            zzac.zzb(uri.isAbsolute(), "Image uri is not an absolute uri. Did you forget to add a scheme to the Uri?");
            String lowerCase = uri.getScheme().toLowerCase();
            boolean z2 = lowerCase.equals("android.resource") || lowerCase.equals("content") || lowerCase.equals(UriUtil.LOCAL_FILE_SCHEME);
            zzac.zzb(z2 || lowerCase.equals("http") || lowerCase.equals("https"), "Image uri must be a content URI with scheme \"android.resource\", \"content\" or \"file\", or a network url with scheme \"http\" or \"https\".");
            if (!z2) {
                String uri2 = uri.toString();
                String substring = uri2.substring(uri2.lastIndexOf("/") + 1, uri2.length());
                String lowerCase2 = substring == null ? null : substring.lastIndexOf(".") == -1 ? null : substring.substring(substring.lastIndexOf(".") + 1, substring.length()).toLowerCase();
                if (TextUtils.isEmpty(lowerCase2) || AppInviteInvitation.zzcq(lowerCase2)) {
                    z = true;
                }
                zzac.zzb(z, String.valueOf(lowerCase2).concat(" images are not supported. Only jpg, jpeg, or png images are supported."));
            }
            this.mIntent.setData(uri.buildUpon().scheme(lowerCase).build());
            if (z2) {
                this.mIntent.addFlags(1);
            }
            return this;
        }

        public IntentBuilder setDeepLink(Uri uri) {
            if (uri != null) {
                this.mIntent.putExtra("com.google.android.gms.appinvite.DEEP_LINK_URL", uri);
            } else {
                this.mIntent.removeExtra("com.google.android.gms.appinvite.DEEP_LINK_URL");
            }
            return this;
        }

        public IntentBuilder setEmailHtmlContent(String str) {
            if (str == null || str.getBytes().length <= 512000) {
                this.zzaih = str;
                return this;
            }
            throw new IllegalArgumentException(String.format("Email html content must be %d bytes or less.", Integer.valueOf((int) MAX_EMAIL_HTML_CONTENT)));
        }

        public IntentBuilder setEmailSubject(String str) {
            this.zzaig = str;
            return this;
        }

        public IntentBuilder setGoogleAnalyticsTrackingId(String str) {
            this.mIntent.putExtra("com.google.android.gms.appinvite.GOOGLE_ANALYTICS_TRACKING_ID", str);
            return this;
        }

        public IntentBuilder setMessage(CharSequence charSequence) {
            if (charSequence == null || charSequence.length() <= 100) {
                this.mIntent.putExtra("com.google.android.gms.appinvite.MESSAGE", charSequence);
                return this;
            }
            throw new IllegalArgumentException(String.format("Message must be %d chars or less.", 100));
        }

        public IntentBuilder setOtherPlatformsTargetApplication(int i, String str) throws IllegalArgumentException {
            switch (i) {
                case 1:
                    this.mIntent.putExtra("com.google.android.gms.appinvite.iosTargetApplication", str);
                    break;
                case 2:
                    this.mIntent.putExtra("com.google.android.gms.appinvite.androidTargetApplication", str);
                    break;
                default:
                    throw new IllegalArgumentException("targetPlatform must be either PROJECT_PLATFORM_IOS or PROJECT_PLATFORM_ANDROID.");
            }
            return this;
        }
    }

    private AppInviteInvitation() {
    }

    public static String[] getInvitationIds(int i, Intent intent) {
        if (i == -1) {
            return intent.getStringArrayExtra("com.google.android.gms.appinvite.RESULT_INVITATION_IDS");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle zzU(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            bundle.putString(str, map.get(str));
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzcq(String str) {
        for (int i = 0; i < zzaif.length; i++) {
            if (zzaif[i].equals(str)) {
                return true;
            }
        }
        return false;
    }
}
