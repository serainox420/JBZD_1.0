.class Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;
.super Ljava/lang/Object;
.source "InterstitialVASTVideoAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    new-instance v1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    .line 63
    :cond_0
    return-void
.end method

.method public attachSucceeded()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Z)Z

    .line 51
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->shown()V

    .line 53
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->b(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/MMActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->b(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/MMActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    .line 86
    :cond_0
    return-void
.end method

.method public initFailed()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    .line 43
    return-void
.end method

.method public initSucceeded()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initSucceeded()V

    .line 36
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClicked()V

    .line 70
    return-void
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    .line 77
    return-void
.end method
