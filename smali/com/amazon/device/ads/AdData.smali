.class Lcom/amazon/device/ads/AdData;
.super Ljava/lang/Object;
.source "AdData.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/amazon/device/ads/AAXCreative;",
        ">;"
    }
.end annotation


# instance fields
.field private adHeight:I

.field private adWidth:I

.field private creative:Ljava/lang/String;

.field private creativeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation
.end field

.field private expirationTimeMs:J

.field private fetched:Z

.field private impPixelUrl:Ljava/lang/String;

.field private instrPixelUrl:Ljava/lang/String;

.field private properties:Lcom/amazon/device/ads/AdProperties;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    .line 28
    return-void
.end method


# virtual methods
.method protected getCreative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creative:Ljava/lang/String;

    return-object v0
.end method

.method protected getCreativeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/amazon/device/ads/AdData;->adHeight:I

    return v0
.end method

.method protected getImpressionPixelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->impPixelUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getInstrumentationPixelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->instrPixelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFetched()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdData;->fetched:Z

    return v0
.end method

.method protected getProperties()Lcom/amazon/device/ads/AdProperties;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->properties:Lcom/amazon/device/ads/AdProperties;

    return-object v0
.end method

.method public getTimeToExpire()J
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    iget-wide v2, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    sub-long v0, v2, v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/amazon/device/ads/AdData;->adWidth:I

    return v0
.end method

.method public isExpired()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-wide v2, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 172
    iget-wide v4, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected setCreative(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->creative:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected setCreativeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->creativeTypes:Ljava/util/Set;

    .line 79
    return-void
.end method

.method protected setExpirationTimeMillis(J)V
    .locals 1

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/amazon/device/ads/AdData;->expirationTimeMs:J

    .line 160
    return-void
.end method

.method public setFetched(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdData;->fetched:Z

    .line 132
    return-void
.end method

.method protected setHeight(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/amazon/device/ads/AdData;->adHeight:I

    .line 137
    return-void
.end method

.method protected setImpressionPixelUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->impPixelUrl:Ljava/lang/String;

    .line 115
    return-void
.end method

.method protected setInstrumentationPixelUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->instrPixelUrl:Ljava/lang/String;

    .line 97
    return-void
.end method

.method protected setProperties(Lcom/amazon/device/ads/AdProperties;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amazon/device/ads/AdData;->properties:Lcom/amazon/device/ads/AdProperties;

    .line 62
    return-void
.end method

.method protected setWidth(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/amazon/device/ads/AdData;->adWidth:I

    .line 147
    return-void
.end method
