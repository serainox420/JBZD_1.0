.class public Lcom/smartadserver/android/library/g/c;
.super Ljava/lang/Object;
.source "SASUtil.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static d:Lcom/smartadserver/android/library/g/a;

.field private static final e:Ljava/lang/String;

.field private static f:Ljava/lang/Boolean;

.field private static final g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private static k:Landroid/content/Context;

.field private static l:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static m:Z

.field private static n:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    const-class v0, Lcom/smartadserver/android/library/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/g/c;->e:Ljava/lang/String;

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/g/c;->f:Ljava/lang/Boolean;

    .line 69
    const-class v0, Lcom/smartadserver/android/library/g/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/g/c;->g:Ljava/lang/String;

    .line 78
    const-string v0, "63323234643163626632366536356235343230376662316336336133663830626463306236666361"

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/g/c;->h:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current SDK Version : 6.6.2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/smartadserver/android/library/g/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 89
    sput-boolean v2, Lcom/smartadserver/android/library/g/c;->a:Z

    .line 90
    const-string v0, "unkownUserAgent"

    sput-object v0, Lcom/smartadserver/android/library/g/c;->i:Ljava/lang/String;

    .line 93
    sput-object v3, Lcom/smartadserver/android/library/g/c;->j:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 96
    sput-object v3, Lcom/smartadserver/android/library/g/c;->k:Landroid/content/Context;

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartadserver/android/library/g/c;->m:Z

    .line 335
    const-string v0, "unknown package"

    sput-object v0, Lcom/smartadserver/android/library/g/c;->b:Ljava/lang/String;

    .line 336
    const-string v0, "unknown app"

    sput-object v0, Lcom/smartadserver/android/library/g/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/res/Resources;)I
    .locals 3

    .prologue
    .line 508
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 555
    const/4 v1, -0x1

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 557
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 560
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 892
    const/4 v0, -0x1

    .line 893
    if-eqz p0, :cond_0

    .line 894
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 898
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 899
    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 905
    :cond_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 906
    :catch_0
    move-exception v1

    .line 910
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_2

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 911
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 914
    const-string v1, "000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    const/16 v3, 0xc

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 916
    const-string v1, "00:00:00.000"

    .line 922
    :goto_1
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 923
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 924
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0

    .line 918
    :cond_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 919
    const-string v1, "00:00:00"

    goto :goto_1

    .line 900
    :catch_1
    move-exception v1

    goto :goto_0

    .line 925
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/smartadserver/android/library/g/c;->k:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 570
    new-instance v0, Lcom/smartadserver/android/library/g/c$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/g/c$1;-><init>(Ljava/lang/String;)V

    .line 584
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-object v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/location/Location;
    .locals 3

    .prologue
    .line 229
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->l(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 230
    const/4 v0, 0x0

    .line 231
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartadserver/android/library/g/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    :try_start_0
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v2, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoClassDefFoundError;
        }
    .end annotation

    .prologue
    .line 252
    const-class v1, Lcom/smartadserver/android/library/g/c;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 254
    sget-object v0, Lcom/smartadserver/android/library/g/c;->j:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 256
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 258
    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 260
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/g/c;->j:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieved Google Advertising id in : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/smartadserver/android/library/g/c;->j:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not retrieve Google Advertising id due to exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 853
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 854
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 855
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 856
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 935
    invoke-static {p2}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 937
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 938
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 943
    :try_start_0
    const-string v2, "string"

    invoke-virtual {v1, p0, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 948
    :goto_0
    return-object p1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find String resource for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using english as default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 636
    const-string v0, "frequency"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    const-string v0, "interval"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 638
    const-string v0, "expires"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 639
    const-string v0, "daysInWeek"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 640
    const-string v0, "daysInMonth"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 641
    const-string v0, "daysInYear"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 642
    const-string v0, "weeksInMonth"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 643
    const-string v0, "monthsInYear"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 645
    const-string v0, ""

    .line 646
    if-eqz v1, :cond_0

    .line 647
    const-string v2, "daily"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 648
    const-string v0, "FREQ=DAILY"

    .line 786
    :cond_0
    :goto_0
    const-string v1, ""

    .line 787
    if-ltz v5, :cond_1

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 791
    :cond_1
    const-string v2, ""

    .line 792
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_2

    .line 793
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 794
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNTIL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 798
    :cond_2
    const-string v3, ""

    .line 799
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 802
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 803
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 809
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_6
    return-object v0

    .line 649
    :cond_7
    const-string v2, "weekly"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 650
    const-string v2, "FREQ=WEEKLY"

    .line 651
    if-eqz v3, :cond_23

    .line 652
    invoke-static {v3}, Lcom/smartadserver/android/library/g/c;->a(Lorg/json/JSONArray;)[I

    move-result-object v3

    .line 653
    const-string v1, ""

    .line 654
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v8, "SU"

    aput-object v8, v4, v0

    const/4 v0, 0x1

    const-string v8, "MO"

    aput-object v8, v4, v0

    const/4 v0, 0x2

    const-string v8, "TU"

    aput-object v8, v4, v0

    const/4 v0, 0x3

    const-string v8, "WE"

    aput-object v8, v4, v0

    const/4 v0, 0x4

    const-string v8, "TH"

    aput-object v8, v4, v0

    const/4 v0, 0x5

    const-string v8, "FR"

    aput-object v8, v4, v0

    const/4 v0, 0x6

    const-string v8, "SA"

    aput-object v8, v4, v0

    .line 655
    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_2
    array-length v8, v3

    if-ge v1, v8, :cond_9

    .line 656
    aget v8, v3, v1

    .line 657
    if-ltz v8, :cond_8

    const/4 v9, 0x6

    if-gt v8, v9, :cond_8

    .line 658
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v8, v4, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 662
    :cond_9
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 663
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";BYDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 671
    :cond_b
    const-string v2, "monthly"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 672
    const-string v2, "FREQ=MONTHLY"

    .line 673
    if-eqz v4, :cond_f

    .line 674
    invoke-static {v4}, Lcom/smartadserver/android/library/g/c;->a(Lorg/json/JSONArray;)[I

    move-result-object v3

    .line 675
    const-string v1, ""

    .line 676
    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_3
    array-length v4, v3

    if-ge v1, v4, :cond_d

    .line 677
    aget v4, v3, v1

    .line 678
    const/16 v8, -0x1e

    if-lt v4, v8, :cond_c

    const/16 v8, 0x1f

    if-gt v4, v8, :cond_c

    if-eqz v4, :cond_c

    .line 679
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 683
    :cond_d
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 684
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 687
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 691
    :cond_f
    if-eqz v9, :cond_23

    .line 692
    invoke-static {v9}, Lcom/smartadserver/android/library/g/c;->a(Lorg/json/JSONArray;)[I

    move-result-object v8

    .line 693
    const-string v1, ""

    .line 694
    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_4
    array-length v3, v8

    if-ge v1, v3, :cond_13

    .line 695
    aget v9, v8, v1

    .line 697
    const/4 v3, -0x5

    if-lt v9, v3, :cond_10

    const/4 v3, 0x5

    if-gt v9, v3, :cond_10

    if-eqz v9, :cond_10

    .line 698
    if-lez v9, :cond_12

    .line 699
    const/4 v3, 0x1

    :goto_5
    const/16 v4, 0x8

    if-ge v3, v4, :cond_10

    .line 700
    add-int/lit8 v4, v9, -0x1

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v4, v3

    .line 701
    const/16 v10, 0x1f

    if-le v4, v10, :cond_11

    .line 694
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 704
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 699
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_5

    .line 707
    :cond_12
    const/4 v3, 0x1

    :goto_6
    const/16 v4, 0x8

    if-ge v3, v4, :cond_10

    .line 708
    add-int/lit8 v4, v9, 0x1

    mul-int/lit8 v4, v4, 0x7

    sub-int/2addr v4, v3

    .line 709
    const/16 v10, -0x1f

    if-lt v4, v10, :cond_10

    .line 712
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 707
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_6

    .line 718
    :cond_13
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 719
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 722
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_15
    move-object v0, v2

    .line 725
    goto/16 :goto_0

    .line 726
    :cond_16
    const-string v2, "yearly"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string v2, "FREQ=YEARLY"

    .line 729
    if-eqz v10, :cond_1e

    .line 730
    invoke-static {v10}, Lcom/smartadserver/android/library/g/c;->a(Lorg/json/JSONArray;)[I

    move-result-object v3

    .line 731
    const-string v1, ""

    .line 732
    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_7
    array-length v8, v3

    if-ge v1, v8, :cond_18

    .line 733
    aget v8, v3, v1

    .line 734
    if-ltz v8, :cond_17

    const/16 v9, 0xc

    if-gt v8, v9, :cond_17

    .line 735
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 739
    :cond_18
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 740
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    :cond_1a
    if-eqz v4, :cond_23

    .line 748
    invoke-static {v4}, Lcom/smartadserver/android/library/g/c;->a(Lorg/json/JSONArray;)[I

    move-result-object v3

    .line 749
    const-string v1, ""

    .line 750
    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_8
    array-length v4, v3

    if-ge v1, v4, :cond_1c

    .line 751
    aget v4, v3, v1

    .line 752
    const/16 v8, -0x1e

    if-lt v4, v8, :cond_1b

    const/16 v8, 0x1f

    if-gt v4, v8, :cond_1b

    if-eqz v4, :cond_1b

    .line 753
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 757
    :cond_1c
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 758
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 761
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";BYMONTHDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 765
    :cond_1e
    if-eqz v8, :cond_23

    .line 766
    invoke-static {v8}, Lcom/smartadserver/android/library/g/c;->a(Lorg/json/JSONArray;)[I

    move-result-object v3

    .line 767
    const-string v1, ""

    .line 768
    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_9
    array-length v4, v3

    if-ge v1, v4, :cond_20

    .line 769
    aget v4, v3, v1

    .line 770
    const/16 v8, -0x16d

    if-lt v4, v8, :cond_1f

    const/16 v8, 0x16e

    if-gt v4, v8, :cond_1f

    if-eqz v4, :cond_1f

    .line 771
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 775
    :cond_20
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 776
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 779
    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";BYYEARDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_22
    move-object v0, v3

    goto/16 :goto_1

    :cond_23
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 990
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/g/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartadserver/android/library/g/c$2;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/smartadserver/android/library/g/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 298
    sget-object v0, Lcom/smartadserver/android/library/g/c;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 331
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;I)[I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1017
    new-array v0, v7, [I

    .line 1019
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1020
    aget v1, v0, v5

    .line 1021
    aget v0, v0, v6

    sub-int/2addr v0, p1

    .line 1022
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1023
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1025
    const/4 v4, 0x4

    new-array v4, v4, [I

    aput v1, v4, v5

    aput v0, v4, v6

    aput v2, v4, v7

    const/4 v0, 0x3

    aput v3, v4, v0

    return-object v4
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)[I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1029
    new-array v0, v7, [I

    .line 1030
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1032
    new-array v1, v7, [I

    .line 1033
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1035
    const/4 v2, 0x4

    new-array v2, v2, [I

    aget v3, v0, v5

    aget v4, v1, v5

    sub-int/2addr v3, v4

    aput v3, v2, v5

    aget v0, v0, v6

    aget v1, v1, v6

    sub-int/2addr v0, v1

    aput v0, v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    aput v0, v2, v7

    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    aput v1, v2, v0

    return-object v2
.end method

.method private static a(Lorg/json/JSONArray;)[I
    .locals 3

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 820
    if-eqz p0, :cond_1

    .line 821
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 822
    new-array v2, v0, [I

    .line 823
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 825
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 830
    :cond_1
    return-object v0

    .line 826
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b()I
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v3, 0x1

    const/4 v1, 0x3

    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->a()Landroid/content/Context;

    move-result-object v4

    .line 123
    if-eqz v4, :cond_0

    .line 125
    const-string v0, "connectivity"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 130
    const/4 v2, 0x4

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 133
    :cond_1
    const-string v0, "phone"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 134
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    .line 138
    const/16 v0, 0xf

    if-ne v4, v0, :cond_3

    move v0, v1

    .line 144
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v2, v5, :cond_2

    .line 145
    if-nez v0, :cond_2

    if-ne v4, v6, :cond_2

    move v2, v1

    .line 151
    :goto_2
    if-nez v2, :cond_0

    .line 152
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 167
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 155
    goto :goto_0

    .line 160
    :pswitch_2
    const/4 v2, 0x2

    .line 161
    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 347
    sget-object v0, Lcom/smartadserver/android/library/g/c;->b:Ljava/lang/String;

    .line 349
    if-eqz p0, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 432
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 435
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 437
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 439
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/smartadserver/android/library/g/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 309
    sget-object v0, Lcom/smartadserver/android/library/g/c;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 365
    sget-object v0, Lcom/smartadserver/android/library/g/c;->c:Ljava/lang/String;

    .line 367
    if-eqz p0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 319
    if-eqz p0, :cond_0

    .line 320
    sget-object v0, Lcom/smartadserver/android/library/g/c;->g:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 185
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->m:Z

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    if-nez v0, :cond_0

    .line 392
    const-string v0, "0000000000000000"

    .line 407
    :cond_0
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    :try_start_0
    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 418
    :cond_1
    :goto_0
    return-object v0

    .line 413
    :catch_0
    move-exception v1

    .line 414
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 422
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/smartadserver/android/library/g/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyyyyhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 593
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 594
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 426
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/smartadserver/android/library/g/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 447
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 448
    sget-object v0, Lcom/smartadserver/android/library/g/c;->d:Lcom/smartadserver/android/library/g/a;

    if-nez v0, :cond_0

    .line 449
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 457
    :goto_0
    return v0

    .line 455
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/g/c;->d:Lcom/smartadserver/android/library/g/a;

    invoke-interface {v0, p0}, Lcom/smartadserver/android/library/g/a;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 563
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 600
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 602
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 604
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 612
    :goto_0
    return-object v0

    .line 609
    :catch_0
    move-exception v0

    .line 612
    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 461
    sget-object v0, Lcom/smartadserver/android/library/g/c;->i:Ljava/lang/String;

    .line 464
    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-object v0

    .line 467
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 475
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 477
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 479
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 480
    const/4 v0, -0x1

    .line 482
    packed-switch v1, :pswitch_data_0

    .line 500
    :goto_0
    return v0

    .line 484
    :pswitch_0
    const/4 v0, 0x0

    .line 485
    goto :goto_0

    .line 488
    :pswitch_1
    const/16 v0, 0x5a

    .line 489
    goto :goto_0

    .line 492
    :pswitch_2
    const/16 v0, 0xb4

    .line 493
    goto :goto_0

    .line 496
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    sget-object v0, Lcom/smartadserver/android/library/g/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 617
    if-eqz p0, :cond_0

    .line 619
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 625
    :cond_0
    :goto_0
    return-object p0

    .line 620
    :catch_0
    move-exception v0

    .line 622
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static h()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 976
    sget-object v0, Lcom/smartadserver/android/library/g/c;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 977
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartadserver/android/library/g/c;->n:Landroid/os/Handler;

    .line 979
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/g/c;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    if-eqz p0, :cond_0

    .line 630
    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 514
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 519
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->g(Landroid/content/Context;)I

    move-result v3

    .line 520
    if-eqz v3, :cond_0

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3

    .line 521
    :cond_0
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v2, :cond_2

    .line 525
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 521
    goto :goto_0

    .line 523
    :cond_3
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v3, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 531
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 535
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->h(Landroid/content/Context;)Z

    move-result v2

    .line 536
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->g(Landroid/content/Context;)I

    move-result v3

    .line 537
    if-nez v2, :cond_2

    .line 538
    const/16 v2, 0x5a

    if-eq v3, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v3, v2, :cond_1

    :cond_0
    move v0, v1

    .line 547
    :cond_1
    :goto_0
    return v0

    .line 544
    :cond_2
    if-eqz v3, :cond_3

    const/16 v2, 0xb4

    if-ne v3, v2, :cond_1

    :cond_3
    move v0, v1

    .line 545
    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 957
    .line 958
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 959
    const-string v0, ",http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 960
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_0
    array-length v0, v2

    if-ne v0, v1, :cond_1

    aget-object v0, v2, v5

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    aget-object v0, v2, v5

    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    :cond_1
    move-object v0, v2

    .line 970
    :goto_1
    return-object v0

    .line 968
    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    goto :goto_1
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 840
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 841
    aget-char v3, v2, v0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 842
    add-int/lit8 v4, v0, 0x1

    aget-char v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 843
    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v4

    .line 844
    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 861
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->k(Landroid/content/Context;)V

    .line 862
    if-eqz p0, :cond_1

    .line 863
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 865
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 868
    if-eqz v1, :cond_4

    .line 869
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 871
    :goto_0
    if-eqz v0, :cond_3

    .line 872
    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    .line 877
    :cond_1
    :goto_1
    return v3

    :cond_2
    move v1, v3

    .line 869
    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method private static k(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/g/c;->k:Landroid/content/Context;

    .line 106
    :cond_0
    return-void
.end method

.method private static declared-synchronized l(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 3

    .prologue
    .line 205
    const-class v1, Lcom/smartadserver/android/library/g/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smartadserver/android/library/g/c;->l:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 207
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/g/c;->l:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/smartadserver/android/library/g/c;->l:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartadserver/android/library/g/c;->l:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/smartadserver/android/library/g/c;->l:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    sget-object v0, Lcom/smartadserver/android/library/g/c;->l:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 219
    :cond_1
    sget-object v0, Lcom/smartadserver/android/library/g/c;->l:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method
