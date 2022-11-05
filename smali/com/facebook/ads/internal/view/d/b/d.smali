.class public abstract Lcom/facebook/ads/internal/view/d/b/d;
.super Lcom/facebook/ads/internal/view/d/b/m;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Z

.field private d:Lcom/facebook/ads/internal/view/m;

.field private final e:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/ads/internal/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/s",
            "<",
            "Lcom/facebook/ads/internal/view/d/a/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/d/b/d;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/d$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/d$1;-><init>(Lcom/facebook/ads/internal/view/d/b/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->e:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/d$2;-><init>(Lcom/facebook/ads/internal/view/d/b/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->f:Lcom/facebook/ads/internal/g/s;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/d$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/d$3;-><init>(Lcom/facebook/ads/internal/view/d/b/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->g:Lcom/facebook/ads/internal/g/s;

    iput-boolean p2, p0, Lcom/facebook/ads/internal/view/d/b/d;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->b:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/d;->setAlpha(F)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/d;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d/b/d;)Lcom/facebook/ads/internal/view/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->d:Lcom/facebook/ads/internal/view/m;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/view/m;)V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/b/d;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/d;->e:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/d;->f:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/d;->g:Lcom/facebook/ads/internal/g/s;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/d;->d:Lcom/facebook/ads/internal/view/m;

    :cond_0
    return-void
.end method
