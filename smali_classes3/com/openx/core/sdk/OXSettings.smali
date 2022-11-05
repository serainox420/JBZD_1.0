.class public Lcom/openx/core/sdk/OXSettings;
.super Ljava/lang/Object;
.source "OXSettings.java"


# static fields
.field public static ADID:Ljava/lang/String; = null

.field public static CALENDAR:I = 0x0

.field public static EMAIL:I = 0x0

.field public static INLINE_VIDEO:I = 0x0

.field public static SDK_VERSION:Ljava/lang/String; = null

.field public static SMS:I = 0x0

.field public static STORE_PICTURE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OXSettings"

.field public static TEL:I

.field private static appName:Ljava/lang/String;

.field private static classesToCheck:[Ljava/lang/String;

.field private static initListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/common/deviceData/listeners/SDKInitListener;",
            ">;"
        }
    .end annotation
.end field

.field public static isLimitAdTrackingEnabled:Z

.field public static isSDKInit:Z

.field private static jarName:[Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field private static tpjarListString:Ljava/lang/String;

.field public static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 27
    sput v5, Lcom/openx/core/sdk/OXSettings;->SMS:I

    .line 28
    sput v6, Lcom/openx/core/sdk/OXSettings;->TEL:I

    .line 29
    sput v7, Lcom/openx/core/sdk/OXSettings;->EMAIL:I

    .line 30
    const/16 v0, 0x8

    sput v0, Lcom/openx/core/sdk/OXSettings;->CALENDAR:I

    .line 31
    const/16 v0, 0x10

    sput v0, Lcom/openx/core/sdk/OXSettings;->STORE_PICTURE:I

    .line 32
    const/16 v0, 0x20

    sput v0, Lcom/openx/core/sdk/OXSettings;->INLINE_VIDEO:I

    .line 34
    const-string v0, "3.2.5"

    sput-object v0, Lcom/openx/core/sdk/OXSettings;->SDK_VERSION:Ljava/lang/String;

    .line 36
    sput-object v3, Lcom/openx/core/sdk/OXSettings;->ADID:Ljava/lang/String;

    .line 37
    sput-boolean v4, Lcom/openx/core/sdk/OXSettings;->isLimitAdTrackingEnabled:Z

    .line 38
    sput-boolean v4, Lcom/openx/core/sdk/OXSettings;->isSDKInit:Z

    .line 40
    sput-object v3, Lcom/openx/core/sdk/OXSettings;->initListeners:Ljava/util/ArrayList;

    .line 44
    sput-object v3, Lcom/openx/core/sdk/OXSettings;->packageName:Ljava/lang/String;

    .line 45
    sput-object v3, Lcom/openx/core/sdk/OXSettings;->appName:Ljava/lang/String;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.millennialmedia.android.MMAdView"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gms.ads.AdView"

    aput-object v1, v0, v5

    const-string v1, "com.mopub.mobileads.MoPubView"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "com.jirbo.adcolony.AdColonyAd"

    aput-object v2, v0, v1

    const-string v1, "com.inmobi.monetization.IMBanner"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.facebook.ads.AdView"

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/core/sdk/OXSettings;->classesToCheck:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MMSDK"

    aput-object v1, v0, v4

    const-string v1, "AdMob"

    aput-object v1, v0, v5

    const-string v1, "Mopub"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "AdColony"

    aput-object v2, v0, v1

    const-string v1, "InMobi"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FaceBook"

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/core/sdk/OXSettings;->jarName:[Ljava/lang/String;

    .line 50
    sput-object v3, Lcom/openx/core/sdk/OXSettings;->tpjarListString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->initListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0}, Lcom/openx/core/sdk/OXSettings;->initUserAgent(Landroid/content/Context;)V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 164
    :cond_0
    const-string p0, ""

    .line 173
    :cond_1
    :goto_0
    return-object p0

    .line 166
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static findTPJars()Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 263
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/openx/core/sdk/OXSettings;->classesToCheck:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 265
    sget-object v3, Lcom/openx/core/sdk/OXSettings;->classesToCheck:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 267
    sget-object v3, Lcom/openx/core/sdk/OXSettings;->jarName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 275
    const-string v2, "OXSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 149
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {v1}, Lcom/openx/core/sdk/OXSettings;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/openx/core/sdk/OXSettings;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getTpJarList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->tpjarListString:Ljava/lang/String;

    return-object v0
.end method

.method private static initPackageInfo(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 120
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/openx/core/sdk/OXSettings;->appName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openx/core/sdk/OXSettings;->packageName:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 130
    :try_start_1
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 136
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/openx/core/sdk/OXSettings;->appName:Ljava/lang/String;

    .line 144
    :cond_0
    :goto_2
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "(unknown)"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V
    .locals 2

    .prologue
    .line 212
    invoke-static {p0}, Lcom/openx/core/sdk/OXSettings;->initPackageInfo(Landroid/content/Context;)V

    .line 214
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->initListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/openx/core/sdk/OXSettings;->initListeners:Ljava/util/ArrayList;

    .line 216
    :cond_0
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->initListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/openx/core/sdk/OXSettings$2;

    invoke-direct {v1, p0}, Lcom/openx/core/sdk/OXSettings$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    invoke-static {}, Lcom/openx/core/sdk/OXSettings;->initializeLogging()V

    .line 249
    :cond_1
    sget-object v0, Lcom/openx/core/sdk/OXSettings;->initListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private static initUserAgent(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    new-instance v1, Lcom/openx/core/sdk/OXSettings$1;

    invoke-direct {v1, p0}, Lcom/openx/core/sdk/OXSettings$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method public static initializeLogging()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/openx/common/utils/logger/OXLogWrapper;

    invoke-direct {v0}, Lcom/openx/common/utils/logger/OXLogWrapper;-><init>()V

    .line 292
    invoke-static {v0}, Lcom/openx/common/utils/logger/OXLog;->setLogNode(Lcom/openx/common/utils/logger/OXLogNodeInterface;)V

    .line 294
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/openx/common/utils/logger/OXLog;->setLogLevel(I)V

    .line 298
    return-void
.end method

.method public static setDisabledSupportFlags(I)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 55
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "sms"

    aput-object v1, v2, v0

    const-string v1, "tel"

    aput-object v1, v2, v4

    const-string v1, "email"

    aput-object v1, v2, v5

    const-string v1, "calendar"

    aput-object v1, v2, v6

    const-string v1, "storePicture"

    aput-object v1, v2, v7

    const/4 v1, 0x5

    const-string v3, "inlineVideo"

    aput-object v3, v2, v1

    .line 56
    const/4 v1, 0x6

    new-array v3, v1, [I

    sget v1, Lcom/openx/core/sdk/OXSettings;->SMS:I

    aput v1, v3, v0

    sget v1, Lcom/openx/core/sdk/OXSettings;->TEL:I

    aput v1, v3, v4

    sget v1, Lcom/openx/core/sdk/OXSettings;->EMAIL:I

    aput v1, v3, v5

    sget v1, Lcom/openx/core/sdk/OXSettings;->CALENDAR:I

    aput v1, v3, v6

    sget v1, Lcom/openx/core/sdk/OXSettings;->STORE_PICTURE:I

    aput v1, v3, v7

    const/4 v1, 0x5

    sget v4, Lcom/openx/core/sdk/OXSettings;->INLINE_VIDEO:I

    aput v4, v3, v1

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v1, "mraid.allSupports = {"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 65
    aget-object v1, v2, v0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    aget v1, v3, v0

    and-int/2addr v1, p0

    aget v5, v3, v0

    if-ne v1, v5, :cond_1

    const-string v1, "false"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    aget-object v1, v2, v0

    invoke-static {v1}, Lcom/openx/core/sdk/OXSettings;->supports(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 71
    :cond_2
    const-string v0, "};"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openx/view/mraid/BaseJSInterface;->disabledFlags:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private static supports(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 105
    :cond_1
    :goto_0
    return v0

    .line 84
    :cond_2
    const-string v2, "sms"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->hasTelephony()Z

    move-result v0

    goto :goto_0

    .line 88
    :cond_3
    const-string v2, "tel"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->hasTelephony()Z

    move-result v0

    goto :goto_0

    .line 92
    :cond_4
    const-string v2, "calendar"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "email"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "storePicture"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 98
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->canStorePicture()Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_5
    const-string v2, "inlineVideo"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastHoneycomb()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    .line 105
    goto :goto_0
.end method
