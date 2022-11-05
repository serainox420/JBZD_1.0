package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class FetchedAppSettings {
    private boolean automaticLoggingEnabled;
    private boolean customTabsEnabled;
    private Map<String, Map<String, DialogFeatureConfig>> dialogConfigMap;
    private FacebookRequestErrorClassification errorClassification;
    private String nuxContent;
    private boolean nuxEnabled;
    private int sessionTimeoutInSeconds;
    private String smartLoginBookmarkIconURL;
    private String smartLoginMenuIconURL;
    private EnumSet<SmartLoginOption> smartLoginOptions;
    private boolean supportsImplicitLogging;

    public FetchedAppSettings(boolean z, String str, boolean z2, boolean z3, int i, EnumSet<SmartLoginOption> enumSet, Map<String, Map<String, DialogFeatureConfig>> map, boolean z4, FacebookRequestErrorClassification facebookRequestErrorClassification, String str2, String str3) {
        this.supportsImplicitLogging = z;
        this.nuxContent = str;
        this.nuxEnabled = z2;
        this.customTabsEnabled = z3;
        this.dialogConfigMap = map;
        this.errorClassification = facebookRequestErrorClassification;
        this.sessionTimeoutInSeconds = i;
        this.automaticLoggingEnabled = z4;
        this.smartLoginOptions = enumSet;
        this.smartLoginBookmarkIconURL = str2;
        this.smartLoginMenuIconURL = str3;
    }

    public boolean supportsImplicitLogging() {
        return this.supportsImplicitLogging;
    }

    public String getNuxContent() {
        return this.nuxContent;
    }

    public boolean getNuxEnabled() {
        return this.nuxEnabled;
    }

    public boolean getCustomTabsEnabled() {
        return this.customTabsEnabled;
    }

    public int getSessionTimeoutInSeconds() {
        return this.sessionTimeoutInSeconds;
    }

    public boolean getAutomaticLoggingEnabled() {
        return this.automaticLoggingEnabled;
    }

    public EnumSet<SmartLoginOption> getSmartLoginOptions() {
        return this.smartLoginOptions;
    }

    public Map<String, Map<String, DialogFeatureConfig>> getDialogConfigurations() {
        return this.dialogConfigMap;
    }

    public FacebookRequestErrorClassification getErrorClassification() {
        return this.errorClassification;
    }

    public String getSmartLoginBookmarkIconURL() {
        return this.smartLoginBookmarkIconURL;
    }

    public String getSmartLoginMenuIconURL() {
        return this.smartLoginMenuIconURL;
    }

    /* loaded from: classes.dex */
    public static class DialogFeatureConfig {
        private static final String DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR = "\\|";
        private static final String DIALOG_CONFIG_NAME_KEY = "name";
        private static final String DIALOG_CONFIG_URL_KEY = "url";
        private static final String DIALOG_CONFIG_VERSIONS_KEY = "versions";
        private String dialogName;
        private Uri fallbackUrl;
        private String featureName;
        private int[] featureVersionSpec;

        public static DialogFeatureConfig parseDialogConfig(JSONObject jSONObject) {
            Uri uri = null;
            String optString = jSONObject.optString("name");
            if (Utility.isNullOrEmpty(optString)) {
                return null;
            }
            String[] split = optString.split(DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR);
            if (split.length != 2) {
                return null;
            }
            String str = split[0];
            String str2 = split[1];
            if (Utility.isNullOrEmpty(str) || Utility.isNullOrEmpty(str2)) {
                return null;
            }
            String optString2 = jSONObject.optString("url");
            if (!Utility.isNullOrEmpty(optString2)) {
                uri = Uri.parse(optString2);
            }
            return new DialogFeatureConfig(str, str2, uri, parseVersionSpec(jSONObject.optJSONArray(DIALOG_CONFIG_VERSIONS_KEY)));
        }

        private static int[] parseVersionSpec(JSONArray jSONArray) {
            if (jSONArray == null) {
                return null;
            }
            int length = jSONArray.length();
            int[] iArr = new int[length];
            for (int i = 0; i < length; i++) {
                int optInt = jSONArray.optInt(i, -1);
                if (optInt == -1) {
                    String optString = jSONArray.optString(i);
                    if (!Utility.isNullOrEmpty(optString)) {
                        try {
                            optInt = Integer.parseInt(optString);
                        } catch (NumberFormatException e) {
                            Utility.logd("FacebookSDK", e);
                            optInt = -1;
                        }
                    }
                }
                iArr[i] = optInt;
            }
            return iArr;
        }

        private DialogFeatureConfig(String str, String str2, Uri uri, int[] iArr) {
            this.dialogName = str;
            this.featureName = str2;
            this.fallbackUrl = uri;
            this.featureVersionSpec = iArr;
        }

        public String getDialogName() {
            return this.dialogName;
        }

        public String getFeatureName() {
            return this.featureName;
        }

        public Uri getFallbackUrl() {
            return this.fallbackUrl;
        }

        public int[] getVersionSpec() {
            return this.featureVersionSpec;
        }
    }

    public static DialogFeatureConfig getDialogFeatureConfig(String str, String str2, String str3) {
        Map<String, DialogFeatureConfig> map;
        if (Utility.isNullOrEmpty(str2) || Utility.isNullOrEmpty(str3)) {
            return null;
        }
        FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(str);
        if (appSettingsWithoutQuery != null && (map = appSettingsWithoutQuery.getDialogConfigurations().get(str2)) != null) {
            return map.get(str3);
        }
        return null;
    }
}
