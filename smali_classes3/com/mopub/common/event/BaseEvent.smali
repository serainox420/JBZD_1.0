.class public abstract Lcom/mopub/common/event/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/event/BaseEvent$Builder;,
        Lcom/mopub/common/event/BaseEvent$SamplingRate;,
        Lcom/mopub/common/event/BaseEvent$Category;,
        Lcom/mopub/common/event/BaseEvent$Name;,
        Lcom/mopub/common/event/BaseEvent$AppPlatform;,
        Lcom/mopub/common/event/BaseEvent$SdkProduct;,
        Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/Integer;

.field private final C:J

.field private D:Lcom/mopub/common/ClientMetadata;

.field private final E:D

.field private final a:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

.field private final b:Lcom/mopub/common/event/BaseEvent$Name;

.field private final c:Lcom/mopub/common/event/BaseEvent$Category;

.field private final d:Lcom/mopub/common/event/BaseEvent$SdkProduct;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/Double;

.field private final j:Ljava/lang/Double;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/Integer;

.field private final m:Ljava/lang/Integer;

.field private final n:Ljava/lang/Double;

.field private final o:Ljava/lang/Double;

.field private final p:Ljava/lang/Double;

.field private final q:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/Double;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/mopub/common/event/BaseEvent$Builder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->a(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->a:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    .line 164
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->b(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$Name;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->b:Lcom/mopub/common/event/BaseEvent$Name;

    .line 165
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->c(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$Category;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->c:Lcom/mopub/common/event/BaseEvent$Category;

    .line 166
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->d(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$SdkProduct;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->d:Lcom/mopub/common/event/BaseEvent$SdkProduct;

    .line 167
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->e(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->e:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->f(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->f:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->g(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->g:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->h(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->h:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->i(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->i:Ljava/lang/Double;

    .line 172
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->j(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->j:Ljava/lang/Double;

    .line 173
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->k(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->k:Ljava/lang/String;

    .line 174
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->l(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->n:Ljava/lang/Double;

    .line 175
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->m(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->o:Ljava/lang/Double;

    .line 176
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->n(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->p:Ljava/lang/Double;

    .line 177
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->o(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->x:Ljava/lang/Double;

    .line 178
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->p(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->y:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->q(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->z:Ljava/lang/Integer;

    .line 180
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->r(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->A:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->s(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->B:Ljava/lang/Integer;

    .line 182
    invoke-static {p1}, Lcom/mopub/common/event/BaseEvent$Builder;->t(Lcom/mopub/common/event/BaseEvent$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->E:D

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->C:J

    .line 185
    invoke-static {}, Lcom/mopub/common/ClientMetadata;->getInstance()Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    .line 186
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceScreenWidthDip()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->l:Ljava/lang/Integer;

    .line 188
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceScreenHeightDip()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->m:Ljava/lang/Integer;

    .line 189
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->q:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 190
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->r:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->s:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->t:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->u:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->v:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSimIsoCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/event/BaseEvent;->w:Ljava/lang/String;

    .line 208
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->l:Ljava/lang/Integer;

    .line 199
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->m:Ljava/lang/Integer;

    .line 200
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->q:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .line 201
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->r:Ljava/lang/String;

    .line 202
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->s:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->t:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->u:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->v:Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lcom/mopub/common/event/BaseEvent;->w:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAdCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAdHeightPx()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->j:Ljava/lang/Double;

    return-object v0
.end method

.method public getAdNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidthPx()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->i:Ljava/lang/Double;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppPlatform()Lcom/mopub/common/event/BaseEvent$AppPlatform;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/mopub/common/event/BaseEvent$AppPlatform;->ANDROID:Lcom/mopub/common/event/BaseEvent$AppPlatform;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCategory()Lcom/mopub/common/event/BaseEvent$Category;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->c:Lcom/mopub/common/event/BaseEvent$Category;

    return-object v0
.end method

.method public getClientAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClientDoNotTrack()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->isDoNotTrackSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceScreenHeightDip()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceScreenWidthDip()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoAccuracy()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->p:Ljava/lang/Double;

    return-object v0
.end method

.method public getGeoLat()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->n:Ljava/lang/Double;

    return-object v0
.end method

.method public getGeoLon()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->o:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Lcom/mopub/common/event/BaseEvent$Name;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->b:Lcom/mopub/common/event/BaseEvent$Name;

    return-object v0
.end method

.method public getNetworkIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSimCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSimIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->q:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    return-object v0
.end method

.method public getObfuscatedClientAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const-string v0, "ifa:XXXX"

    return-object v0
.end method

.method public getPerformanceDurationMs()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->x:Ljava/lang/Double;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestRetries()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->B:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestStatusCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->z:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingRate()D
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->E:D

    return-wide v0
.end method

.method public getScribeCategory()Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->a:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    return-object v0
.end method

.method public getSdkProduct()Lcom/mopub/common/event/BaseEvent$SdkProduct;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->d:Lcom/mopub/common/event/BaseEvent$SdkProduct;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent;->D:Lcom/mopub/common/ClientMetadata;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimestampUtcMs()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/mopub/common/event/BaseEvent;->C:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseEvent\nScribeCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getScribeCategory()Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getName()Lcom/mopub/common/event/BaseEvent$Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getCategory()Lcom/mopub/common/event/BaseEvent$Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SdkProduct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getSdkProduct()Lcom/mopub/common/event/BaseEvent$SdkProduct;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SdkVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdUnitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdCreativeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdWidthPx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdWidthPx()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdHeightPx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAdHeightPx()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DspCreativeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppPlatform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppPlatform()Lcom/mopub/common/event/BaseEvent$AppPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceManufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceProduct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceOsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceScreenWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceScreenWidthDip()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceScreenHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getDeviceScreenHeightDip()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GeoLat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getGeoLat()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GeoLon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getGeoLon()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GeoAccuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getGeoAccuracy()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PerformanceDurationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getPerformanceDurationMs()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkOperatorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkOperatorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkIsoCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkSimCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkSimOperatorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkSimIsoCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getNetworkSimIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestStatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RequestRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getRequestRetries()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SamplingRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getSamplingRate()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TimestampUtcMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/mopub/common/event/BaseEvent;->getTimestampUtcMs()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
