.class public Lcom/loopme/request/AdRequestParametersProvider;
.super Ljava/lang/Object;
.source "AdRequestParametersProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sProvider:Lcom/loopme/request/AdRequestParametersProvider;


# instance fields
.field private volatile mAdvertisingId:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mCarrier:Ljava/lang/String;

.field private mCarrierInited:Z

.field private volatile mDntPresent:Z

.field private mLoopMeId:Ljava/lang/String;

.field private mMraid:Ljava/lang/String;

.field private mPackageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/loopme/request/AdRequestParametersProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/request/AdRequestParametersProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/loopme/request/AdRequestParametersProvider;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/loopme/request/AdRequestParametersProvider;->sProvider:Lcom/loopme/request/AdRequestParametersProvider;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/loopme/request/AdRequestParametersProvider;

    invoke-direct {v0}, Lcom/loopme/request/AdRequestParametersProvider;-><init>()V

    sput-object v0, Lcom/loopme/request/AdRequestParametersProvider;->sProvider:Lcom/loopme/request/AdRequestParametersProvider;

    .line 59
    :cond_0
    sget-object v0, Lcom/loopme/request/AdRequestParametersProvider;->sProvider:Lcom/loopme/request/AdRequestParametersProvider;

    return-object v0
.end method

.method private initAppVersion(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string v0, "0.0"

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAppVersion:Ljava/lang/String;

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :goto_1
    sget-object v1, Lcom/loopme/request/AdRequestParametersProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get app version. Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "0.0"

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAppVersion:Ljava/lang/String;

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private initCarrier(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 244
    if-nez p1, :cond_0

    .line 245
    iput-boolean v1, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrierInited:Z

    .line 260
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v0, "phone"

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 251
    if-nez v0, :cond_1

    .line 252
    iput-boolean v1, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrierInited:Z

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrier:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrier:Ljava/lang/String;

    .line 259
    :cond_2
    iput-boolean v1, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrierInited:Z

    goto :goto_0
.end method

.method private initMraidSupport()V
    .locals 1

    .prologue
    .line 184
    const-string v0, "1"

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mMraid:Ljava/lang/String;

    .line 186
    :try_start_0
    const-string v0, "com.loopme.MraidView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v0, "0"

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mMraid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public detectPackage(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mPackageId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAppVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/loopme/request/AdRequestParametersProvider;->initAppVersion(Landroid/content/Context;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    .prologue
    .line 333
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 337
    new-instance v2, Lcom/loopme/request/AdRequestParametersProvider$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/loopme/request/AdRequestParametersProvider$1;-><init>(Lcom/loopme/request/AdRequestParametersProvider;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 368
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 374
    new-instance v4, Lcom/loopme/request/AdRequestParametersProvider$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/loopme/request/AdRequestParametersProvider$2;-><init>(Lcom/loopme/request/AdRequestParametersProvider;Ljava/lang/Object;[Ljava/lang/String;)V

    const-wide/16 v6, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 387
    monitor-enter v1

    .line 389
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    if-nez v3, :cond_0

    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :goto_1
    :try_start_2
    monitor-exit v1

    .line 401
    return-object v0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 397
    :catch_0
    move-exception v2

    goto :goto_1

    .line 392
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrierInited:Z

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lcom/loopme/request/AdRequestParametersProvider;->initCarrier(Landroid/content/Context;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_0

    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 97
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 98
    if-nez v0, :cond_1

    move v0, v1

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 103
    if-nez v0, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 109
    if-ne v0, v2, :cond_3

    .line 110
    const/4 v0, 0x2

    goto :goto_0

    .line 111
    :cond_3
    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v0, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    if-nez v0, :cond_6

    .line 115
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 116
    if-nez v0, :cond_5

    move v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 121
    packed-switch v0, :pswitch_data_0

    .line 144
    const/4 v0, 0x3

    goto :goto_0

    .line 127
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 138
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 141
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    move v0, v1

    .line 147
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    if-eqz p1, :cond_0

    .line 311
    const-string v0, "phone"

    .line 312
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 314
    if-eqz v0, :cond_0

    .line 315
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v2}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 318
    if-nez v2, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getGoogleAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/loopme/common/Utils;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lcom/loopme/common/Utils;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMraidSupport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mMraid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/loopme/request/AdRequestParametersProvider;->initMraidSupport()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mMraid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    const-string v0, ""

    .line 200
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 197
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 198
    const-string v0, "l"

    goto :goto_0

    .line 200
    :cond_2
    const-string v0, "p"

    goto :goto_0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mPackageId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewerToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAdvertisingId:Ljava/lang/String;

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mLoopMeId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/loopme/request/AdRequestParametersProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoopMe Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mLoopMeId:Ljava/lang/String;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mLoopMeId:Ljava/lang/String;

    .line 214
    :cond_1
    return-object v0
.end method

.method public getWebViewVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 405
    const-string v1, "unknown"

    .line 406
    if-nez p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-object v1

    .line 409
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 412
    :try_start_0
    const-string v3, "com.google.android.webview"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 413
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 414
    sget-object v2, Lcom/loopme/request/AdRequestParametersProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v2

    .line 416
    sget-object v2, Lcom/loopme/request/AdRequestParametersProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Android System WebView is not found. Trying to get it from user agent"

    invoke-static {v2, v3}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v2, Lcom/loopme/adview/AdView;->CHROME_USER_AGENT:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 418
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 419
    aget-object v3, v2, v0

    const-string v4, "Chrome"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    aget-object v1, v2, v0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 421
    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 418
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getWifiName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 274
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 276
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 304
    :cond_0
    :goto_0
    return-object v0

    .line 280
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 291
    goto :goto_0

    .line 294
    :cond_3
    const-string v2, "unknown ssid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 295
    goto :goto_0

    .line 298
    :cond_4
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 299
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 304
    goto :goto_0
.end method

.method public isDntPresent()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/loopme/request/AdRequestParametersProvider;->mDntPresent:Z

    return v0
.end method

.method public isWifiInfoAvailable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 267
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 268
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 269
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/loopme/request/AdRequestParametersProvider;->sProvider:Lcom/loopme/request/AdRequestParametersProvider;

    .line 80
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAppKey:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setGoogleAdvertisingId(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/loopme/request/AdRequestParametersProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advertising Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Limited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/loopme/request/AdRequestParametersProvider;->mAdvertisingId:Ljava/lang/String;

    .line 85
    iput-boolean p2, p0, Lcom/loopme/request/AdRequestParametersProvider;->mDntPresent:Z

    .line 86
    return-void
.end method
