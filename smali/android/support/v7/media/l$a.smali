.class final Landroid/support/v7/media/l$a;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/l;

.field private final b:Landroid/os/Messenger;

.field private final c:Landroid/support/v7/media/l$d;

.field private final d:Landroid/os/Messenger;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/media/g$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/l;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 448
    iput-object p1, p0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    .line 441
    iput v0, p0, Landroid/support/v7/media/l$a;->f:I

    .line 445
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    .line 449
    iput-object p2, p0, Landroid/support/v7/media/l$a;->b:Landroid/os/Messenger;

    .line 450
    new-instance v0, Landroid/support/v7/media/l$d;

    invoke-direct {v0, p0}, Landroid/support/v7/media/l$d;-><init>(Landroid/support/v7/media/l$a;)V

    iput-object v0, p0, Landroid/support/v7/media/l$a;->c:Landroid/support/v7/media/l$d;

    .line 451
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/l$a;->c:Landroid/support/v7/media/l$d;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/l$a;->d:Landroid/os/Messenger;

    .line 452
    return-void
.end method

.method private a(IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    .line 623
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 624
    iput p1, v0, Landroid/os/Message;->what:I

    .line 625
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 626
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 627
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 628
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 629
    iget-object v1, p0, Landroid/support/v7/media/l$a;->d:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 631
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/media/l$a;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    const/4 v0, 0x1

    .line 640
    :goto_0
    return v0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 637
    const-string v1, "MediaRouteProviderProxy"

    const-string v2, "Could not send message to service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 633
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 564
    iget v3, p0, Landroid/support/v7/media/l$a;->f:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->f:I

    .line 565
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 566
    const-string v0, "routeId"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "routeGroupId"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v1, 0x3

    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 570
    return v3
.end method

.method public a(II)V
    .locals 6

    .prologue
    .line 584
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 585
    const-string v0, "unselectReason"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 586
    const/4 v1, 0x6

    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 588
    return-void
.end method

.method public a(Landroid/support/v7/media/b;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 618
    const/16 v1, 0xa

    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p1}, Landroid/support/v7/media/b;->d()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    move-object v0, p0

    .line 618
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 620
    return-void

    :cond_0
    move-object v4, v5

    .line 619
    goto :goto_0
.end method

.method public a()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 455
    iget v0, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v7/media/l$a;->e:I

    iput v0, p0, Landroid/support/v7/media/l$a;->h:I

    .line 456
    iget v2, p0, Landroid/support/v7/media/l$a;->h:I

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v6

    .line 468
    :goto_0
    return v1

    .line 463
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/l$a;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    invoke-virtual {p0}, Landroid/support/v7/media/l$a;->binderDied()V

    move v1, v6

    .line 468
    goto :goto_0
.end method

.method public a(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 493
    iget v0, p0, Landroid/support/v7/media/l$a;->h:I

    if-ne p1, v0, :cond_0

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/l$a;->h:I

    .line 495
    iget-object v0, p0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    const-string v1, "Registration failed"

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/l;->a(Landroid/support/v7/media/l$a;Ljava/lang/String;)V

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$c;

    .line 498
    if-eqz v0, :cond_1

    .line 499
    iget-object v1, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 500
    invoke-virtual {v0, v2, v2}, Landroid/support/v7/media/g$c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 502
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    iget v2, p0, Landroid/support/v7/media/l$a;->g:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/support/v7/media/l$a;->h:I

    if-ne p1, v2, :cond_0

    if-lt p2, v0, :cond_0

    .line 514
    iput v1, p0, Landroid/support/v7/media/l$a;->h:I

    .line 515
    iput p2, p0, Landroid/support/v7/media/l$a;->g:I

    .line 516
    iget-object v1, p0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    .line 517
    invoke-static {p3}, Landroid/support/v7/media/d;->a(Landroid/os/Bundle;)Landroid/support/v7/media/d;

    move-result-object v2

    .line 516
    invoke-virtual {v1, p0, v2}, Landroid/support/v7/media/l;->a(Landroid/support/v7/media/l$a;Landroid/support/v7/media/d;)V

    .line 518
    iget-object v1, p0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    invoke-virtual {v1, p0}, Landroid/support/v7/media/l;->a(Landroid/support/v7/media/l$a;)V

    .line 521
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(ILandroid/content/Intent;Landroid/support/v7/media/g$c;)Z
    .locals 6

    .prologue
    .line 606
    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    .line 607
    const/16 v1, 0x9

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    if-eqz p3, :cond_0

    .line 610
    iget-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 612
    :cond_0
    const/4 v0, 0x1

    .line 614
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$c;

    .line 535
    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 537
    invoke-virtual {v0, p2}, Landroid/support/v7/media/g$c;->a(Landroid/os/Bundle;)V

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$c;

    .line 545
    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 547
    invoke-virtual {v0, p2, p3}, Landroid/support/v7/media/g$c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 548
    const/4 v0, 0x1

    .line 550
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 525
    iget v0, p0, Landroid/support/v7/media/l$a;->g:I

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    .line 527
    invoke-static {p1}, Landroid/support/v7/media/d;->a(Landroid/os/Bundle;)Landroid/support/v7/media/d;

    move-result-object v1

    .line 526
    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/l;->a(Landroid/support/v7/media/l$a;Landroid/support/v7/media/d;)V

    .line 528
    const/4 v0, 0x1

    .line 530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 472
    const/4 v1, 0x2

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 473
    iget-object v0, p0, Landroid/support/v7/media/l$a;->c:Landroid/support/v7/media/l$d;

    invoke-virtual {v0}, Landroid/support/v7/media/l$d;->a()V

    .line 474
    iget-object v0, p0, Landroid/support/v7/media/l$a;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 476
    iget-object v0, p0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    iget-object v0, v0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/l$c;

    new-instance v1, Landroid/support/v7/media/l$a$1;

    invoke-direct {v1, p0}, Landroid/support/v7/media/l$a$1;-><init>(Landroid/support/v7/media/l$a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l$c;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.method public b(II)V
    .locals 6

    .prologue
    .line 591
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 592
    const-string v0, "volume"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    const/4 v1, 0x7

    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 595
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public binderDied()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/v7/media/l$a;->a:Landroid/support/v7/media/l;

    iget-object v0, v0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/l$c;

    new-instance v1, Landroid/support/v7/media/l$a$2;

    invoke-direct {v1, p0}, Landroid/support/v7/media/l$a$2;-><init>(Landroid/support/v7/media/l$a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l$c;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 485
    .line 486
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 487
    iget-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$c;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/media/g$c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 486
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 490
    return-void
.end method

.method public c(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 574
    const/4 v1, 0x4

    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 576
    return-void
.end method

.method public c(II)V
    .locals 6

    .prologue
    .line 598
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 599
    const-string v0, "volume"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    const/16 v1, 0x8

    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 602
    return-void
.end method

.method public d(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 579
    const/4 v1, 0x5

    iget v2, p0, Landroid/support/v7/media/l$a;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/l$a;->e:I

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/l$a;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 581
    return-void
.end method
