.class public Lcom/mopub/common/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/LocationService$1;,
        Lcom/mopub/common/LocationService$ValidLocationProvider;,
        Lcom/mopub/common/LocationService$LocationAwareness;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    invoke-static {p1, p0}, Lcom/mopub/common/LocationService$ValidLocationProvider;->a(Lcom/mopub/common/LocationService$ValidLocationProvider;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 135
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve location from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " provider: access appears to be disabled."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    .line 135
    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve location: device has no "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " location provider."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :catch_2
    move-exception v0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve location: device has no "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " location provider."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 141
    if-nez p0, :cond_1

    move-object p0, p1

    .line 150
    :cond_0
    :goto_0
    return-object p0

    .line 145
    :cond_1
    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method static a(Landroid/location/Location;I)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 157
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 162
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 167
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 168
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 171
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0
.end method

.method public static getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 89
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne p2, v0, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    sget-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v0}, Lcom/mopub/common/LocationService;->a(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v1}, Lcom/mopub/common/LocationService;->a(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/mopub/common/LocationService;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/mopub/common/MoPub$LocationAwareness;->TRUNCATED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne p2, v1, :cond_0

    .line 102
    invoke-static {v0, p1}, Lcom/mopub/common/LocationService;->a(Landroid/location/Location;I)V

    goto :goto_0
.end method
