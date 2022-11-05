.class Lcom/smartadserver/android/library/c/k$b$2;
.super Ljava/lang/Object;
.source "SASMillennialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/k$b;->onLoaded(Lcom/millennialmedia/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InterstitialAd;

.field final synthetic b:Lcom/smartadserver/android/library/c/k$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/k$b;Lcom/millennialmedia/InterstitialAd;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iput-object p2, p0, Lcom/smartadserver/android/library/c/k$b$2;->a:Lcom/millennialmedia/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->d(Lcom/smartadserver/android/library/c/k;)Lcom/millennialmedia/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v1, v1, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InterstitialAd;->show(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/millennialmedia/MMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Lcom/millennialmedia/MMException;->printStackTrace()V

    .line 166
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b$2;->b:Lcom/smartadserver/android/library/c/k$b;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/k$b$2;->a:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/c/k$b;->onClosed(Lcom/millennialmedia/InterstitialAd;)V

    goto :goto_0
.end method
