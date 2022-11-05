.class public Lcom/smartadserver/android/library/c/d;
.super Ljava/lang/Object;
.source "SASAppsfireAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/d$b;,
        Lcom/smartadserver/android/library/c/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/smartadserver/android/library/c/g;

.field private b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

.field private c:Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;

.field private d:Lcom/mngads/sdk/listener/MNGHimonoAdListener;

.field private e:Lcom/smartadserver/android/library/c/d$b;

.field private f:Lcom/smartadserver/android/library/c/i$a;

.field private g:Lcom/smartadserver/android/library/ui/SASAdView;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->a:Lcom/smartadserver/android/library/c/g;

    .line 48
    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/d;->h:Z

    .line 79
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 147
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 149
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 150
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 153
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 154
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 158
    invoke-static {}, Lcom/mngads/sdk/util/MNGAdSize;->getMNGAdsSizeHeight250Rectangle()Lcom/mngads/sdk/util/MNGAdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mngads/sdk/util/MNGAdSize;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 159
    invoke-static {}, Lcom/mngads/sdk/util/MNGAdSize;->getMNGAdsSizeHeight250Rectangle()Lcom/mngads/sdk/util/MNGAdSize;

    move-result-object v0

    .line 166
    :goto_0
    new-instance v2, Lcom/mngads/sdk/nativead/MNGHimonoAd;

    iget-object v3, p0, Lcom/smartadserver/android/library/c/d;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mngads/sdk/nativead/MNGHimonoAd;-><init>(Landroid/content/Context;Lcom/mngads/sdk/util/MNGAdSize;)V

    iput-object v2, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    .line 167
    iget-object v2, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mngads/sdk/nativead/MNGHimonoAd;->setRefreshAutomatically(Z)V

    .line 169
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {v0}, Lcom/mngads/sdk/util/MNGAdSize;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    invoke-virtual {v0, v2}, Lcom/mngads/sdk/nativead/MNGHimonoAd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/mngads/sdk/util/MNGAdSize;->getMNGAdsHeight90Banner()Lcom/mngads/sdk/util/MNGAdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mngads/sdk/util/MNGAdSize;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 161
    invoke-static {}, Lcom/mngads/sdk/util/MNGAdSize;->getMNGAdsHeight90Banner()Lcom/mngads/sdk/util/MNGAdSize;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lcom/mngads/sdk/util/MNGAdSize;->getMNGAdsHeight50Banner()Lcom/mngads/sdk/util/MNGAdSize;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->c:Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;

    .line 252
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    .line 257
    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->a:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smartadserver/android/library/ui/SASAdView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smartadserver/android/library/c/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 178
    if-nez p2, :cond_0

    .line 179
    const-string v0, "Appsfire ad mediation does not support native ad placements"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-object p4, p0, Lcom/smartadserver/android/library/c/d;->f:Lcom/smartadserver/android/library/c/i$a;

    .line 185
    iput-object p2, p0, Lcom/smartadserver/android/library/c/d;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 188
    const-string v0, "PUBLISHER_ID"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    iget-boolean v2, p0, Lcom/smartadserver/android/library/c/d;->h:Z

    if-nez v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/smartadserver/android/library/c/d;->d()V

    .line 192
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartadserver/android/library/c/d;->h:Z

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/d;->g()V

    .line 197
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/d;->f()V

    .line 202
    instance-of v2, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v2, :cond_4

    .line 203
    iget-object v1, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    if-nez v1, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/d;->e()V

    .line 208
    sget-boolean v1, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Lcom/mngads/sdk/nativead/MNGHimonoAd;->setBackgroundColor(I)V

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/d;->d:Lcom/mngads/sdk/listener/MNGHimonoAdListener;

    invoke-virtual {v1, v2}, Lcom/mngads/sdk/nativead/MNGHimonoAd;->setHimonoListener(Lcom/mngads/sdk/listener/MNGHimonoAdListener;)V

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    invoke-virtual {v1, v0}, Lcom/mngads/sdk/nativead/MNGHimonoAd;->loadAd(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->b:Lcom/mngads/sdk/nativead/MNGHimonoAd;

    .line 229
    :goto_1
    new-instance v1, Lcom/smartadserver/android/library/c/d$1;

    invoke-direct {v1, p0, v0}, Lcom/smartadserver/android/library/c/d$1;-><init>(Lcom/smartadserver/android/library/c/d;Landroid/view/View;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/d;->a:Lcom/smartadserver/android/library/c/g;

    goto :goto_0

    .line 220
    :cond_4
    instance-of v2, p2, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v2, :cond_5

    .line 221
    new-instance v2, Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/smartadserver/android/library/c/d;->c:Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;

    .line 222
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->c:Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/d;->e:Lcom/smartadserver/android/library/c/d$b;

    invoke-virtual {v0, v2}, Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;->setNativeAdListener(Lcom/mngads/sdk/listener/MNGNativeAdListener;)V

    .line 223
    iget-object v0, p0, Lcom/smartadserver/android/library/c/d;->c:Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;

    invoke-virtual {v0}, Lcom/mngads/sdk/nativead/MNGDisplayableNativeAd;->loadAd()V

    move-object v0, v1

    .line 224
    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->f:Lcom/smartadserver/android/library/c/i$a;

    .line 264
    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 265
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/d;->g()V

    .line 266
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/d;->f()V

    .line 267
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x1

    .line 273
    :try_start_0
    const-string v1, "com.mngads.sdk.nativead.MNGHimonoAd"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v0, Lcom/smartadserver/android/library/c/d$a;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/d$a;-><init>(Lcom/smartadserver/android/library/c/d;Lcom/smartadserver/android/library/c/d$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->d:Lcom/mngads/sdk/listener/MNGHimonoAdListener;

    .line 142
    new-instance v0, Lcom/smartadserver/android/library/c/d$b;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/d$b;-><init>(Lcom/smartadserver/android/library/c/d;Lcom/smartadserver/android/library/c/d$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/d;->e:Lcom/smartadserver/android/library/c/d$b;

    .line 143
    return-void
.end method
