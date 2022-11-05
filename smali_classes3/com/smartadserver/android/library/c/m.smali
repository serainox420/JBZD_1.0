.class public Lcom/smartadserver/android/library/c/m;
.super Ljava/lang/Object;
.source "SASUnityAdsAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# instance fields
.field private a:Lcom/smartadserver/android/library/c/i$a;

.field private b:Z

.field private c:Lcom/smartadserver/android/library/ui/SASAdView;

.field private d:I

.field private e:Lcom/smartadserver/android/library/model/b;

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Activity;

.field private h:Lcom/unity3d/ads/IUnityAdsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/m;->b:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/m;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/c/m;->f:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/smartadserver/android/library/c/m$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/c/m$1;-><init>(Lcom/smartadserver/android/library/c/m;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/m;->h:Lcom/unity3d/ads/IUnityAdsListener;

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/m;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/m;Lcom/smartadserver/android/library/model/b;)Lcom/smartadserver/android/library/model/b;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/smartadserver/android/library/c/m;->e:Lcom/smartadserver/android/library/model/b;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/smartadserver/android/library/model/b;
    .locals 6

    .prologue
    .line 175
    const/4 v3, 0x0

    .line 177
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 184
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 201
    :cond_0
    :goto_1
    return-object v3

    .line 189
    :cond_1
    const-string v0, "amount"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    const-string v1, "currency"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 193
    new-instance v2, Lcom/smartadserver/android/library/model/b;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5}, Lcom/smartadserver/android/library/model/b;-><init>(Ljava/lang/String;D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_2
    move-object v3, v0

    .line 198
    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/m;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/smartadserver/android/library/c/m;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/m;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/smartadserver/android/library/c/m;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/c/i$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m;->a:Lcom/smartadserver/android/library/c/i$a;

    return-object v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic f(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/model/b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m;->e:Lcom/smartadserver/android/library/model/b;

    return-object v0
.end method

.method static synthetic g(Lcom/smartadserver/android/library/c/m;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/smartadserver/android/library/c/m;->d:I

    return v0
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/smartadserver/android/library/c/m$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/c/m$2;-><init>(Lcom/smartadserver/android/library/c/m;)V

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
    const/4 v3, 0x0

    .line 99
    invoke-static {v3}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 101
    iput-object p4, p0, Lcom/smartadserver/android/library/c/m;->a:Lcom/smartadserver/android/library/c/i$a;

    .line 102
    iput-object p2, p0, Lcom/smartadserver/android/library/c/m;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 104
    if-nez p2, :cond_0

    .line 105
    const-string v0, "UnityAds ad mediation does not support native ad placements"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 109
    :cond_0
    instance-of v0, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "UnityAds mediation does not support banner placements"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 115
    const-string v0, "UnityAds mediation requires that the Smart AdServer SASAdview (interstitial or banner) be created with an Activity as context parameter"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/m;->g:Landroid/app/Activity;

    .line 121
    const-string v0, "placementID"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/smartadserver/android/library/c/m;->f:Ljava/lang/String;

    .line 122
    const-string v0, "placementType"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/c/m;->d:I

    .line 123
    const-string v0, "reward"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/c/m;->a(Ljava/lang/String;)Lcom/smartadserver/android/library/model/b;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/m;->e:Lcom/smartadserver/android/library/model/b;

    .line 125
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/m;->b:Z

    .line 129
    iget-object v1, p0, Lcom/smartadserver/android/library/c/m;->g:Landroid/app/Activity;

    const-string v0, "gameID"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/m;->h:Lcom/unity3d/ads/IUnityAdsListener;

    invoke-static {v1, v0, v2, v3}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/m;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No UnityAds mediation ad to display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/m;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x1

    .line 166
    :try_start_0
    const-string v1, "com.unity3d.ads.UnityAds"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method
