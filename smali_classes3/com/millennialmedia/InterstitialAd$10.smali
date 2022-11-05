.class Lcom/millennialmedia/InterstitialAd$10;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->h(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
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
    .line 852
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$10;->b:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$10;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$10;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$10;->b:Lcom/millennialmedia/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/InterstitialAd$InterstitialListener;->onClicked(Lcom/millennialmedia/InterstitialAd;)V

    .line 857
    return-void
.end method
