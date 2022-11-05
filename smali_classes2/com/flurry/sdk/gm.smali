.class public abstract Lcom/flurry/sdk/gm;
.super Lcom/flurry/sdk/gz;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gu$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected a:Lcom/flurry/sdk/gu;

.field public b:Z

.field public c:I

.field protected d:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gz;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->f:Z

    .line 42
    iput-boolean v1, p0, Lcom/flurry/sdk/gm;->g:Z

    .line 44
    iput-boolean v1, p0, Lcom/flurry/sdk/gm;->b:Z

    .line 45
    iput v1, p0, Lcom/flurry/sdk/gm;->c:I

    .line 46
    iput-boolean v1, p0, Lcom/flurry/sdk/gm;->d:Z

    .line 1464
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->setOrientation(I)V

    .line 70
    return-void
.end method

.method protected static x()V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Lcom/flurry/sdk/gx;

    invoke-direct {v0}, Lcom/flurry/sdk/gx;-><init>()V

    .line 276
    sget v1, Lcom/flurry/sdk/gx$a;->b:I

    iput v1, v0, Lcom/flurry/sdk/gx;->d:I

    .line 13025
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    .line 278
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 23038
    iget-boolean v0, v0, Lcom/flurry/sdk/gp;->c:Z

    .line 594
    :cond_0
    if-eqz v0, :cond_1

    .line 595
    sget-object v0, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    const-string v1, "VideoClose: Firing video close."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    sget-object v0, Lcom/flurry/sdk/bc;->w:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 599
    :cond_1
    return-void
.end method

.method public a()V
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    const-string v2, "Video Close clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 290
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->onViewClose()V

    .line 291
    return-void
.end method

.method protected a(F)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-nez v0, :cond_1

    .line 384
    :cond_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->j()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->d:Z

    .line 372
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 14186
    iget-object v0, v0, Lcom/flurry/sdk/au;->e:Lcom/flurry/sdk/gq;

    .line 373
    iget-boolean v2, p0, Lcom/flurry/sdk/gm;->d:Z

    iget v3, p0, Lcom/flurry/sdk/gm;->c:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/flurry/sdk/gq;->a(ZZIF)V

    .line 15034
    iget-object v0, v0, Lcom/flurry/sdk/gq;->b:Ljava/util/ArrayList;

    .line 376
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gq$a;

    .line 377
    iget-boolean v3, p0, Lcom/flurry/sdk/gm;->d:Z

    iget v4, p0, Lcom/flurry/sdk/gm;->c:I

    invoke-virtual {v0, v1, v3, v4, p1}, Lcom/flurry/sdk/gq$a;->a(ZZIF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15114
    iget-object v0, v0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    iget v3, v0, Lcom/flurry/sdk/dn;->a:I

    .line 379
    if-nez v3, :cond_4

    sget-object v0, Lcom/flurry/sdk/bc;->L:Lcom/flurry/sdk/bc;

    .line 380
    :goto_2
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gm;->b(I)Ljava/util/Map;

    move-result-object v4

    .line 379
    invoke-virtual {p0, v0, v4}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 381
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BeaconTest: Video view event fired, adObj (type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_4
    sget-object v0, Lcom/flurry/sdk/bc;->M:Lcom/flurry/sdk/bc;

    goto :goto_2
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 2152
    iget-object v2, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v2, :cond_3

    .line 2153
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 2222
    iget-object v2, v0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    sget-object v3, Lcom/flurry/sdk/gw$b;->c:Lcom/flurry/sdk/gw$b;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/gw$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/gw;->d:Lcom/flurry/sdk/gw$b;

    sget-object v2, Lcom/flurry/sdk/gw$b;->e:Lcom/flurry/sdk/gw$b;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/gw$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 92
    :goto_0
    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->dismissProgressDialog()V

    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gu;->a(I)V

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getViewParams()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/gu;->b(I)V

    .line 99
    iput-boolean v1, p0, Lcom/flurry/sdk/gm;->g:Z

    .line 101
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2153
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2155
    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->showProgressDialog()V

    goto :goto_1
.end method

.method protected final a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bc;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 322
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 172
    sget-object v0, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video Prepared: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gu;->b(I)V

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->g:Z

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->dismissProgressDialog()V

    .line 203
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 8030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 191
    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/flurry/sdk/gm;->f:Z

    if-nez v1, :cond_2

    if-le v0, v3, :cond_3

    .line 192
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->a(I)V

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 8079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    sget-object v0, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 198
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->f:Lcom/flurry/sdk/bc;

    .line 9079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->dismissProgressDialog()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 213
    invoke-virtual {p0, p3}, Lcom/flurry/sdk/gm;->a(F)V

    .line 9387
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_3

    .line 9391
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 9393
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    .line 10038
    iget-boolean v1, v0, Lcom/flurry/sdk/gp;->c:Z

    .line 9393
    if-nez v1, :cond_0

    .line 10042
    iput-boolean v5, v0, Lcom/flurry/sdk/gp;->c:Z

    .line 9395
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->s()V

    .line 9397
    :cond_0
    div-float v1, p3, p2

    .line 9398
    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 10062
    iget-boolean v2, v0, Lcom/flurry/sdk/gp;->d:Z

    .line 9398
    if-nez v2, :cond_1

    .line 10066
    iput-boolean v5, v0, Lcom/flurry/sdk/gp;->d:Z

    .line 9400
    sget-object v2, Lcom/flurry/sdk/bc;->H:Lcom/flurry/sdk/bc;

    invoke-virtual {p0, v6}, Lcom/flurry/sdk/gm;->b(I)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 9401
    sget-object v2, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BeaconTest: Video 1st quartile event fired, adObj: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 9403
    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    .line 10070
    iget-boolean v2, v0, Lcom/flurry/sdk/gp;->e:Z

    .line 9403
    if-nez v2, :cond_2

    .line 10074
    iput-boolean v5, v0, Lcom/flurry/sdk/gp;->e:Z

    .line 9405
    sget-object v2, Lcom/flurry/sdk/bc;->I:Lcom/flurry/sdk/bc;

    invoke-virtual {p0, v6}, Lcom/flurry/sdk/gm;->b(I)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 9406
    sget-object v2, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BeaconTest: Video 2nd quartile event fired, adObj: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 9408
    :cond_2
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 10078
    iget-boolean v1, v0, Lcom/flurry/sdk/gp;->f:Z

    .line 9408
    if-nez v1, :cond_3

    .line 10082
    iput-boolean v5, v0, Lcom/flurry/sdk/gp;->f:Z

    .line 9410
    sget-object v0, Lcom/flurry/sdk/bc;->J:Lcom/flurry/sdk/bc;

    invoke-virtual {p0, v6}, Lcom/flurry/sdk/gm;->b(I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 9411
    sget-object v0, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BeaconTest: Video 3rd quartile event fired, adObj: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gu;->b(I)V

    .line 218
    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 229
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->e()V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->onViewError()V

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/bb;->q:Lcom/flurry/sdk/bb;

    .line 11040
    iget v2, v2, Lcom/flurry/sdk/bb;->z:I

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "frameworkError"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "implError"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 242
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->dismissProgressDialog()V

    .line 11468
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->setOrientation(I)V

    .line 244
    return-void
.end method

.method protected b(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 424
    const-string v0, "vsa"

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v2, "va"

    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "vph"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v2}, Lcom/flurry/sdk/gu;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v0, "vpw"

    iget-object v2, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v2}, Lcom/flurry/sdk/gu;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v0, "ve"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v0, "vpi"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->i()Z

    move-result v0

    .line 433
    const-string v2, "vm"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v2, "api"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 435
    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->j()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "1"

    .line 434
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v0, "atv"

    .line 438
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    .line 16186
    iget-object v2, v2, Lcom/flurry/sdk/au;->e:Lcom/flurry/sdk/gq;

    .line 17073
    iget v2, v2, Lcom/flurry/sdk/gq;->a:F

    .line 438
    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    if-lez p1, :cond_0

    .line 441
    const-string v0, "vt"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_0
    return-object v1

    .line 425
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 435
    :cond_2
    const-string v0, "2"

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    const-string v2, "Video Play clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->a(I)V

    .line 309
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 252
    sget-object v0, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video Completed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12269
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdFrameIndex()I

    move-result v0

    .line 12270
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdUnit()Lcom/flurry/sdk/cs;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 12271
    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 258
    :goto_0
    sget-object v1, Lcom/flurry/sdk/bc;->j:Lcom/flurry/sdk/bc;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gm;->b(I)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 259
    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BeaconTest: Video completed event fired, adObj: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12468
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gm;->setOrientation(I)V

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/flurry/sdk/gm;->x()V

    .line 266
    :cond_0
    return-void

    .line 12271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x3

    .line 326
    .line 328
    const/4 v1, 0x3

    :try_start_0
    sget-object v2, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Getting video from cache: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 13251
    iget-object v1, v1, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 329
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 339
    sget-object v0, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Precaching: Error using cached file. Loading with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 342
    :cond_1
    return-object v0

    .line 333
    :catch_0
    move-exception v1

    .line 335
    sget-object v2, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    const-string v3, "Precaching: Error accessing cached file."

    invoke-static {v5, v2, v3, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    const-string v2, "Video suspend: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->w()V

    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->e()V

    .line 119
    :cond_0
    return-void
.end method

.method public cleanupLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->c()V

    .line 358
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->dismissProgressDialog()V

    .line 359
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 13525
    iget-object v1, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    if-eqz v1, :cond_0

    .line 13526
    iget-object v1, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v1}, Lcom/flurry/sdk/gv;->k()V

    .line 13527
    iput-object v2, v0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 13529
    :cond_0
    iget-object v1, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v1, :cond_1

    .line 13531
    iput-object v2, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 361
    :cond_1
    iput-object v2, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 363
    :cond_2
    return-void
.end method

.method public final d(I)V
    .locals 5

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 475
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    .line 476
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PlayPause: pauseVideo() Video paused position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    invoke-interface {v4}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18034
    iput p1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 478
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 480
    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 577
    if-lez p1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 21034
    iput p1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 581
    :cond_0
    return-void
.end method

.method public getVideoCompletedFromStateOrVideo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v2, :cond_1

    .line 7086
    iget-boolean v1, v1, Lcom/flurry/sdk/gp;->g:Z

    .line 161
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 7292
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 161
    invoke-virtual {v1}, Lcom/flurry/sdk/gw;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 163
    :cond_1
    return v0
.end method

.method public getVideoController()Lcom/flurry/sdk/gu;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    return-object v0
.end method

.method public getVideoPosition()I
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 20030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 518
    return v0
.end method

.method protected abstract getViewParams()I
.end method

.method public initLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 347
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 350
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 351
    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 13288
    iget-object v1, v1, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 351
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->showProgressDialog()V

    .line 353
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 570
    invoke-super {p0}, Lcom/flurry/sdk/gz;->onActivityDestroy()V

    .line 572
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->u()V

    .line 573
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 556
    invoke-super {p0}, Lcom/flurry/sdk/gz;->onActivityPause()V

    .line 558
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->w()V

    .line 559
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .prologue
    .line 540
    invoke-super {p0}, Lcom/flurry/sdk/gz;->onActivityResume()V

    .line 542
    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->g:Z

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 21030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 548
    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/flurry/sdk/gm;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 549
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->a(I)V

    .line 552
    :cond_1
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 563
    invoke-super {p0}, Lcom/flurry/sdk/gz;->onActivityStop()V

    .line 565
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->c()V

    .line 566
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0, p1}, Lcom/flurry/sdk/gz;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20464
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->setOrientation(I)V

    .line 536
    return-void
.end method

.method protected onViewLoadTimeout()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/flurry/sdk/bc;->u:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method protected s()V
    .locals 4

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 16042
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/gp;->c:Z

    .line 418
    sget-object v0, Lcom/flurry/sdk/bc;->i:Lcom/flurry/sdk/bc;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gm;->b(I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 419
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BeaconTest: Video start event fired, adObj: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video setAutoPlay: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/flurry/sdk/gm;->f:Z

    .line 88
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 122
    sget-object v0, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video set video uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 5030
    iget v1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 125
    iget-object v2, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v2}, Lcom/flurry/sdk/gu;->l()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 6030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 6075
    if-eqz p1, :cond_0

    iget-object v2, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v2, :cond_0

    .line 6076
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 6115
    if-nez p1, :cond_2

    .line 6116
    sget-object v0, Lcom/flurry/sdk/gw;->a:Ljava/lang/String;

    const-string v1, "Video setVideoURI cannot have null value."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6117
    :cond_0
    :goto_1
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->l()I

    move-result v0

    goto :goto_0

    .line 6119
    :cond_2
    iput v0, v1, Lcom/flurry/sdk/gw;->c:I

    .line 6120
    iput-object p1, v1, Lcom/flurry/sdk/gw;->b:Landroid/net/Uri;

    goto :goto_1
.end method

.method protected u()V
    .locals 1

    .prologue
    .line 584
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 21251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 584
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;)V

    .line 585
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 22251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 585
    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->d()V

    .line 586
    return-void
.end method

.method public final w()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    const-string v2, "Video pause: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 2450
    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v1}, Lcom/flurry/sdk/gu;->b()I

    move-result v1

    .line 2451
    if-lez v1, :cond_0

    .line 3034
    iput v1, v0, Lcom/flurry/sdk/gp;->a:I

    .line 2453
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gp;)V

    .line 3459
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 3460
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getViewParams()I

    move-result v1

    .line 4114
    iput v1, v0, Lcom/flurry/sdk/gp;->j:I

    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->a()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->g:Z

    .line 111
    :cond_1
    return-void
.end method

.method public final y()V
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    const-string v2, "Video More Info clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/flurry/sdk/bc;->h:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method public final z()V
    .locals 5

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 19030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 486
    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    .line 19292
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 486
    invoke-virtual {v1}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/gm;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PlayPause: onResumeVideoWithState() Play video position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v4

    invoke-interface {v4}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gu;->a(I)V

    .line 489
    iget-object v0, p0, Lcom/flurry/sdk/gm;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gu;->b(I)V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->g:Z

    .line 492
    :cond_0
    return-void
.end method
