.class public Lcom/facebook/ads/internal/view/m;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/util/aj$a;
.implements Lcom/facebook/ads/internal/view/d/c/e;


# static fields
.field private static final i:Lcom/facebook/ads/internal/view/d/a/l;

.field private static final j:Lcom/facebook/ads/internal/view/d/a/d;

.field private static final k:Lcom/facebook/ads/internal/view/d/a/b;

.field private static final l:Lcom/facebook/ads/internal/view/d/a/n;

.field private static final m:Lcom/facebook/ads/internal/view/d/a/p;

.field private static final n:Lcom/facebook/ads/internal/view/d/a/h;

.field private static final o:Lcom/facebook/ads/internal/view/d/a/j;

.field private static final p:Lcom/facebook/ads/internal/view/d/a/r;

.field private static final q:Lcom/facebook/ads/internal/view/d/a/u;

.field private static final r:Lcom/facebook/ads/internal/view/d/a/t;


# instance fields
.field private final a:Lcom/facebook/ads/internal/g/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/g/r",
            "<",
            "Lcom/facebook/ads/internal/g/s;",
            "Lcom/facebook/ads/internal/g/q;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/facebook/ads/internal/view/d/c/c;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/view/d/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private f:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private g:Lcom/facebook/ads/internal/util/ak;

.field private h:Z

.field private final s:Landroid/os/Handler;

.field private final t:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/l;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/l;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->i:Lcom/facebook/ads/internal/view/d/a/l;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/d;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/d;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->j:Lcom/facebook/ads/internal/view/d/a/d;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/b;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->k:Lcom/facebook/ads/internal/view/d/a/b;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/n;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/n;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->l:Lcom/facebook/ads/internal/view/d/a/n;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/p;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/p;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->m:Lcom/facebook/ads/internal/view/d/a/p;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/h;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/h;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->n:Lcom/facebook/ads/internal/view/d/a/h;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/j;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/j;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->o:Lcom/facebook/ads/internal/view/d/a/j;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/r;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/r;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->p:Lcom/facebook/ads/internal/view/d/a/r;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/u;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/u;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->q:Lcom/facebook/ads/internal/view/d/a/u;

    new-instance v0, Lcom/facebook/ads/internal/view/d/a/t;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/d/a/t;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/view/m;->r:Lcom/facebook/ads/internal/view/d/a/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/m;->e:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/m;->f:Z

    sget-object v0, Lcom/facebook/ads/internal/util/ak;->c:Lcom/facebook/ads/internal/util/ak;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/util/ak;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/m;->h:Z

    new-instance v0, Lcom/facebook/ads/internal/view/m$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/m$2;-><init>(Lcom/facebook/ads/internal/view/m;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->t:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/d/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d/c/c;->setRequestedVolume(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/view/d/c/c;->setVideoStateChangeListener(Lcom/facebook/ads/internal/view/d/c/e;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->s:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/g/r;

    invoke-direct {v0}, Lcom/facebook/ads/internal/g/r;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->t:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/m;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/view/d/c/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/d/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/m;)Lcom/facebook/ads/internal/g/r;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j()Lcom/facebook/ads/internal/view/d/a/n;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/m;->l:Lcom/facebook/ads/internal/view/d/a/n;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/c;->seekTo(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    new-instance v1, Lcom/facebook/ads/internal/view/d/a/o;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/internal/view/d/a/o;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/b/m;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/c/d;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->c:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    sget-object v1, Lcom/facebook/ads/internal/view/m;->i:Lcom/facebook/ads/internal/view/d/a/l;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->h:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    sget-object v1, Lcom/facebook/ads/internal/view/m;->j:Lcom/facebook/ads/internal/view/d/a/d;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->s:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    sget-object v1, Lcom/facebook/ads/internal/view/m;->k:Lcom/facebook/ads/internal/view/d/a/b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    sget-object v1, Lcom/facebook/ads/internal/view/m;->o:Lcom/facebook/ads/internal/view/d/a/j;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->s:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->s:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/view/m$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/m$1;-><init>(Lcom/facebook/ads/internal/view/m;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    sget-object v1, Lcom/facebook/ads/internal/view/m;->n:Lcom/facebook/ads/internal/view/d/a/h;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->s:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->i()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->h:Z

    return v0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->start()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->pause()V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/m;->m:Lcom/facebook/ads/internal/view/d/a/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->a()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->b()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/internal/g/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/internal/g/r",
            "<",
            "Lcom/facebook/ads/internal/g/s;",
            "Lcom/facebook/ads/internal/g/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsAutoPlayFromServer()Lcom/facebook/ads/internal/util/ak;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/util/ak;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/internal/view/d/c/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v0

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d/c/c;->getVolume()F

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d/c/c;->a(Z)V

    return-void
.end method

.method protected i()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/y;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/util/y$a;

    move-result-object v0

    sget-object v3, Lcom/facebook/ads/internal/util/y$a;->c:Lcom/facebook/ads/internal/util/y$a;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getIsAutoPlayFromServer()Lcom/facebook/ads/internal/util/ak;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/util/ak;->c:Lcom/facebook/ads/internal/util/ak;

    if-ne v3, v4, :cond_2

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getIsAutoPlayFromServer()Lcom/facebook/ads/internal/util/ak;

    move-result-object v0

    sget-object v3, Lcom/facebook/ads/internal/util/ak;->a:Lcom/facebook/ads/internal/util/ak;

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    sget-object v1, Lcom/facebook/ads/internal/view/m;->r:Lcom/facebook/ads/internal/view/d/a/t;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/internal/g/r;

    sget-object v1, Lcom/facebook/ads/internal/view/m;->q:Lcom/facebook/ads/internal/view/d/a/u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAutoplay(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/m;->e:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/c;->setControlsAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setIsAutoPlayFromServer(Lcom/facebook/ads/internal/util/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/util/ak;

    return-void
.end method

.method public setIsAutoplayOnMobile(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/m;->f:Z

    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/m;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/c;->setFullScreen(Z)V

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/c;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/d/b/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/m;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/m;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/view/d/b/m;->b(Lcom/facebook/ads/internal/view/m;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/m;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/c;->setup(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/m;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/c;->setRequestedVolume(F)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/m;->p:Lcom/facebook/ads/internal/view/d/a/r;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    return-void
.end method
