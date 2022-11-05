.class Lcom/millennialmedia/InterstitialAd$8;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InterstitialAd;->a(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

.field final synthetic b:Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

.field final synthetic c:Lcom/millennialmedia/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd$8;->c:Lcom/millennialmedia/InterstitialAd;

    iput-object p2, p0, Lcom/millennialmedia/InterstitialAd$8;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iput-object p3, p0, Lcom/millennialmedia/InterstitialAd$8;->b:Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd$8;->a:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd$8;->c:Lcom/millennialmedia/InterstitialAd;

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$8;->b:Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/InterstitialAd$InterstitialListener;->onShowFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    .line 808
    return-void
.end method
