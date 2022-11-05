.class public final Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;
.super Ljava/lang/Object;
.source "PUBDeviceInformation.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static instance:Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation; = null

.field public static final mAdPosition:Ljava/lang/String; = "-1x-1"

.field public static mAdVisibility:I = 0x0

.field private static mApplicationContext:Landroid/content/Context; = null

.field public static mInIframe:I = 0x0

.field public static mJavaScriptSupport:I = 0x0

.field public static final msdkId:Ljava/lang/String; = "2"

.field public static final msdkVersion:Ljava/lang/String; = "5.1.0"


# instance fields
.field public mApplicationName:Ljava/lang/String;

.field public mApplicationVersion:Ljava/lang/String;

.field public mCarrierName:Ljava/lang/String;

.field public mDeviceAcceptLanguage:Ljava/lang/String;

.field public mDeviceCountryCode:Ljava/lang/String;

.field public mDeviceIpAddress:Ljava/lang/String;

.field public mDeviceLocation:Ljava/lang/String;

.field public mDeviceMake:Ljava/lang/String;

.field public mDeviceModel:Ljava/lang/String;

.field public mDeviceOSName:Ljava/lang/String;

.field public mDeviceOSVersion:Ljava/lang/String;

.field public mDeviceScreenResolution:Ljava/lang/String;

.field public mDeviceTimeZone:D

.field public mDeviceUserAgent:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPageURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    sput-object v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    .line 82
    sput v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mJavaScriptSupport:I

    .line 83
    sput v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mAdVisibility:I

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mInIframe:I

    .line 88
    sput-object v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->instance:Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceMake:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceModel:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSName:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSVersion:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPackageName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPageURL:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceCountryCode:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceIpAddress:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceUserAgent:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mCarrierName:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceAcceptLanguage:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceScreenResolution:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceTimeZone:D

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceLocation:Ljava/lang/String;

    .line 95
    sput-object p1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    .line 98
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceMake:Ljava/lang/String;

    .line 99
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceModel:Ljava/lang/String;

    .line 100
    const-string v0, "Android"

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSName:Ljava/lang/String;

    .line 101
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceOSVersion:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    const-string v1, "window"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 106
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceScreenResolution:Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceTimeZone:D

    .line 115
    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceUserAgent:Ljava/lang/String;

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceAcceptLanguage:Ljava/lang/String;

    .line 123
    const-string v0, "phone"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 125
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mCarrierName:Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceCountryCode:Ljava/lang/String;

    .line 138
    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 143
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationName:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPackageName:Ljava/lang/String;

    .line 145
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mPageURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_1
    invoke-static {}, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->getDeviceIpAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceIpAddress:Ljava/lang/String;

    .line 155
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getCurrentTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    const-class v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 168
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 171
    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDeviceIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 248
    const-class v2, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    const-string v3, "wifi"

    .line 249
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 253
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 259
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    move-object v0, v1

    .line 257
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 259
    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;
    .locals 2

    .prologue
    .line 159
    const-class v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->instance:Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->instance:Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    .line 162
    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->instance:Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRandomNumber()F
    .locals 4

    .prologue
    .line 176
    const-class v1, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    double-to-float v0, v2

    .line 177
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 178
    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    goto :goto_0

    .line 179
    :cond_0
    monitor-exit v1

    return v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getScreenOrientation()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    const-class v2, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    const-string v3, "window"

    .line 184
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 185
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 196
    :goto_0
    monitor-exit v2

    return v0

    .line 190
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ge v3, v0, :cond_1

    move v0, v1

    .line 191
    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public declared-synchronized getDeviceOrientation()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x1

    .line 203
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mApplicationContext:Landroid/content/Context;

    const-string v3, "window"

    .line 204
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 212
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v4, v5, :cond_2

    .line 213
    if-eq v3, v2, :cond_0

    if-ne v3, v6, :cond_1

    :cond_0
    move v0, v2

    .line 244
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0

    .line 220
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ge v4, v0, :cond_5

    .line 222
    if-eq v3, v2, :cond_3

    if-ne v3, v6, :cond_4

    :cond_3
    move v0, v2

    .line 225
    goto :goto_0

    :cond_4
    move v0, v1

    .line 229
    goto :goto_0

    .line 233
    :cond_5
    if-eq v3, v2, :cond_6

    if-ne v3, v6, :cond_7

    :cond_6
    move v0, v2

    .line 236
    goto :goto_0

    :cond_7
    move v0, v2

    .line 240
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBDeviceInformation;->mDeviceLocation:Ljava/lang/String;

    .line 267
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method
