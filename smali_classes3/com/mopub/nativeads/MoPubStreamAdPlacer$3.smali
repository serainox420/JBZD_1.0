.class Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource$PositioningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 252
    const-string v0, "Unable to show ads because ad positions could not be loaded from the MoPub ad server."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public onLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 247
    return-void
.end method
