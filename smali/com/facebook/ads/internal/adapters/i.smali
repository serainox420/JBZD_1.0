.class public Lcom/facebook/ads/internal/adapters/i;
.super Lcom/facebook/ads/internal/adapters/r;

# interfaces
.implements Lcom/facebook/ads/internal/util/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/adapters/r;",
        "Lcom/facebook/ads/internal/util/af",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field protected a:Lcom/facebook/ads/internal/view/m;

.field protected b:Lorg/json/JSONObject;

.field protected c:Landroid/content/Context;

.field private final e:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/ads/a/a;

.field private j:Lcom/facebook/ads/internal/g/f;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/facebook/ads/internal/util/aj;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/adapters/i;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/r;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$1;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$2;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$3;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$4;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->h:Lcom/facebook/ads/internal/g/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lorg/json/JSONObject;Lcom/facebook/ads/internal/g/f;Landroid/os/Bundle;)V
    .locals 7

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/g/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    const-string v0, "video"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "trackers"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ct"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->q:Ljava/lang/String;

    const-string v2, "videoURL"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->k:Ljava/lang/String;

    const-string v0, "nativeImpression"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->m:Ljava/lang/String;

    const-string v0, "impression"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->n:Ljava/lang/String;

    const-string v0, "click"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/view/m;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->e:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->h:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    if-eqz p5, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/util/ad;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/i;->q:Ljava/lang/String;

    const-string v1, "logger"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/util/ad;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/view/m;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/aj;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/r;Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->setVideoURI(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/util/ad;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/i;->q:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/util/ad;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/view/m;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/aj;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/g/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/g/f;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 11

    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, -0x2

    sget-boolean v0, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    new-instance v3, Lcom/facebook/ads/internal/view/d/b/i;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/facebook/ads/internal/view/d/b/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    new-instance v3, Lcom/facebook/ads/internal/view/d/b/k;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/facebook/ads/internal/view/d/b/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    new-instance v3, Lcom/facebook/ads/internal/view/d/b/b;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/facebook/ads/internal/view/d/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/facebook/ads/internal/view/d/b/c;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lcom/facebook/ads/internal/view/d/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/view/d/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    :cond_3
    const-string v2, "destinationURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "destinationURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "destinationURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/facebook/ads/internal/view/d/b/e;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/i;->q:Ljava/lang/String;

    const-string v5, "learnMore"

    const-string v6, "Learn More"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/facebook/ads/internal/view/d/b/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/d/b/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    :cond_4
    new-instance v1, Lcom/facebook/ads/internal/view/d/b/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    const-string v3, "http://m.facebook.com/ads/ad_choices"

    const-string v4, ""

    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/internal/view/d/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[F)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->c()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v2, Lcom/facebook/ads/internal/view/d/b/h;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    const-string v4, "skipAdIn"

    const-string v5, "Skip Ad in"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "skipAd"

    const-string v6, "Skip Ad"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/facebook/ads/internal/view/d/b/h;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/view/d/b/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x1e

    invoke-virtual {v2, v8, v8, v8, v0}, Lcom/facebook/ads/internal/view/d/b/h;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x41000000    # 8.0f
        0x0
    .end array-data
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lcom/facebook/ads/internal/g/f;Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v0, "ad_response"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/i;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lorg/json/JSONObject;Lcom/facebook/ads/internal/g/f;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/g/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/g/f;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "data"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/i;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lorg/json/JSONObject;Lcom/facebook/ads/internal/g/f;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "countdown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "countdown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v2, "countdown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected c()I
    .locals 4

    const/4 v0, -0x1

    sget-boolean v1, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "skipButton"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "skipButton"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "skipButton"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "skippableSeconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "skippableSeconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/aj;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/aj;->k()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/aj;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/util/aj;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->c()I

    move-result v1

    if-lez v1, :cond_4

    const-string v2, "skippable_seconds"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->q:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/g/f;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/g/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    invoke-interface {v0, p0}, Lcom/facebook/ads/a/a;->c(Lcom/facebook/ads/internal/adapters/r;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/g/f;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/g/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/g/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/g/f;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "logger"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/aj;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/util/aj;->getSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "ad_response"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->g()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/g/f;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/view/m;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/aj;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    return-void
.end method
