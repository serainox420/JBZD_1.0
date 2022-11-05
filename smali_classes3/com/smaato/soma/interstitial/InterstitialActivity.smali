.class public Lcom/smaato/soma/interstitial/InterstitialActivity;
.super Lcom/smaato/soma/interstitial/BaseActivity;
.source "InterstitialActivity.java"

# interfaces
.implements Lcom/smaato/soma/g;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/smaato/soma/interstitial/BaseActivity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/interstitial/InterstitialActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/InterstitialActivity;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/smaato/soma/interstitial/InterstitialActivity;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/InterstitialActivity;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/smaato/soma/interstitial/InterstitialActivity;->a:Z

    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 149
    :try_start_0
    new-instance v0, Lcom/smaato/soma/interstitial/InterstitialActivity$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$6;-><init>(Lcom/smaato/soma/interstitial/InterstitialActivity;)V

    .line 158
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity$6;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/smaato/soma/interstitial/InterstitialActivity$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$4;-><init>(Lcom/smaato/soma/interstitial/InterstitialActivity;)V

    .line 117
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity$4;->c()Ljava/lang/Object;

    .line 118
    invoke-super {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->onBackPressed()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/smaato/soma/interstitial/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Lcom/smaato/soma/interstitial/InterstitialActivity$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$1;-><init>(Lcom/smaato/soma/interstitial/InterstitialActivity;)V

    .line 62
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity$1;->c()Ljava/lang/Object;

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/smaato/soma/interstitial/InterstitialActivity$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$5;-><init>(Lcom/smaato/soma/interstitial/InterstitialActivity;)V

    .line 135
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity$5;->c()Ljava/lang/Object;

    .line 136
    invoke-super {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->onDestroy()V

    .line 137
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 138
    return-void
.end method

.method public onWillCloseLandingPage(Lcom/smaato/soma/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingLandingPageFailed;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/smaato/soma/interstitial/InterstitialActivity$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$3;-><init>(Lcom/smaato/soma/interstitial/InterstitialActivity;)V

    .line 100
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity$3;->c()Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public onWillOpenLandingPage(Lcom/smaato/soma/j;)V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/smaato/soma/interstitial/InterstitialActivity$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/InterstitialActivity$2;-><init>(Lcom/smaato/soma/interstitial/InterstitialActivity;)V

    .line 80
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/InterstitialActivity$2;->c()Ljava/lang/Object;

    .line 81
    return-void
.end method
