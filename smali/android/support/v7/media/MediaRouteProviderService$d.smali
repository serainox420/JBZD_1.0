.class final Landroid/support/v7/media/MediaRouteProviderService$d;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
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
            "Landroid/support/v7/media/MediaRouteProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 653
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$d;->a:Ljava/lang/ref/WeakReference;

    .line 654
    return-void
.end method

.method private a(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService;

    .line 683
    if-eqz v0, :cond_0

    .line 684
    packed-switch p1, :pswitch_data_0

    .line 750
    :cond_0
    :goto_0
    return v1

    .line 686
    :pswitch_0
    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;II)Z

    move-result v1

    goto :goto_0

    .line 689
    :pswitch_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;I)Z

    move-result v1

    goto :goto_0

    .line 692
    :pswitch_2
    const-string v2, "routeId"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 693
    const-string v2, "routeGroupId"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 694
    if-eqz v4, :cond_0

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 695
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 702
    :pswitch_3
    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;II)Z

    move-result v1

    goto :goto_0

    .line 705
    :pswitch_4
    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;II)Z

    move-result v1

    goto :goto_0

    .line 708
    :pswitch_5
    if-nez p6, :cond_1

    .line 712
    :goto_1
    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;III)Z

    move-result v1

    goto :goto_0

    .line 708
    :cond_1
    const-string v2, "unselectReason"

    .line 710
    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 715
    :pswitch_6
    const-string v2, "volume"

    const/4 v3, -0x1

    invoke-virtual {p6, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 716
    if-ltz v2, :cond_0

    .line 717
    invoke-virtual {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;III)Z

    move-result v1

    goto :goto_0

    .line 724
    :pswitch_7
    const-string v2, "volume"

    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 725
    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {v0, p2, p3, p4, v2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;III)Z

    move-result v1

    goto :goto_0

    .line 733
    :pswitch_8
    instance-of v2, p5, Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 734
    check-cast p5, Landroid/content/Intent;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v1

    goto :goto_0

    .line 740
    :pswitch_9
    if-eqz p5, :cond_2

    instance-of v2, p5, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 741
    :cond_2
    check-cast p5, Landroid/os/Bundle;

    .line 742
    invoke-static {p5}, Landroid/support/v7/media/b;->a(Landroid/os/Bundle;)Landroid/support/v7/media/b;

    move-result-object v1

    .line 743
    if-eqz v1, :cond_3

    .line 745
    invoke-virtual {v1}, Landroid/support/v7/media/b;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 743
    :goto_2
    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;ILandroid/support/v7/media/b;)Z

    move-result v1

    goto :goto_0

    .line 745
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 658
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 659
    invoke-static {v2}, Landroid/support/v7/media/e;->a(Landroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    iget v1, p1, Landroid/os/Message;->what:I

    .line 661
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 662
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 663
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    .line 665
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$d;->a(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "MediaRouteProviderSrv"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Message failed, what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", requestId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", arg="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", obj="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", data="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;I)V

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 674
    :cond_2
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v0, :cond_1

    .line 675
    const-string v0, "MediaRouteProviderSrv"

    const-string v1, "Ignoring message without valid reply messenger."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
