.class public Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;
.super Ljava/lang/Object;
.source "PhoenixDeviceInformation.java"


# static fields
.field private static instance:Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

.field private static mApplicationContext:Landroid/content/Context;

.field public static mInIframe:I


# instance fields
.field public mApplicationName:Ljava/lang/String;

.field public mApplicationVersion:Ljava/lang/String;

.field public mCarrierName:Ljava/lang/String;

.field public mDeviceScreenResolution:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPageURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->instance:Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    .line 23
    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mInIframe:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPackageName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPageURL:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mDeviceScreenResolution:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mCarrierName:Ljava/lang/String;

    .line 41
    sput-object p1, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationContext:Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationName:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPackageName:Ljava/lang/String;

    .line 51
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mPageURL:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mApplicationContext:Landroid/content/Context;

    const-string v1, "window"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 58
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mDeviceScreenResolution:Ljava/lang/String;

    .line 65
    const-string v0, "phone"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 67
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->mCarrierName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    throw v0
.end method

.method public static declared-synchronized getCurrentTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-class v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 89
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 92
    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->instance:Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->instance:Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    .line 83
    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;->instance:Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRandomNumber()F
    .locals 4

    .prologue
    .line 97
    const-class v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixDeviceInformation;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    double-to-float v0, v2

    .line 98
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 99
    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    goto :goto_0

    .line 100
    :cond_0
    monitor-exit v1

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTimeZoneOffset()Ljava/lang/String;
    .locals 6

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    :try_start_0
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 107
    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 114
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method
