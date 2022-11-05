.class public Lcom/adcolony/sdk/AdColonyAdViewActivity;
.super Lcom/adcolony/sdk/b;
.source "SourceFile"


# instance fields
.field l:Lcom/adcolony/sdk/ax;

.field m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adcolony/sdk/b;-><init>()V

    .line 14
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    .line 15
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    instance-of v0, v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->m:Z

    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/z;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->a(Lcom/adcolony/sdk/z;)V

    .line 50
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "v4iap"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 56
    const-string v0, "product_ids"

    invoke-static {v2, v0}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 59
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    if-eqz v0, :cond_1

    .line 61
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->m:Z

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onClosed(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    .line 64
    invoke-static {}, Lcom/adcolony/sdk/AdColonyPubServices;->onAdClosed()V

    .line 65
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdView;

    .line 69
    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "engagement_type"

    .line 70
    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 67
    invoke-virtual {v0, v1, v3, v2}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onIAPEvent(Lcom/adcolony/sdk/AdColonyNativeAdView;Ljava/lang/String;I)V

    .line 88
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v1, v1, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v1, v1, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 92
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    .line 94
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v0, Lcom/adcolony/sdk/ay;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ay;->c(Lcom/adcolony/sdk/ax;)V

    .line 76
    invoke-static {}, Lcom/adcolony/sdk/AdColonyPubServices;->onAdClosed()V

    .line 77
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v0, Lcom/adcolony/sdk/ay;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    .line 81
    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "engagement_type"

    .line 82
    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 79
    invoke-virtual {v0, v1, v3, v2}, Lcom/adcolony/sdk/ay;->a(Lcom/adcolony/sdk/ax;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public bridge synthetic onBackPressed()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onBackPressed()V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->d:I

    .line 23
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/h;->x:Z

    .line 28
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    instance-of v0, v0, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onOpened(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    .line 36
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->l:Lcom/adcolony/sdk/ax;

    iget v0, v0, Lcom/adcolony/sdk/ax;->p:I

    goto :goto_0
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/adcolony/sdk/b;->onResume()V

    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->onWindowFocusChanged(Z)V

    return-void
.end method
