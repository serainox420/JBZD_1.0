.class final Landroid/support/v7/media/l$b;
.super Landroid/support/v7/media/c$d;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/l;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/support/v7/media/l$a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/support/v7/media/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 352
    iput-object p1, p0, Landroid/support/v7/media/l$b;->a:Landroid/support/v7/media/l;

    invoke-direct {p0}, Landroid/support/v7/media/c$d;-><init>()V

    .line 346
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/l$b;->e:I

    .line 353
    iput-object p2, p0, Landroid/support/v7/media/l$b;->b:Ljava/lang/String;

    .line 354
    iput-object p3, p0, Landroid/support/v7/media/l$b;->c:Ljava/lang/String;

    .line 355
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v7/media/l$b;->a:Landroid/support/v7/media/l;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/l;->a(Landroid/support/v7/media/l$b;)V

    .line 384
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/l$b;->d:Z

    .line 402
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    iget v1, p0, Landroid/support/v7/media/l$b;->h:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/l$a;->a(II)V

    .line 405
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/media/l$a;)V
    .locals 2

    .prologue
    .line 358
    iput-object p1, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    .line 359
    iget-object v0, p0, Landroid/support/v7/media/l$b;->b:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v7/media/l$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/l$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/l$b;->h:I

    .line 360
    iget-boolean v0, p0, Landroid/support/v7/media/l$b;->d:Z

    if-eqz v0, :cond_1

    .line 361
    iget v0, p0, Landroid/support/v7/media/l$b;->h:I

    invoke-virtual {p1, v0}, Landroid/support/v7/media/l$a;->d(I)V

    .line 362
    iget v0, p0, Landroid/support/v7/media/l$b;->e:I

    if-ltz v0, :cond_0

    .line 363
    iget v0, p0, Landroid/support/v7/media/l$b;->h:I

    iget v1, p0, Landroid/support/v7/media/l$b;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/l$a;->b(II)V

    .line 364
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/l$b;->e:I

    .line 366
    :cond_0
    iget v0, p0, Landroid/support/v7/media/l$b;->f:I

    if-eqz v0, :cond_1

    .line 367
    iget v0, p0, Landroid/support/v7/media/l$b;->h:I

    iget v1, p0, Landroid/support/v7/media/l$b;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/l$a;->c(II)V

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/l$b;->f:I

    .line 371
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/support/v7/media/g$c;)Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    iget v1, p0, Landroid/support/v7/media/l$b;->h:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v7/media/l$a;->a(ILandroid/content/Intent;Landroid/support/v7/media/g$c;)Z

    move-result v0

    .line 431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/l$b;->d:Z

    .line 389
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    iget v1, p0, Landroid/support/v7/media/l$b;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l$a;->d(I)V

    .line 392
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    iget v1, p0, Landroid/support/v7/media/l$b;->h:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/l$a;->b(II)V

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    iput p1, p0, Landroid/support/v7/media/l$b;->e:I

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/l$b;->f:I

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/l$b;->a(I)V

    .line 397
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    iget v1, p0, Landroid/support/v7/media/l$b;->h:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/l$a;->c(II)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget v0, p0, Landroid/support/v7/media/l$b;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/media/l$b;->f:I

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    iget v1, p0, Landroid/support/v7/media/l$b;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l$a;->c(I)V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/l$b;->g:Landroid/support/v7/media/l$a;

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/l$b;->h:I

    .line 379
    :cond_0
    return-void
.end method
