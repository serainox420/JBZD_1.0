.class Lcom/smartadserver/android/library/SASInterstitialView$3;
.super Ljava/lang/Object;
.source "SASInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/SASInterstitialView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lcom/smartadserver/android/library/SASInterstitialView;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOVE INTERSTITIAL LOADER VIEW"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->c(Lcom/smartadserver/android/library/SASInterstitialView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->c(Lcom/smartadserver/android/library/SASInterstitialView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->c(Lcom/smartadserver/android/library/SASInterstitialView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 342
    :cond_0
    return-void
.end method
