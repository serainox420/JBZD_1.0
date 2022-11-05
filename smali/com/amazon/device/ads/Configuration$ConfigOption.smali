.class public Lcom/amazon/device/ads/Configuration$ConfigOption;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigOption"
.end annotation


# static fields
.field public static final AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final AD_RESOURCE_PATH:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final BASE_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final IDENTIFY_USER_SESSION_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final VIEWABLE_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

.field public static final configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;


# instance fields
.field private final allowEmpty:Z

.field private final dataType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final responseKey:Ljava/lang/String;

.field private final settingsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-aaxHostname"

    const-class v2, Ljava/lang/String;

    const-string v3, "aaxHostname"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 72
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-adResourcePath"

    const-class v2, Ljava/lang/String;

    const-string v3, "adResourcePath"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_RESOURCE_PATH:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 74
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-sisURL"

    const-class v2, Ljava/lang/String;

    const-string v3, "sisURL"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 76
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-adPrefURL"

    const-class v2, Ljava/lang/String;

    const-string v3, "adPrefURL"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 78
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-madsHostname"

    const-class v2, Ljava/lang/String;

    const-string v3, "madsHostname"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 80
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-sisDomain"

    const-class v2, Ljava/lang/String;

    const-string v3, "sisDomain"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 82
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-sendGeo"

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "sendGeo"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 84
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-truncateLatLon"

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "truncateLatLon"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 86
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-whitelistedCustomer"

    const-class v2, Ljava/lang/Boolean;

    const-string v3, "whitelistedCustomer"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 88
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-identifyUserInterval"

    const-class v2, Ljava/lang/Long;

    const-string v3, "identifyUserInterval"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 90
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-identifyUserSessionIdInterval"

    const-class v2, Ljava/lang/Long;

    const-string v3, "identifyUserSessionIdInterval"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_SESSION_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 92
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-viewableJavascriptCDNURL"

    const-class v2, Ljava/lang/String;

    const-string v3, "viewableJavascriptCDNURL"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 94
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-viewableJSVersionConfig"

    const-class v2, Ljava/lang/Integer;

    const-string v3, "viewableJSVersion"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 96
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-viewableInterval"

    const-class v2, Ljava/lang/Long;

    const-string v3, "viewableInterval"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 98
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-debugProperties"

    const-class v2, Lorg/json/JSONObject;

    const-string v3, "debugProperties"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 100
    new-instance v0, Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "config-baseURL"

    const-class v2, Ljava/lang/String;

    const-string v3, "baseURL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->BASE_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    .line 102
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->AAX_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_RESOURCE_PATH:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->AD_PREF_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_SESSION_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->BASE_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/device/ads/Configuration$ConfigOption;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 135
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->settingsName:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->responseKey:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->dataType:Ljava/lang/Class;

    .line 141
    iput-boolean p4, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->allowEmpty:Z

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getSettingsName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->settingsName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getAllowEmpty()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->allowEmpty:Z

    return v0
.end method

.method getDataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->dataType:Ljava/lang/Class;

    return-object v0
.end method

.method getResponseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration$ConfigOption;->responseKey:Ljava/lang/String;

    return-object v0
.end method
