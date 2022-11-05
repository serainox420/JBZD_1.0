.class public abstract Lcom/mopub/common/AdUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "AdUrlGenerator.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->a:Landroid/content/Context;

    .line 111
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private static b(Landroid/location/Location;)I
    .locals 4

    .prologue
    .line 251
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 254
    sub-long v0, v2, v0

    long-to-int v0, v0

    return v0
.end method

.method private m(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(F)V
    .locals 3

    .prologue
    .line 172
    const-string v0, "sc_a"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method protected a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 141
    .line 142
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->a:Landroid/content/Context;

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v1

    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    :cond_0
    move-object p1, v0

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    .line 152
    const-string v1, "ll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "lla"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "llf"

    invoke-static {p1}, Lcom/mopub/common/AdUrlGenerator;->b(Landroid/location/Location;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-ne p1, v0, :cond_2

    .line 158
    const-string v0, "llsdk"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    return-void
.end method

.method protected a(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1

    .prologue
    .line 200
    const-string v0, "ct"

    invoke-direct {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->a(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 201
    return-void
.end method

.method protected a(Lcom/mopub/common/ClientMetadata;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->a(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->a([Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->j(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->c(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/mopub/common/AdUrlGenerator;->d:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->a(Landroid/location/Location;)V

    .line 222
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->d(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->e(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->a(Landroid/graphics/Point;)V

    .line 226
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->a(F)V

    .line 228
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->f(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->g(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->h(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->i(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->a(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 237
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->l(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->b()V

    .line 240
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    const-string v0, "mr"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    const-string v0, "nv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    const-string v0, "z"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    const-string v0, "o"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 182
    if-nez p1, :cond_0

    const-string v0, ""

    .line 183
    :goto_0
    const-string v1, "mcc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->m(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    if-nez p1, :cond_0

    const-string v0, ""

    .line 188
    :goto_0
    const-string v1, "mnc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->m(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    const-string v0, "cn"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "bundle"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->b:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->c:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->d:Landroid/location/Location;

    .line 125
    return-object p0
.end method
