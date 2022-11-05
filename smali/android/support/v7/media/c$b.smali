.class final Landroid/support/v7/media/c$b;
.super Landroid/os/Handler;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/c;


# direct methods
.method constructor <init>(Landroid/support/v7/media/c;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Landroid/support/v7/media/c$b;->a:Landroid/support/v7/media/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 435
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 441
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/media/c$b;->a:Landroid/support/v7/media/c;

    invoke-virtual {v0}, Landroid/support/v7/media/c;->g()V

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/c$b;->a:Landroid/support/v7/media/c;

    invoke-virtual {v0}, Landroid/support/v7/media/c;->e()V

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
