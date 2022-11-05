.class public Lcom/adcolony/sdk/AdColonyInterstitialActivity;
.super Lcom/adcolony/sdk/b;
.source "SourceFile"


# instance fields
.field l:Lcom/adcolony/sdk/AdColonyInterstitial;


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
    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-void

    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->s:Lcom/adcolony/sdk/AdColonyInterstitial;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/z;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->a(Lcom/adcolony/sdk/z;)V

    .line 55
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 56
    if-eqz v0, :cond_2

    .line 58
    iget-object v1, v0, Lcom/adcolony/sdk/f;->c:Lcom/adcolony/sdk/y;

    iget-object v1, v1, Lcom/adcolony/sdk/y;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 60
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 64
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, v0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    iget-object v1, v1, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->autoPause()V

    .line 68
    iget-object v0, v0, Lcom/adcolony/sdk/f;->b:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->i:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 72
    :cond_2
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "v4iap"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    const-string v1, "product_ids"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 74
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    const/4 v4, 0x0

    .line 77
    invoke-static {v1, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "engagement_type"

    .line 78
    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {v2, v3, v1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V

    .line 82
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 85
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_4

    .line 87
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v1, v1, Lcom/adcolony/sdk/AdColonyInterstitial;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 94
    invoke-static {}, Lcom/adcolony/sdk/AdColonyPubServices;->onAdClosed()V

    .line 95
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iput-object v5, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    .line 96
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iput-object v5, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 97
    iput-object v5, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 100
    :cond_5
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "finish_ad call finished"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 102
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 103
    return-void
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
    .line 26
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->d:I

    .line 28
    invoke-super {p0, p1}, Lcom/adcolony/sdk/b;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->q:Lcom/adcolony/sdk/c;

    if-nez v0, :cond_2

    .line 41
    :cond_0
    :goto_1
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget v0, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->d:I

    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;->l:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 39
    invoke-static {}, Lcom/adcolony/sdk/AdColonyPubServices;->onAdOpened()V

    goto :goto_1
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
