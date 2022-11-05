.class public final Lcom/openx/common/deviceData/managers/LocationImpl;
.super Lcom/openx/core/sdk/OXMBaseManager;
.source "LocationImpl.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/OXMLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/common/deviceData/managers/LocationImpl$1;,
        Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;
    }
.end annotation


# static fields
.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private mAdminArea:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mLocListenerNtw:Landroid/location/LocationListener;

.field private mLocManager:Landroid/location/LocationManager;

.field private mLocation:Landroid/location/Location;

.field private mPostalCode:Ljava/lang/String;

.field private mSubAdminArea:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMBaseManager;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/openx/common/deviceData/managers/LocationImpl;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Lcom/openx/common/deviceData/managers/LocationImpl;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/openx/common/deviceData/managers/LocationImpl;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->updateAddress()V

    return-void
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 220
    if-nez p1, :cond_1

    .line 222
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mSubAdminArea:Ljava/lang/String;

    .line 276
    return-void
.end method

.method private setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mCountryName:Ljava/lang/String;

    .line 248
    return-void
.end method

.method private setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mAdminArea:Ljava/lang/String;

    .line 262
    return-void
.end method

.method private setZipCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mPostalCode:Ljava/lang/String;

    .line 290
    return-void
.end method

.method private updateAddress()V
    .locals 7

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mGeocoder:Landroid/location/Geocoder;

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mGeocoder:Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->getLatitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->getLongtitude()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 44
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/common/deviceData/managers/LocationImpl;->setCountry(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/common/deviceData/managers/LocationImpl;->setState(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/common/deviceData/managers/LocationImpl;->setCity(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/common/deviceData/managers/LocationImpl;->setZipCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->dispose()V

    .line 308
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocListenerNtw:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 313
    :cond_0
    iput-object v2, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocManager:Landroid/location/LocationManager;

    .line 314
    iput-object v2, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mGeocoder:Landroid/location/Geocoder;

    .line 315
    iput-object v2, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    .line 316
    iput-object v2, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocListenerNtw:Landroid/location/LocationListener;

    .line 317
    return-void
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mSubAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLongtitude()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/openx/core/sdk/OXMBaseManager;->init(Landroid/content/Context;)V

    .line 101
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->resetLocation()V

    .line 105
    :cond_0
    return-void
.end method

.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    if-nez p2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 170
    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 175
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    move v3, v1

    .line 176
    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v0, v1

    .line 177
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    move v5, v1

    .line 182
    :goto_3
    if-nez v3, :cond_0

    .line 187
    if-eqz v0, :cond_6

    move v1, v2

    .line 189
    goto :goto_0

    :cond_3
    move v3, v2

    .line 175
    goto :goto_1

    :cond_4
    move v0, v2

    .line 176
    goto :goto_2

    :cond_5
    move v5, v2

    .line 177
    goto :goto_3

    .line 193
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 194
    if-lez v0, :cond_9

    move v4, v1

    .line 195
    :goto_4
    if-gez v0, :cond_a

    move v3, v1

    .line 196
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_b

    move v0, v1

    .line 199
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/openx/common/deviceData/managers/LocationImpl;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 202
    if-nez v3, :cond_0

    .line 206
    if-eqz v5, :cond_7

    if-eqz v4, :cond_0

    .line 210
    :cond_7
    if-eqz v5, :cond_8

    if-nez v0, :cond_8

    if-nez v6, :cond_0

    :cond_8
    move v1, v2

    .line 214
    goto :goto_0

    :cond_9
    move v4, v2

    .line 194
    goto :goto_4

    :cond_a
    move v3, v2

    .line 195
    goto :goto_5

    :cond_b
    move v0, v2

    .line 196
    goto :goto_6
.end method

.method public resetLocation()V
    .locals 6

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocManager:Landroid/location/LocationManager;

    .line 115
    new-instance v0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;-><init>(Lcom/openx/common/deviceData/managers/LocationImpl;Lcom/openx/common/deviceData/managers/LocationImpl$1;)V

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocListenerNtw:Landroid/location/LocationListener;

    .line 117
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocListenerNtw:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 119
    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mGeocoder:Landroid/location/Geocoder;

    .line 121
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 124
    if-eqz v0, :cond_1

    .line 127
    iput-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    .line 128
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v1, v0}, Lcom/openx/common/deviceData/managers/LocationImpl;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput-object v1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    .line 132
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->updateAddress()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz v1, :cond_0

    .line 138
    iput-object v1, p0, Lcom/openx/common/deviceData/managers/LocationImpl;->mLocation:Landroid/location/Location;

    .line 139
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/LocationImpl;->updateAddress()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method
