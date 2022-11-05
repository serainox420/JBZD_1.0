.class public Lcom/apprupt/sdk/CvGeoLocation;
.super Ljava/lang/Object;
.source "CvGeoLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Lcom/apprupt/sdk/Logger$log;

.field private static c:Lcom/apprupt/sdk/CvGeoLocation;

.field private static d:Z

.field private static final e:Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;


# instance fields
.field private f:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/apprupt/sdk/CvGeoLocation;->a:Ljava/lang/String;

    .line 23
    const-string v0, "GEO_LOCATION"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    .line 58
    sput-object v1, Lcom/apprupt/sdk/CvGeoLocation;->c:Lcom/apprupt/sdk/CvGeoLocation;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apprupt/sdk/CvGeoLocation;->d:Z

    .line 60
    new-instance v0, Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;-><init>(Lcom/apprupt/sdk/CvGeoLocation$1;)V

    sput-object v0, Lcom/apprupt/sdk/CvGeoLocation;->e:Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvGeoLocation;->f:Landroid/location/LocationManager;

    .line 77
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/apprupt/sdk/CvGeoLocation;->f:Landroid/location/LocationManager;

    .line 78
    sget-boolean v0, Lcom/apprupt/sdk/CvGeoLocation;->d:Z

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Starting location tracker"

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/apprupt/sdk/CvGeoLocation;->f:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x7530

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/apprupt/sdk/CvGeoLocation;->e:Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvGeoLocation;->f:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Current location unknown"

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 95
    :goto_1
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Cannot start location tracker - disabled."

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_1
    sget-object v1, Lcom/apprupt/sdk/CvGeoLocation;->e:Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;

    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1
.end method

.method static a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->c:Lcom/apprupt/sdk/CvGeoLocation;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apprupt/sdk/CvGeoLocation;->d:Z

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Trying to fetch last known location..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->c:Lcom/apprupt/sdk/CvGeoLocation;

    iget-object v0, v0, Lcom/apprupt/sdk/CvGeoLocation;->f:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvGeoLocation;->a(Landroid/location/Location;)V

    .line 102
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Last location:"

    aput-object v2, v1, v3

    sget-object v2, Lcom/apprupt/sdk/CvGeoLocation;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/apprupt/sdk/CvGeoLocation;->a:Ljava/lang/String;

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->c:Lcom/apprupt/sdk/CvGeoLocation;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 65
    new-instance v0, Lcom/apprupt/sdk/CvGeoLocation;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvGeoLocation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/apprupt/sdk/CvGeoLocation;->c:Lcom/apprupt/sdk/CvGeoLocation;

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-boolean v0, Lcom/apprupt/sdk/CvGeoLocation;->d:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Geo location is not accessible"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 68
    :cond_2
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Geo location is not accessible"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->e:Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvGeoLocation$CvLocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/apprupt/sdk/CvGeoLocation;->b:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method
