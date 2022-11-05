package com.loopme.common;

import android.text.TextUtils;
import com.loopme.debugging.ErrorLog;
import com.loopme.debugging.ErrorType;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class AdParams {
    private static final String LOG_TAG = AdParams.class.getSimpleName();
    private final int mExpiredDate;
    private final String mFormat;
    private final String mHtml;
    private final String mOrientation;
    private List<String> mPackageIds;
    private boolean mPartPreload;
    private String mToken;
    private boolean mVideo360;

    private AdParams(AdParamsBuilder adParamsBuilder) {
        this.mPackageIds = new ArrayList();
        this.mFormat = adParamsBuilder.mBuilderFormat;
        this.mHtml = adParamsBuilder.mBuilderHtml;
        this.mOrientation = adParamsBuilder.mBuilderOrientation;
        this.mExpiredDate = adParamsBuilder.mBuilderExpiredDate == 0 ? 600000 : adParamsBuilder.mBuilderExpiredDate;
        this.mPackageIds = adParamsBuilder.mPackageIds;
        this.mToken = adParamsBuilder.mToken;
        this.mPartPreload = adParamsBuilder.mPartPreload;
        this.mVideo360 = adParamsBuilder.mVideo360;
        Logging.out(LOG_TAG, "Server response indicates  ad params: format: " + this.mFormat + ", orientation: " + this.mOrientation + ", expire in: " + this.mExpiredDate);
    }

    public boolean getPartPreload() {
        return this.mPartPreload;
    }

    public boolean isVideo360() {
        return this.mVideo360;
    }

    public String getHtml() {
        return this.mHtml;
    }

    public String getAdFormat() {
        return this.mFormat;
    }

    public String getAdOrientation() {
        return this.mOrientation;
    }

    public int getExpiredTime() {
        return this.mExpiredDate;
    }

    public List<String> getPackageIds() {
        return this.mPackageIds;
    }

    public String getToken() {
        return this.mToken;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class AdParamsBuilder {
        private int mBuilderExpiredDate;
        private final String mBuilderFormat;
        private String mBuilderHtml;
        private String mBuilderOrientation;
        private List<String> mPackageIds = new ArrayList();
        private boolean mPartPreload;
        private String mToken;
        private boolean mVideo360;

        public AdParamsBuilder(String str) {
            this.mBuilderFormat = str;
        }

        public AdParamsBuilder packageIds(List<String> list) {
            this.mPackageIds = list;
            return this;
        }

        public AdParamsBuilder partPreload(boolean z) {
            this.mPartPreload = z;
            return this;
        }

        public AdParamsBuilder video360(boolean z) {
            this.mVideo360 = z;
            return this;
        }

        public AdParamsBuilder token(String str) {
            this.mToken = str;
            return this;
        }

        public AdParamsBuilder html(String str) {
            if (TextUtils.isEmpty(str)) {
                ErrorLog.post("Broken response [empty html]", ErrorType.SERVER);
            }
            this.mBuilderHtml = str;
            return this;
        }

        public AdParamsBuilder orientation(String str) {
            if (isValidOrientationValue(str)) {
                this.mBuilderOrientation = str;
            } else if (!TextUtils.isEmpty(this.mBuilderFormat) && this.mBuilderFormat.equalsIgnoreCase("interstitial")) {
                ErrorLog.post("Broken response [invalid orientation: " + str + "]", ErrorType.SERVER);
            }
            return this;
        }

        public AdParamsBuilder expiredTime(int i) {
            this.mBuilderExpiredDate = Math.max(600000, i * 1000);
            return this;
        }

        public AdParams build() {
            if (!isValidFormatValue()) {
                Logging.out(AdParams.LOG_TAG, "Wrong ad format value");
                return null;
            }
            return new AdParams(this);
        }

        private boolean isValidFormatValue() {
            if (this.mBuilderFormat == null) {
                return false;
            }
            return this.mBuilderFormat.equalsIgnoreCase("banner") || this.mBuilderFormat.equalsIgnoreCase("interstitial");
        }

        private boolean isValidOrientationValue(String str) {
            if (str == null) {
                return false;
            }
            return str.equalsIgnoreCase("portrait") || str.equalsIgnoreCase("landscape");
        }
    }
}
