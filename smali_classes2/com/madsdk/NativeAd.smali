.class public Lcom/madsdk/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;
    }
.end annotation


# static fields
.field public static final MADSDK:Ljava/lang/String; = "madsdk"

.field public static final OS_NAME:Ljava/lang/String; = "Android"

.field public static final RT:Ljava/lang/String; = "sdk-integration"

.field public static final STATE_ERROR:Ljava/lang/String; = "error"

.field private static final STATE_REJECTED:Ljava/lang/String; = "rejected"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBodyForRequest(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/request/Asset;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 111
    new-instance v8, Lcom/google/gson/d;

    invoke-direct {v8}, Lcom/google/gson/d;-><init>()V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 114
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v1, Lcom/madsdk/gson/request/NativeInfo;

    new-instance v5, Lcom/madsdk/gson/request/Request;

    const-string v6, "1"

    const-string v7, "1"

    const-string v9, "1"

    invoke-direct {v5, p1, v6, v7, v9}, Lcom/madsdk/gson/request/Request;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Lcom/madsdk/gson/request/NativeInfo;-><init>(Lcom/madsdk/gson/request/Request;)V

    .line 116
    new-instance v5, Lcom/madsdk/gson/request/Imp;

    const-string v6, "1"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7, v1}, Lcom/madsdk/gson/request/Imp;-><init>(Ljava/lang/String;Ljava/lang/Float;Lcom/madsdk/gson/request/NativeInfo;)V

    .line 117
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v6, Lcom/madsdk/gson/request/User;

    invoke-direct {v6, v4, v3}, Lcom/madsdk/gson/request/User;-><init>(Ljava/lang/String;Lcom/madsdk/gson/request/UserExt;)V

    .line 119
    new-instance v7, Lcom/madsdk/gson/request/Ext;

    const-string v5, "sdk-integration"

    if-eqz p3, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-direct {v7, v5, p2, v1}, Lcom/madsdk/gson/request/Ext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p0}, Lcom/madsdk/NativeAd;->getGeo(Landroid/view/View;)Lcom/madsdk/gson/request/Geo;

    move-result-object v1

    .line 122
    new-instance v5, Lcom/madsdk/gson/request/DeviceInfo;

    const-string v9, "Android"

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v9, v10, v0}, Lcom/madsdk/gson/request/DeviceInfo;-><init>(Lcom/madsdk/gson/request/Geo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v4}, Lcom/madsdk/NativeAd;->generateRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v0, Lcom/madsdk/gson/request/NativeAdRequest;

    move-object v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/madsdk/gson/request/NativeAdRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/madsdk/gson/request/Site;Lcom/madsdk/gson/request/App;Lcom/madsdk/gson/request/DeviceInfo;Lcom/madsdk/gson/request/User;Lcom/madsdk/gson/request/Ext;)V

    .line 126
    invoke-virtual {v8, v0}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private static generateRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "madsdkAndroid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGeo(Landroid/view/View;)Lcom/madsdk/gson/request/Geo;
    .locals 6

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/madsdk/NativeAd;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Lcom/madsdk/gson/request/Geo;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/madsdk/gson/request/Geo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lcom/madsdk/gson/request/Geo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/madsdk/gson/request/Geo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 4

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    const-string v0, "location"

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 152
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_0

    .line 156
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static requestNativeAd(Landroid/view/View;Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;",
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/request/Asset;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 54
    invoke-static {p0, p2, p3, p4}, Lcom/madsdk/NativeAd;->createBodyForRequest(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "application/json"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 56
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "https://mads.permodo.net/md.request.php"

    .line 57
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/madsdk/NativeAd$1;

    invoke-direct {v1, p1, p0, p5}, Lcom/madsdk/NativeAd$1;-><init>(Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;Landroid/view/View;Z)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 108
    return-void
.end method
