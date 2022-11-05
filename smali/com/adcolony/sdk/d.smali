.class Lcom/adcolony/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/c;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/ay;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyNativeAdViewListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/ax;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    .line 175
    const-string v0, "AdContainer.create"

    new-instance v1, Lcom/adcolony/sdk/d$23;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$23;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 184
    const-string v0, "AdContainer.destroy"

    new-instance v1, Lcom/adcolony/sdk/d$26;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$26;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 193
    const-string v0, "AdContainer.move_view_to_index"

    new-instance v1, Lcom/adcolony/sdk/d$27;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$27;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 202
    const-string v0, "AdContainer.move_view_to_front"

    new-instance v1, Lcom/adcolony/sdk/d$28;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$28;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 211
    const-string v0, "AdSession.finish_fullscreen_ad"

    new-instance v1, Lcom/adcolony/sdk/d$29;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$29;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 220
    const-string v0, "AdSession.start_fullscreen_ad"

    new-instance v1, Lcom/adcolony/sdk/d$30;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$30;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 229
    const-string v0, "AdSession.native_ad_view_available"

    new-instance v1, Lcom/adcolony/sdk/d$31;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$31;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 238
    const-string v0, "AdSession.native_ad_view_unavailable"

    new-instance v1, Lcom/adcolony/sdk/d$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$2;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 247
    const-string v0, "AdSession.expiring"

    new-instance v1, Lcom/adcolony/sdk/d$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$3;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 256
    const-string v0, "AudioPlayer.create"

    new-instance v1, Lcom/adcolony/sdk/d$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$4;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 265
    const-string v0, "AudioPlayer.destroy"

    new-instance v1, Lcom/adcolony/sdk/d$5;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$5;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 277
    const-string v0, "AudioPlayer.play"

    new-instance v1, Lcom/adcolony/sdk/d$6;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$6;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 289
    const-string v0, "AudioPlayer.pause"

    new-instance v1, Lcom/adcolony/sdk/d$7;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$7;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 302
    const-string v0, "AudioPlayer.stop"

    new-instance v1, Lcom/adcolony/sdk/d$8;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$8;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 314
    const-string v0, "AdSession.interstitial_available"

    new-instance v1, Lcom/adcolony/sdk/d$9;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$9;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 323
    const-string v0, "AdSession.interstitial_unavailable"

    new-instance v1, Lcom/adcolony/sdk/d$10;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$10;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 332
    const-string v0, "AdSession.has_audio"

    new-instance v1, Lcom/adcolony/sdk/d$11;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$11;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 341
    const-string v0, "WebView.prepare"

    new-instance v1, Lcom/adcolony/sdk/d$13;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$13;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 352
    const-string v0, "AdSession.iap_event"

    new-instance v1, Lcom/adcolony/sdk/d$14;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$14;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 375
    const-string v0, "AdSession.native_ad_view_finished"

    new-instance v1, Lcom/adcolony/sdk/d$15;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$15;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 395
    const-string v0, "AdSession.native_ad_view_started"

    new-instance v1, Lcom/adcolony/sdk/d$16;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$16;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 415
    const-string v0, "AdSession.destroy_native_ad_view"

    new-instance v1, Lcom/adcolony/sdk/d$17;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$17;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 436
    const-string v0, "AdSession.expanded"

    new-instance v1, Lcom/adcolony/sdk/d$18;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$18;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 453
    const-string v0, "AdSession.native_ad_muted"

    new-instance v1, Lcom/adcolony/sdk/d$19;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$19;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 483
    return-void
.end method

.method a(Lcom/adcolony/sdk/c;)V
    .locals 2

    .prologue
    .line 936
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 938
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v1, Lcom/adcolony/sdk/d$25;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/d$25;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 998
    iget-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    .line 999
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/adcolony/sdk/ax;->g:Z

    if-eqz v0, :cond_1

    .line 1001
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v1, "Removing ad 4"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 1002
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    .line 1006
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 705
    invoke-static {}, Lcom/adcolony/sdk/au;->b()Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 708
    const-string v2, "zone_id"

    invoke-static {v1, v2, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 709
    const-string v2, "fullscreen"

    invoke-static {v1, v2, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 710
    const-string v2, "width"

    sget-object v3, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v3, v3, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v3}, Lcom/adcolony/sdk/j;->l()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 711
    const-string v2, "height"

    sget-object v3, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v3, v3, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v3}, Lcom/adcolony/sdk/j;->m()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 712
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 713
    const-string v2, "id"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    sget-object v2, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v3, "AdSession request with id = "

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 718
    new-instance v2, Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-direct {v2, v0, p2, p1}, Lcom/adcolony/sdk/AdColonyInterstitial;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 724
    iput-object p3, v2, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 725
    const-string v0, "options"

    iget-object v2, p3, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 729
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->a:Lcom/adcolony/sdk/u;

    const-string v2, "Requesting AdColony interstitial advertisement."

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 730
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_request"

    invoke-direct {v0, v2, v4, v1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 731
    return-void
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 5

    .prologue
    .line 670
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->j()F

    move-result v0

    .line 671
    invoke-static {}, Lcom/adcolony/sdk/au;->b()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 674
    const-string v3, "zone_id"

    invoke-static {v2, v3, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 675
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 676
    const-string v3, "width"

    iget v4, p3, Lcom/adcolony/sdk/AdColonyAdSize;->a:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 677
    const-string v3, "height"

    iget v4, p3, Lcom/adcolony/sdk/AdColonyAdSize;->b:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 678
    const-string v0, "id"

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 680
    iput-object p1, p2, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->a:Ljava/lang/String;

    .line 683
    if-eqz p4, :cond_0

    iget-object v0, p4, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "options"

    iget-object v3, p4, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v2, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "AdSession.on_request"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 691
    return-void
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/ay;Lcom/adcolony/sdk/AdColonyAdSize;)V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1016
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Message \'"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    const-string v1, "\' sent with invalid id: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 1017
    return-void
.end method

.method a(Lcom/adcolony/sdk/z;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    iget-object v1, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/ay;

    .line 53
    iget-object v1, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    .line 56
    if-nez v2, :cond_1

    if-nez v5, :cond_1

    .line 58
    iget-object v1, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 69
    sget-object v6, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v0, Lcom/adcolony/sdk/d$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/d$1;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/ay;Lcom/adcolony/sdk/z;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Lcom/adcolony/sdk/z;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    iget-object v0, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ay;

    .line 121
    iget-object v1, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    .line 124
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 126
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 159
    :goto_0
    return v0

    .line 130
    :cond_0
    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 132
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v3, Lcom/adcolony/sdk/d$12;

    invoke-direct {v3, p0, v0, v1}, Lcom/adcolony/sdk/d$12;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/ay;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 159
    goto :goto_0
.end method

.method c(Lcom/adcolony/sdk/z;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 497
    packed-switch v0, :pswitch_data_0

    .line 533
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 500
    :pswitch_0
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v3, "Removing ad 1"

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 501
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 502
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-nez v3, :cond_1

    .line 504
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 505
    goto :goto_1

    .line 508
    :cond_1
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_2

    move v0, v1

    .line 510
    goto :goto_1

    .line 513
    :cond_2
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v2, Lcom/adcolony/sdk/d$20;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/d$20;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method d(Lcom/adcolony/sdk/z;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 545
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 549
    const-string v3, "id"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 551
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 554
    const-string v1, "has_audio"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 555
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 563
    :goto_0
    return v0

    .line 559
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adcolony/sdk/au;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/au;->a(Landroid/media/AudioManager;)Z

    move-result v0

    .line 560
    const-string v1, "has_audio"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 561
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0
.end method

.method e(Lcom/adcolony/sdk/z;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 573
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 577
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-nez v3, :cond_1

    .line 579
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 597
    :goto_0
    return v0

    .line 583
    :cond_1
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_2

    move v0, v1

    .line 585
    goto :goto_0

    .line 588
    :cond_2
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v2, Lcom/adcolony/sdk/d$21;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/d$21;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 597
    const/4 v0, 0x1

    goto :goto_0
.end method

.method f(Lcom/adcolony/sdk/z;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v3, "Removing ad 2"

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 608
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 610
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-nez v3, :cond_1

    .line 612
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 637
    :goto_0
    return v0

    .line 616
    :cond_1
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v2, :cond_2

    move v0, v1

    .line 618
    goto :goto_0

    .line 621
    :cond_2
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v2, Lcom/adcolony/sdk/d$22;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/d$22;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 637
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g(Lcom/adcolony/sdk/z;)Z
    .locals 3

    .prologue
    .line 648
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 650
    iget-object v2, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/f;

    .line 652
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 654
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "Invalid AudioPlayer message!"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 655
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method h(Lcom/adcolony/sdk/z;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 742
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v2

    .line 781
    :goto_0
    return v0

    .line 747
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 748
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 749
    iget-object v1, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/ax;

    .line 751
    iget-object v4, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "orientation"

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    .line 752
    if-eqz v1, :cond_1

    move v4, v3

    .line 755
    :goto_1
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    .line 757
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 758
    goto :goto_0

    :cond_1
    move v4, v2

    .line 752
    goto :goto_1

    .line 761
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 762
    const-string v7, "id"

    invoke-static {v2, v7, v5}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 765
    if-eqz v0, :cond_4

    .line 767
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "module_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->f:I

    .line 768
    iput v6, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->d:I

    .line 769
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->a()Z

    :cond_3
    :goto_2
    move v0, v3

    .line 781
    goto :goto_0

    .line 772
    :cond_4
    if-eqz v4, :cond_3

    .line 774
    iput v6, v1, Lcom/adcolony/sdk/ax;->p:I

    .line 775
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v1, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    iput-object v2, v0, Lcom/adcolony/sdk/h;->q:Lcom/adcolony/sdk/c;

    .line 776
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-object v1, v0, Lcom/adcolony/sdk/h;->r:Lcom/adcolony/sdk/ax;

    .line 777
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const-class v2, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 778
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method i(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 793
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "status"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 796
    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    .line 834
    :goto_0
    return v0

    .line 802
    :cond_1
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v4, "Removing ad 3"

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 804
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 807
    if-nez v0, :cond_2

    .line 809
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 810
    goto :goto_0

    .line 814
    :cond_2
    iget-object v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 816
    sget-object v3, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v4, "Ad attempt finished. Attempting to contact ad listener."

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 818
    if-eqz v1, :cond_3

    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 820
    sget-object v3, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v4, Lcom/adcolony/sdk/d$24;

    invoke-direct {v4, p0, v1, v0}, Lcom/adcolony/sdk/d$24;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 832
    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    move v0, v2

    .line 834
    goto :goto_0
.end method

.method j(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 845
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    .line 899
    :goto_0
    return v0

    .line 850
    :cond_0
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "ad_session_id"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    new-instance v4, Lcom/adcolony/sdk/c;

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-direct {v4, v0, v3}, Lcom/adcolony/sdk/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v4, p1}, Lcom/adcolony/sdk/c;->b(Lcom/adcolony/sdk/z;)V

    .line 857
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    .line 861
    if-nez v0, :cond_1

    move v0, v1

    .line 863
    goto :goto_0

    .line 866
    :cond_1
    iput-object v4, v0, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    move v0, v2

    .line 867
    goto :goto_0

    .line 871
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v5, "Inserting container into hash map tied to ad session id: "

    invoke-virtual {v0, v5}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 872
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "width"

    invoke-static {v0, v5}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 879
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 882
    if-nez v0, :cond_3

    .line 884
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 885
    goto :goto_0

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/c;)V

    .line 895
    :goto_1
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 896
    const-string v1, "success"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 897
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v2

    .line 899
    goto :goto_0

    .line 892
    :cond_4
    iput-boolean v1, v4, Lcom/adcolony/sdk/c;->q:Z

    goto :goto_1
.end method

.method k(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 910
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 915
    if-nez v0, :cond_0

    .line 917
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const/4 v0, 0x0

    .line 924
    :goto_0
    return v0

    .line 921
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 924
    const/4 v0, 0x1

    goto :goto_0
.end method

.method l(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1027
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "view_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 1030
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 1031
    iget-object v1, v0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1034
    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1047
    :goto_0
    return v0

    .line 1039
    :cond_0
    if-nez v1, :cond_1

    .line 1041
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1042
    goto :goto_0

    .line 1045
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 1047
    const/4 v0, 0x1

    goto :goto_0
.end method

.method m(Lcom/adcolony/sdk/z;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1058
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "view_id"

    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 1061
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 1064
    if-nez v0, :cond_0

    .line 1066
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1091
    :goto_0
    return v0

    .line 1071
    :cond_0
    iget v5, v0, Lcom/adcolony/sdk/c;->n:I

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1073
    iget-object v5, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/ax;

    .line 1074
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    if-eqz v5, :cond_2

    .line 1076
    iget-object v0, v1, Lcom/adcolony/sdk/ax;->b:Lcom/adcolony/sdk/c;

    move-object v1, v0

    .line 1080
    :goto_1
    iget-object v0, v1, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1082
    if-nez v0, :cond_1

    .line 1084
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1085
    goto :goto_0

    .line 1088
    :cond_1
    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 1089
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    .line 1091
    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method n(Lcom/adcolony/sdk/z;)Z
    .locals 3

    .prologue
    .line 1105
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 1109
    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const/4 v0, 0x0

    .line 1125
    :goto_0
    return v0

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/f;

    .line 1117
    if-nez v1, :cond_1

    .line 1119
    new-instance v1, Lcom/adcolony/sdk/f;

    iget v0, v0, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v0}, Lcom/adcolony/sdk/f;-><init>(Ljava/lang/String;I)V

    .line 1120
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    :cond_1
    invoke-virtual {v1, p1}, Lcom/adcolony/sdk/f;->a(Lcom/adcolony/sdk/z;)V

    .line 1125
    const/4 v0, 0x1

    goto :goto_0
.end method

.method o(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1141
    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return v0

    .line 1147
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->d(Lcom/adcolony/sdk/z;)V

    .line 1149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method p(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1163
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1165
    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const/4 v0, 0x0

    .line 1173
    :goto_0
    return v0

    .line 1171
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->c(Lcom/adcolony/sdk/z;)V

    .line 1173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method q(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1189
    if-nez v0, :cond_0

    .line 1191
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const/4 v0, 0x0

    .line 1197
    :goto_0
    return v0

    .line 1195
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->b(Lcom/adcolony/sdk/z;)V

    .line 1197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method r(Lcom/adcolony/sdk/z;)Z
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1213
    if-nez v0, :cond_0

    .line 1215
    iget-object v0, p1, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const/4 v0, 0x0

    .line 1221
    :goto_0
    return v0

    .line 1219
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->e(Lcom/adcolony/sdk/z;)V

    .line 1221
    const/4 v0, 0x1

    goto :goto_0
.end method
