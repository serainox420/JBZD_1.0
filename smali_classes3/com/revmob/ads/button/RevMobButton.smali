.class public Lcom/revmob/ads/button/RevMobButton;
.super Landroid/widget/Button;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/revmob/RevMobAdsListener;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/revmob/ads/button/RevMobButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/revmob/ads/button/RevMobButton;->b:Lcom/revmob/RevMobAdsListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/button/RevMobButton;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    iput-object p3, p0, Lcom/revmob/ads/button/RevMobButton;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/revmob/ads/a/c;->a:I

    invoke-direct {p0}, Lcom/revmob/ads/button/RevMobButton;->setClickListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/button/RevMobButton;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/button/RevMobButton;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/revmob/ads/button/RevMobButton;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/button/RevMobButton;->a:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/revmob/ads/button/RevMobButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/ads/button/RevMobButton;->performLinkClick()V

    return-void
.end method

.method private createLink()Lcom/revmob/ads/link/RevMobLink;
    .locals 3

    new-instance v0, Lcom/revmob/ads/link/RevMobLink;

    iget-object v1, p0, Lcom/revmob/ads/button/RevMobButton;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/revmob/ads/button/RevMobButton;->getPublisherListener()Lcom/revmob/RevMobAdsListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/link/RevMobLink;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    iget-object v1, p0, Lcom/revmob/ads/button/RevMobButton;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/link/RevMobLink;->open(Ljava/lang/String;)V

    return-object v0
.end method

.method private getPublisherListener()Lcom/revmob/RevMobAdsListener;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/button/RevMobButton;->b:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/button/RevMobButton;->b:Lcom/revmob/RevMobAdsListener;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/revmob/a/e;->b:Lcom/revmob/RevMobAdsListener;

    goto :goto_0
.end method

.method private isLoaded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private performLinkClick()V
    .locals 1

    sget v0, Lcom/revmob/ads/a/c;->g:I

    invoke-direct {p0}, Lcom/revmob/ads/button/RevMobButton;->createLink()Lcom/revmob/ads/link/RevMobLink;

    return-void
.end method

.method private setClickListener()V
    .locals 1

    new-instance v0, Lcom/revmob/ads/button/a;

    invoke-direct {v0, p0}, Lcom/revmob/ads/button/a;-><init>(Lcom/revmob/ads/button/RevMobButton;)V

    invoke-virtual {p0, v0}, Lcom/revmob/ads/button/RevMobButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setListener(Lcom/revmob/RevMobAdsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/button/RevMobButton;->b:Lcom/revmob/RevMobAdsListener;

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/button/RevMobButton;->c:Ljava/lang/String;

    return-void
.end method
