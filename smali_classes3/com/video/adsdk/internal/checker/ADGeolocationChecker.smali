.class public Lcom/video/adsdk/internal/checker/ADGeolocationChecker;
.super Ljava/lang/Object;
.source "ADGeolocationChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/GeolocationChecker;


# instance fields
.field private final canBeUsed:Z

.field private final context:Landroid/content/Context;

.field private location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->canBeUsed:Z

    .line 16
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 24
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 32
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public readCurrentValues()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->context:Landroid/content/Context;

    const-string v2, "location"

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 40
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    .line 41
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADGeolocationChecker;->location:Landroid/location/Location;

    move v0, v1

    .line 53
    :goto_0
    return v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ADGeolocationChecker - No best provider"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    move-exception v0

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method
