.class Lcom/millennialmedia/InterstitialAd$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field final synthetic b:Lcom/millennialmedia/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$1;->b:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$1;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play list load timed out"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$1;->b:Lcom/millennialmedia/InterstitialAd;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$1;->a:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->b(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 328
    return-void
.end method
