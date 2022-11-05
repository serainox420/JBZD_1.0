.class public Lcom/flurry/sdk/gg;
.super Lcom/flurry/sdk/gm;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:I

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/sdk/gg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gg;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 24
    iput v1, p0, Lcom/flurry/sdk/gg;->f:I

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iget-object v0, p0, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gu;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/gu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gu;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gu;

    .line 1071
    iput-object p0, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    .line 37
    :cond_1
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 37
    iget-boolean v0, v0, Lcom/flurry/sdk/cs;->t:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gg;->setAutoPlay(Z)V

    .line 38
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 4042
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gg;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gg;->setVideoUri(Landroid/net/Uri;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gg;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 57
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/flurry/sdk/gm;->a(I)V

    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing progress bar again. Cant play video as its not prepared yet."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->showProgressDialog()V

    .line 114
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video prepared onVideoPrepared."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final a(Ljava/lang/String;FF)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;FF)V

    .line 79
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 80
    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flurry/sdk/gg;->f:I

    .line 81
    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gg;->f:I

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 6078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 7058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 84
    iget-wide v0, v0, Lcom/flurry/sdk/cs;->l:J

    .line 85
    const v2, 0x466a6000    # 15000.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 8078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 9058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 86
    iget-wide v0, v0, Lcom/flurry/sdk/cs;->m:J

    .line 90
    :cond_1
    long-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 91
    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gg;->f:I

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gg;->f:I

    .line 72
    invoke-super {p0}, Lcom/flurry/sdk/gm;->b()V

    .line 73
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Lcom/flurry/sdk/gm;->c()V

    .line 119
    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video prepared suspendVideo."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public cleanupLayout()V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0}, Lcom/flurry/sdk/gm;->cleanupLayout()V

    .line 133
    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video prepared cleanupLayout."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected getViewParams()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 4118
    iget v0, v0, Lcom/flurry/sdk/gp;->j:I

    .line 49
    iput v0, p0, Lcom/flurry/sdk/gg;->f:I

    .line 51
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    return v0
.end method

.method public initLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 139
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    iget-object v1, p0, Lcom/flurry/sdk/gg;->a:Lcom/flurry/sdk/gu;

    .line 9288
    iget-object v1, v1, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 143
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->showProgressDialog()V

    .line 145
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/flurry/sdk/gm;->setAutoPlay(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 5030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 64
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 65
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/gg;->f:I

    .line 67
    :cond_0
    return-void

    .line 65
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/gg;->f:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
