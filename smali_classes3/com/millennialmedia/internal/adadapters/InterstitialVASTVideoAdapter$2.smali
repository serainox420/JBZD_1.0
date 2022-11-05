.class Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;
.super Lcom/millennialmedia/internal/MMActivity$MMActivityListener;
.source "InterstitialVASTVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
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
    .line 113
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;

    .line 118
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->attach(Lcom/millennialmedia/internal/MMActivity;)V

    .line 119
    return-void
.end method

.method public onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->shutdown()V

    .line 127
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClosed()V

    .line 128
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;->a:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->a(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;

    .line 130
    :cond_0
    return-void
.end method
