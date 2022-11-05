.class Lcom/openx/dialogs/AdBaseDialog$4$1;
.super Ljava/lang/Object;
.source "AdBaseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdBaseDialog$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/dialogs/AdBaseDialog$4;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/openx/dialogs/AdBaseDialog$4;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iput-object p2, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMRAIDOrientationProperties(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$4;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->setOrientationProperties(Ljava/lang/String;)V

    .line 258
    const-string v0, "none"

    .line 262
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iget-object v1, v1, Lcom/openx/dialogs/AdBaseDialog$4;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v1, v1, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v1}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/view/mraid/BaseJSInterface;->getOrientationProperties()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v1, "allowOrientationChange"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 264
    :try_start_1
    const-string v4, "forceOrientation"

    const-string v5, "none"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 271
    :goto_0
    iget-object v2, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iget-object v2, v2, Lcom/openx/dialogs/AdBaseDialog$4;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v2, v2, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openx/view/mraid/BaseJSInterface;->isLaunchWithURL()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iget-object v2, v2, Lcom/openx/dialogs/AdBaseDialog$4;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iput-boolean v1, v2, Lcom/openx/dialogs/AdBaseDialog;->allowOrientationChange:Z

    .line 274
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iget-object v1, v1, Lcom/openx/dialogs/AdBaseDialog$4;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    invoke-static {v0}, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->valueOf(Ljava/lang/String;)Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    move-result-object v0

    iput-object v0, v1, Lcom/openx/dialogs/AdBaseDialog;->forceOrientation:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$4;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iput-boolean v3, v0, Lcom/openx/dialogs/AdBaseDialog;->hasOrientationProperties:Z

    .line 278
    return-void

    .line 266
    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v3

    .line 268
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0, v0}, Lcom/openx/dialogs/AdBaseDialog$4$1;->getMRAIDOrientationProperties(Landroid/os/Message;)V

    .line 248
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$4$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$4;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$4;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    invoke-virtual {v0}, Lcom/openx/dialogs/AdBaseDialog;->MRAIDContinue()V

    .line 250
    return-void
.end method
