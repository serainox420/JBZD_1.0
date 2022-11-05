.class final Landroid/support/v7/media/l$d;
.super Landroid/os/Handler;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/l$a;)V
    .locals 1

    .prologue
    .line 663
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 664
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/l$d;->a:Ljava/lang/ref/WeakReference;

    .line 665
    return-void
.end method

.method private a(Landroid/support/v7/media/l$a;IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 690
    packed-switch p2, :pswitch_data_0

    .line 727
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 692
    :pswitch_0
    invoke-virtual {p1, p3}, Landroid/support/v7/media/l$a;->a(I)Z

    goto :goto_0

    .line 696
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/support/v7/media/l$a;->b(I)Z

    goto :goto_0

    .line 700
    :pswitch_2
    if-eqz p5, :cond_1

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 701
    :cond_1
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p4, p5}, Landroid/support/v7/media/l$a;->a(IILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 706
    :pswitch_3
    if-eqz p5, :cond_2

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 707
    :cond_2
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p5}, Landroid/support/v7/media/l$a;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 712
    :pswitch_4
    if-eqz p5, :cond_3

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 713
    :cond_3
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, p5}, Landroid/support/v7/media/l$a;->a(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 719
    :pswitch_5
    if-eqz p5, :cond_4

    instance-of v0, p5, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 720
    :cond_4
    if-nez p6, :cond_5

    const/4 v0, 0x0

    .line 722
    :goto_1
    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p3, v0, p5}, Landroid/support/v7/media/l$a;->a(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 720
    :cond_5
    const-string v0, "error"

    .line 721
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Landroid/support/v7/media/l$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 669
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 673
    iget-object v0, p0, Landroid/support/v7/media/l$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/l$a;

    .line 674
    if-eqz v1, :cond_0

    .line 675
    iget v2, p1, Landroid/os/Message;->what:I

    .line 676
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 677
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 678
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 679
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    .line 680
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/l$d;->a(Landroid/support/v7/media/l$a;IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 682
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message from server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    return-void
.end method
