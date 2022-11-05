.class final Landroid/support/v7/media/MediaRouteProviderService$b;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/MediaRouteProviderService;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$b;->a:Landroid/support/v7/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 527
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 531
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 536
    :goto_0
    return-void

    .line 533
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService$b;->a:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;)V

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
