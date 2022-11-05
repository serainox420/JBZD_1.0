.class Lcom/openx/view/mraid/methods/StorePicture$1$1$1;
.super Ljava/lang/Object;
.source "StorePicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/StorePicture$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/openx/view/mraid/methods/StorePicture$1$1;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/StorePicture$1$1;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/openx/view/mraid/methods/StorePicture$1$1$1;->this$2:Lcom/openx/view/mraid/methods/StorePicture$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/mraid/methods/StorePicture$1$1$1;->this$2:Lcom/openx/view/mraid/methods/StorePicture$1$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/StorePicture$1$1;->this$1:Lcom/openx/view/mraid/methods/StorePicture$1;

    iget-object v1, v1, Lcom/openx/view/mraid/methods/StorePicture$1;->this$0:Lcom/openx/view/mraid/methods/StorePicture;

    invoke-static {v1}, Lcom/openx/view/mraid/methods/StorePicture;->access$100(Lcom/openx/view/mraid/methods/StorePicture;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;->storePicture(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/openx/view/mraid/methods/StorePicture$1$1$1;->this$2:Lcom/openx/view/mraid/methods/StorePicture$1$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/StorePicture$1$1;->this$1:Lcom/openx/view/mraid/methods/StorePicture$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/StorePicture$1;->this$0:Lcom/openx/view/mraid/methods/StorePicture;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/StorePicture;->access$200(Lcom/openx/view/mraid/methods/StorePicture;)Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    const-string v1, "store_picture"

    invoke-static {v1}, Lcom/openx/common/utils/helpers/Utils;->getMRAIDErrMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "storePicture"

    invoke-virtual {v0, v1, v2}, Lcom/openx/view/mraid/BaseJSInterface;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
