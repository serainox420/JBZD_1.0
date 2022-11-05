.class public Lcom/mopub/nativeads/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/mopub/nativeads/BaseNativeAd;

.field private final c:Lcom/mopub/nativeads/MoPubAdRenderer;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private g:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAd;->a:Landroid/content/Context;

    .line 71
    iput-object p4, p0, Lcom/mopub/nativeads/NativeAd;->f:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAd;->d:Ljava/util/Set;

    .line 74
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->d:Ljava/util/Set;

    invoke-virtual {p5}, Lcom/mopub/nativeads/BaseNativeAd;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeAd;->e:Ljava/util/Set;

    .line 78
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->e:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->e:Ljava/util/Set;

    invoke-virtual {p5}, Lcom/mopub/nativeads/BaseNativeAd;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    iput-object p5, p0, Lcom/mopub/nativeads/NativeAd;->b:Lcom/mopub/nativeads/BaseNativeAd;

    .line 82
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->b:Lcom/mopub/nativeads/BaseNativeAd;

    new-instance v1, Lcom/mopub/nativeads/NativeAd$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeAd$1;-><init>(Lcom/mopub/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/BaseNativeAd;->setNativeEventListener(Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;)V

    .line 94
    iput-object p6, p0, Lcom/mopub/nativeads/NativeAd;->c:Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 95
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAd;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 206
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->g:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->g:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onImpression(Landroid/view/View;)V

    .line 210
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->h:Z

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->e:Ljava/util/Set;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAd;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->g:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->g:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;->onClick(Landroid/view/View;)V

    .line 224
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->i:Z

    goto :goto_0
.end method

.method public clear(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->b:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/BaseNativeAd;->clear(Landroid/view/View;)V

    goto :goto_0
.end method

.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->c:Lcom/mopub/nativeads/MoPubAdRenderer;

    invoke-interface {v0, p1, p2}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->b:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/BaseNativeAd;->destroy()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->b:Lcom/mopub/nativeads/BaseNativeAd;

    return-object v0
.end method

.method public getMoPubAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->c:Lcom/mopub/nativeads/MoPubAdRenderer;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    return v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->b:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/BaseNativeAd;->prepare(Landroid/view/View;)V

    goto :goto_0
.end method

.method public renderAdView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAd;->c:Lcom/mopub/nativeads/MoPubAdRenderer;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAd;->b:Lcom/mopub/nativeads/BaseNativeAd;

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/MoPubAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V

    .line 149
    return-void
.end method

.method public setMoPubNativeEventListener(Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAd;->g:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v1, "impressionTrackers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeAd;->d:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "clickTrackers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeAd;->e:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "recordedImpression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAd;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "isClicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAd;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "isDestroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAd;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
