.class public Lcom/facebook/ads/internal/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/d;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/d/a/e;

.field private final b:Lcom/facebook/ads/internal/view/d/a/k;

.field private final c:Lcom/facebook/ads/internal/view/d/a/i;

.field private final d:Lcom/facebook/ads/internal/view/d/a/c;

.field private final e:Lcom/facebook/ads/AudienceNetworkActivity;

.field private final f:Lcom/facebook/ads/internal/view/m;

.field private final g:Lcom/facebook/ads/internal/view/d$a;

.field private h:Lcom/facebook/ads/internal/util/ad;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/q$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/q$1;-><init>(Lcom/facebook/ads/internal/view/q;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/q;->a:Lcom/facebook/ads/internal/view/d/a/e;

    new-instance v0, Lcom/facebook/ads/internal/view/q$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/q$2;-><init>(Lcom/facebook/ads/internal/view/q;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/q;->b:Lcom/facebook/ads/internal/view/d/a/k;

    new-instance v0, Lcom/facebook/ads/internal/view/q$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/q$3;-><init>(Lcom/facebook/ads/internal/view/q;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/q;->c:Lcom/facebook/ads/internal/view/d/a/i;

    new-instance v0, Lcom/facebook/ads/internal/view/q$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/q$4;-><init>(Lcom/facebook/ads/internal/view/q;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/q;->d:Lcom/facebook/ads/internal/view/d/a/c;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/q;->e:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/internal/view/m;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/b;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/d/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/q;->b:Lcom/facebook/ads/internal/view/d/a/k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/q;->c:Lcom/facebook/ads/internal/view/d/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/q;->d:Lcom/facebook/ads/internal/view/d/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/q;->a:Lcom/facebook/ads/internal/view/d/a/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/q;->g:Lcom/facebook/ads/internal/view/d$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->setIsFullScreen(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->setVolume(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/q;)Lcom/facebook/ads/AudienceNetworkActivity;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->e:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/q;)Lcom/facebook/ads/internal/view/d$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->g:Lcom/facebook/ads/internal/view/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 9

    const/4 v2, 0x0

    const-string v0, "autoplay"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "videoURL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "videoMPD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "videoLogger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string v1, "clientToken"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "videoReportURL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "videoSeekTime"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/internal/view/q;->i:I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/m;->setAutoplay(Z)V

    new-instance v0, Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/util/ad;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/view/m;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/q;->h:Lcom/facebook/ads/internal/util/ad;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/internal/view/m;->setVideoMPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/internal/view/m;->setVideoURI(Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/ads/internal/view/q;->i:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    iget v1, p0, Lcom/facebook/ads/internal/view/q;->i:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/m;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/m;->setControlsAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d$a;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->g:Lcom/facebook/ads/internal/view/d$a;

    const-string v1, "videoInterstitalEvent"

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/f;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/d/a/f;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->e()V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->g:Lcom/facebook/ads/internal/view/d$a;

    const-string v1, "videoInterstitalEvent"

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/g;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/d/a/g;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->d()V

    return-void
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->g:Lcom/facebook/ads/internal/view/d$a;

    const-string v1, "videoInterstitalEvent"

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/o;

    iget v3, p0, Lcom/facebook/ads/internal/view/q;->i:I

    iget-object v4, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/m;->getCurrentPosition()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/internal/view/d/a/o;-><init>(II)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->h:Lcom/facebook/ads/internal/util/ad;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/ad;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q;->f:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->g()V

    return-void
.end method
