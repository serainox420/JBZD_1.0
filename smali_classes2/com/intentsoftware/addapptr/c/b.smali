.class public Lcom/intentsoftware/addapptr/c/b;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final MAX_TIME_FROM_FIX:J = 0x1d4c0L

.field private static final MINIMAL_ACCURACY:F = 100.0f

.field private static application:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 13

    .prologue
    const-wide/32 v10, 0x1d4c0

    const/4 v2, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    sget-object v3, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    if-nez v3, :cond_1

    .line 28
    const-string v1, "LocationUtils"

    const-string v2, "Location Manager not initialized"

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    :try_start_0
    sget-object v3, Lcom/intentsoftware/addapptr/c/b;->application:Landroid/app/Application;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v4}, Landroid/app/Application;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    .line 43
    :goto_1
    sget-object v3, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    sget-object v1, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    sget-object v1, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 51
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_3

    cmp-long v3, v4, v10

    if-gez v3, :cond_3

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 39
    :cond_2
    sget-object v3, Lcom/intentsoftware/addapptr/c/b;->application:Landroid/app/Application;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4}, Landroid/app/Application;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move v12, v1

    move v1, v2

    move v2, v12

    .line 40
    goto :goto_1

    .line 56
    :cond_3
    sget-object v1, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    sget-object v1, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    .line 57
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 64
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_0

    cmp-long v2, v2, v10

    if-gez v2, :cond_0

    move-object v0, v1

    .line 66
    goto/16 :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "LocationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error obtaining location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto/16 :goto_1
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 22
    sput-object p0, Lcom/intentsoftware/addapptr/c/b;->application:Landroid/app/Application;

    .line 23
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/intentsoftware/addapptr/c/b;->locationManager:Landroid/location/LocationManager;

    .line 24
    return-void
.end method
