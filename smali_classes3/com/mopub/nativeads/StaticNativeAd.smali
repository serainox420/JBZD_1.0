.class public abstract Lcom/mopub/nativeads/StaticNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "StaticNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/ClickInterface;
.implements Lcom/mopub/nativeads/ImpressionInterface;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Double;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->k:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->l:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 197
    const-string v0, "addExtra key is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickDestinationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    const-string v0, "getExtra key is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/StaticNativeAd;->l:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .prologue
    .line 236
    const/16 v0, 0x32

    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->k:I

    return v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public final isImpressionRecorded()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->j:Z

    return v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->d:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public final setClickDestinationUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->c:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public final setIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->b:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public final setImpressionMinTimeViewed(I)V
    .locals 0

    .prologue
    .line 204
    if-ltz p1, :cond_0

    .line 205
    iput p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->k:I

    .line 207
    :cond_0
    return-void
.end method

.method public final setImpressionRecorded()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->j:Z

    .line 257
    return-void
.end method

.method public final setMainImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->a:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public final setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->h:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public final setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->i:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/16 v2, 0x0

    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->g:Ljava/lang/Double;

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_1

    .line 179
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->g:Ljava/lang/Double;

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring attempt to set invalid star rating ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->f:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->e:Ljava/lang/String;

    .line 169
    return-void
.end method
