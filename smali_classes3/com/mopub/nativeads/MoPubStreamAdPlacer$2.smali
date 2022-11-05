.class Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/c;Lcom/mopub/nativeads/PositioningSource;)V
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
    .line 145
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    .line 152
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;->a:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Z)Z

    goto :goto_0
.end method
