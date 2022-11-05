.class Lcom/millennialmedia/InterstitialAd$11;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->i(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
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
    .line 880
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$11;->b:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$11;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$11;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$11;->b:Lcom/millennialmedia/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/InterstitialAd$InterstitialListener;->onAdLeftApplication(Lcom/millennialmedia/InterstitialAd;)V

    .line 885
    return-void
.end method
