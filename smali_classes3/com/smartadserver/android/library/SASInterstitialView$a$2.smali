.class Lcom/smartadserver/android/library/SASInterstitialView$a$2;
.super Ljava/util/TimerTask;
.source "SASInterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/SASInterstitialView$a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView$a;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$2;->a:Lcom/smartadserver/android/library/SASInterstitialView$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$2;->a:Lcom/smartadserver/android/library/SASInterstitialView$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$2;->a:Lcom/smartadserver/android/library/SASInterstitialView$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v1, Lcom/smartadserver/android/library/SASInterstitialView$a$2$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/SASInterstitialView$a$2$1;-><init>(Lcom/smartadserver/android/library/SASInterstitialView$a$2;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a$2;->a:Lcom/smartadserver/android/library/SASInterstitialView$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->b(Lcom/smartadserver/android/library/SASInterstitialView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 164
    :cond_0
    return-void
.end method
