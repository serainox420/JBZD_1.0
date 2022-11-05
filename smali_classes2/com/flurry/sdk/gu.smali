.class public Lcom/flurry/sdk/gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gv$a;
.implements Lcom/flurry/sdk/gv$b;
.implements Lcom/flurry/sdk/gw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gu$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Lcom/flurry/sdk/gu$a;

.field public b:Lcom/flurry/sdk/gw;

.field public c:Lcom/flurry/sdk/gv;

.field public d:Landroid/widget/RelativeLayout;

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gu;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/flurry/sdk/gu;->e:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gu;->f:Z

    .line 1088
    if-eqz p1, :cond_0

    .line 1092
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 1094
    new-instance v0, Lcom/flurry/sdk/gw;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/gw;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gw$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 1096
    new-instance v0, Lcom/flurry/sdk/gr;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/gr;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gv$b;)V

    iput-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 1098
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1101
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1102
    iget-object v1, p0, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    iget-object v1, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gv;->setAnchorView(Landroid/view/View;)V

    .line 1105
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    iget-object v1, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gw;->setMediaController(Landroid/widget/MediaController;)V

    .line 64
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gj$a;Ljava/util/List;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/gj$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v6, p0, Lcom/flurry/sdk/gu;->e:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gu;->f:Z

    .line 1111
    if-eqz p1, :cond_1

    .line 1115
    if-eqz p2, :cond_1

    .line 1119
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 1121
    new-instance v0, Lcom/flurry/sdk/gw;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/gw;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gw$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 1123
    if-eqz p2, :cond_0

    .line 1124
    sget-object v0, Lcom/flurry/sdk/gj$a;->a:Lcom/flurry/sdk/gj$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/gj$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1125
    new-instance v0, Lcom/flurry/sdk/gt;

    invoke-direct {v0, p1, p0, p3}, Lcom/flurry/sdk/gt;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gv$b;Ljava/util/List;)V

    iput-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 1133
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1136
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1137
    iget-object v1, p0, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_1
    return-void

    .line 1127
    :cond_2
    sget-object v0, Lcom/flurry/sdk/gj$a;->b:Lcom/flurry/sdk/gj$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/gj$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    new-instance v0, Lcom/flurry/sdk/gs;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/gs;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gv$a;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    .line 1129
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    iget-object v1, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gw;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gu;)Lcom/flurry/sdk/gv;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->pause()V

    .line 208
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gw;->seekTo(I)V

    .line 144
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->start()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    instance-of v0, v0, Lcom/flurry/sdk/gr;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 149
    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gu$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/gu$3;-><init>(Lcom/flurry/sdk/gu;II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/flurry/sdk/gu;->f:Z

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/gu$a;->a(Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    iget-object v1, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gv;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    instance-of v0, v0, Lcom/flurry/sdk/gr;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 366
    :cond_2
    return-void

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;FF)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/flurry/sdk/gu$a;->a(Ljava/lang/String;FF)V

    .line 374
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gu$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/flurry/sdk/gu$2;-><init>(Lcom/flurry/sdk/gu;FF)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/flurry/sdk/gu$a;->a(Ljava/lang/String;II)V

    .line 402
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->getCurrentPosition()I

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gu$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/gu$1;-><init>(Lcom/flurry/sdk/gu;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/gu$a;->b(Ljava/lang/String;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->k()V

    .line 395
    :cond_1
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->getHeight()I

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/flurry/sdk/gu;->a()V

    .line 312
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/gu$a;->d(I)V

    .line 314
    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->getWidth()I

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/gu$a;->d(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->k()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->f()V

    .line 238
    :cond_1
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/gu$a;->e(I)V

    .line 338
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 1168
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/gw;->e:Z

    .line 244
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->a()V

    .line 250
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->b()V

    .line 256
    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 1197
    iget-boolean v0, v0, Lcom/flurry/sdk/gw;->e:Z

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->getVolume()I

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 1270
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->e()V

    .line 276
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    sget-object v1, Lcom/flurry/sdk/gu;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error during videoview reset"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->getOffsetStartTime()I

    move-result v0

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 323
    const/16 v0, 0x8

    iput v0, p0, Lcom/flurry/sdk/gu;->e:I

    .line 324
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gu$a;->a()V

    .line 409
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gu$a;->y()V

    .line 416
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gu$a;->b()V

    .line 423
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    .line 444
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->e()V

    .line 445
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->d()V

    .line 447
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->requestLayout()V

    .line 448
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 450
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/flurry/sdk/gu;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gu;->a(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/flurry/sdk/gu;->a()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    .line 467
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->f()V

    .line 468
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->c()V

    .line 470
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->requestLayout()V

    .line 471
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 472
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 476
    .line 1486
    invoke-virtual {p0}, Lcom/flurry/sdk/gu;->g()V

    .line 1491
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    .line 1492
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->g()V

    .line 1493
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->j()V

    .line 1495
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->requestLayout()V

    .line 1496
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 479
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gu$a;->k()V

    .line 482
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 501
    .line 1511
    invoke-virtual {p0}, Lcom/flurry/sdk/gu;->h()V

    .line 1516
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->hide()V

    .line 1517
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->i()V

    .line 1518
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->h()V

    .line 1520
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->requestLayout()V

    .line 1521
    iget-object v0, p0, Lcom/flurry/sdk/gu;->c:Lcom/flurry/sdk/gv;

    invoke-virtual {v0}, Lcom/flurry/sdk/gv;->show()V

    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gu$a;->l()V

    .line 507
    :cond_0
    return-void
.end method
