.class Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Lcom/mopub/nativeads/c$a;


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
    .line 257
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsAvailable()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a()V

    .line 261
    return-void
.end method
