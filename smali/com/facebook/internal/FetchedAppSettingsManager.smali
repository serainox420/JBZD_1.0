.class public final Lcom/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_APP_EVENTS_FEATURE_BITMASK:Ljava/lang/String; = "app_events_feature_bitmask"

.field private static final APP_SETTING_APP_EVENTS_SESSION_TIMEOUT:Ljava/lang/String; = "app_events_session_timeout"

.field private static final APP_SETTING_CUSTOM_TABS_ENABLED:Ljava/lang/String; = "gdpv4_chrome_custom_tabs_enabled"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_SMART_LOGIN_OPTIONS:Ljava/lang/String; = "seamless_login"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x8

.field private static final SMART_LOGIN_BOOKMARK_ICON_URL:Ljava/lang/String; = "smart_login_bookmark_icon_url"

.field private static final SMART_LOGIN_MENU_ICON_URL:Ljava/lang/String; = "smart_login_menu_icon_url"

.field private static fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gdpv4_chrome_custom_tabs_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "app_events_session_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_events_feature_bitmask"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "seamless_login"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "smart_login_bookmark_icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "smart_login_menu_icon_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v1, "fields"

    const-string v2, ","

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {v4, p0, v4}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 204
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 205
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1

    .prologue
    .line 141
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadAppSettingsAsync()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    .line 94
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 95
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v2, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/facebook/internal/FetchedAppSettingsManager$1;

    invoke-direct {v4, v0, v2, v1}, Lcom/facebook/internal/FetchedAppSettingsManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 165
    const-string v0, "android_sdk_error_categories"

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v9

    .line 173
    :goto_0
    const-string v0, "app_events_feature_bitmask"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 176
    :goto_1
    new-instance v0, Lcom/facebook/internal/FetchedAppSettings;

    const-string v1, "supports_implicit_sdk_logging"

    .line 177
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "gdpv4_nux_content"

    const-string v3, ""

    .line 178
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gdpv4_nux_enabled"

    .line 179
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "gdpv4_chrome_custom_tabs_enabled"

    .line 180
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "app_events_session_timeout"

    .line 183
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v6

    .line 181
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "seamless_login"

    .line 184
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/internal/SmartLoginOption;->parseOptions(J)Ljava/util/EnumSet;

    move-result-object v6

    const-string v7, "android_dialog_configs"

    .line 185
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    const-string v10, "smart_login_bookmark_icon_url"

    .line 188
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "smart_login_menu_icon_url"

    .line 189
    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/facebook/internal/FetchedAppSettings;-><init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-object v0

    .line 170
    :cond_0
    invoke-static {v0}, Lcom/facebook/internal/FacebookRequestErrorClassification;->createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v9

    goto :goto_0

    :cond_1
    move v8, v4

    .line 174
    goto :goto_1
.end method

.method private static parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 215
    if-eqz p0, :cond_2

    .line 216
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 217
    if-eqz v3, :cond_2

    .line 218
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 221
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v4

    .line 222
    if-nez v4, :cond_0

    .line 218
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 229
    if-nez v0, :cond_1

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 238
    :cond_2
    return-object v2
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1

    .prologue
    .line 150
    if-nez p1, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    .line 159
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    if-nez v0, :cond_1

    .line 156
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    goto :goto_0
.end method
