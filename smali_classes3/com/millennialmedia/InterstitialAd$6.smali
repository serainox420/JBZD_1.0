.class Lcom/millennialmedia/InterstitialAd$6;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

.field final synthetic b:Lcom/millennialmedia/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$6;->b:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$6;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 748
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$6;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$6;->b:Lcom/millennialmedia/InterstitialAd;

    new-instance v2, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(I)V

    .line 749
    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/InterstitialAd$InterstitialListener;->onLoadFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    .line 750
    return-void
.end method
