.class public Lcom/adcolony/sdk/AdColonyNativeAdView;
.super Lcom/adcolony/sdk/ax;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;
    }
.end annotation


# instance fields
.field q:Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;

.field r:Z

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/e;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/adcolony/sdk/ax;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/e;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->h:Z

    .line 31
    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "engagement_enabled"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->r:Z

    .line 32
    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "engagement_click_action"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->s:Ljava/lang/String;

    .line 33
    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "engagement_click_action_type"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->t:Ljava/lang/String;

    .line 34
    iget-object v0, p2, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "engagement_text"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->u:Ljava/lang/String;

    .line 36
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->r:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;-><init>(Lcom/adcolony/sdk/AdColonyNativeAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->q:Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;

    .line 40
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->q:Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->q:Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;

    new-instance v1, Lcom/adcolony/sdk/AdColonyNativeAdView$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/AdColonyNativeAdView$1;-><init>(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic destroy()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/adcolony/sdk/ax;->destroy()Z

    move-result v0

    return v0
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->g:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to getAdvertiserName() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 70
    const-string v0, ""

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->g:Z

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to getDescription() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 124
    const-string v0, ""

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEngagementButton()Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->g:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to getEngagementButton() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 159
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->q:Lcom/adcolony/sdk/AdColonyNativeAdView$EngagementButton;

    goto :goto_0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->j:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iget-boolean v1, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->g:Z

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v2, "Ignoring call to getIcon() as view has been destroyed"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->j:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->g:Z

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to getTitle() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 108
    const-string v0, ""

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/adcolony/sdk/ax;->getZoneID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEngagementEnabled()Z
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->g:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/adcolony/sdk/u;->e:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring call to isEngagementEnabled() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyNativeAdView;->r:Z

    goto :goto_0
.end method

.method public bridge synthetic pause()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/adcolony/sdk/ax;->pause()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resume()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/adcolony/sdk/ax;->resume()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setMuted(Z)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/adcolony/sdk/ax;->setMuted(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setVolume(F)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/adcolony/sdk/ax;->setVolume(F)Z

    move-result v0

    return v0
.end method
