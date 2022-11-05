.class Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$1;
.super Landroid/os/Handler;
.source "VideoAdSDKControllerUsingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$1;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
