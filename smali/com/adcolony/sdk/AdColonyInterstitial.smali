.class public Lcom/adcolony/sdk/AdColonyInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADCOLONY_IAP_ENGAGEMENT_END_CARD:I = 0x0

.field public static final ADCOLONY_IAP_ENGAGEMENT_OVERLAY:I = 0x1


# instance fields
.field a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field b:Lcom/adcolony/sdk/c;

.field c:Lcom/adcolony/sdk/AdColonyAdOptions;

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/lang/String;

.field h:Z

.field private i:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 32
    iput-object p3, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->g:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->e:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    .line 196
    return-void
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 170
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    .line 175
    :cond_1
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-boolean v0, v1, Lcom/adcolony/sdk/h;->D:Z

    .line 177
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    iput-object v2, v1, Lcom/adcolony/sdk/h;->q:Lcom/adcolony/sdk/c;

    .line 178
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-object p0, v1, Lcom/adcolony/sdk/h;->s:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 180
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    const-string v2, "Launching fullscreen Activity via AdColonyInterstitial\'s launch method."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 182
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    const-class v3, Lcom/adcolony/sdk/AdColonyInterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 185
    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->i:Z

    goto :goto_0
.end method

.method public cancel()Z
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    instance-of v0, v0, Lcom/adcolony/sdk/AdColonyInterstitialActivity;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    iget-object v2, v2, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "AdSession.on_request_close"

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->b:Lcom/adcolony/sdk/c;

    iget v3, v3, Lcom/adcolony/sdk/c;->l:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public destroy()Z
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 158
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 129
    return-void
.end method

.method public show()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v2, :cond_0

    .line 89
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-boolean v2, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->i:Z

    if-eqz v2, :cond_1

    .line 52
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "This ad object has already been shown. Please request a new ad via AdColony.requestInterstitial."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 56
    :cond_1
    iget-boolean v2, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->h:Z

    if-eqz v2, :cond_2

    .line 58
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "This ad object has expired. Please request a new ad via AdColony.requestInterstitial."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 62
    :cond_2
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v2, v2, Lcom/adcolony/sdk/h;->D:Z

    if-eqz v2, :cond_3

    .line 64
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Can not show ad while an interstitial is already active."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 69
    :cond_3
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 70
    const-string v3, "zone_id"

    iget-object v4, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->g:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    const-string v3, "type"

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 72
    const-string v0, "id"

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->e:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    if-eqz v0, :cond_4

    .line 77
    const-string v0, "pre_popup"

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    iget-boolean v3, v3, Lcom/adcolony/sdk/AdColonyAdOptions;->a:Z

    invoke-static {v2, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 78
    const-string v0, "post_popup"

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    iget-boolean v3, v3, Lcom/adcolony/sdk/AdColonyAdOptions;->b:Z

    invoke-static {v2, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 82
    :cond_4
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adcolony/sdk/AdColonyInterstitial;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 83
    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/adcolony/sdk/AdColonyZone;->r:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->t:Lcom/adcolony/sdk/AdColonyRewardListener;

    if-nez v0, :cond_5

    .line 85
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v3, "Rewarded ad: show() called with no reward listener set."

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 88
    :cond_5
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v3, "AdSession.launch_ad_unit"

    invoke-direct {v0, v3, v1, v2}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v1

    .line 89
    goto :goto_0
.end method
