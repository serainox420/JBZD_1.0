.class Lcom/openx/dialogs/AdBaseDialog$3$1;
.super Ljava/lang/Object;
.source "AdBaseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/dialogs/AdBaseDialog$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/dialogs/AdBaseDialog$3;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/openx/dialogs/AdBaseDialog$3;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iput-object p2, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMRAIDExpandProperties(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/openx/view/mraid/BaseJSInterface;->setExpandProperties(Ljava/lang/String;)V

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/openx/view/mraid/BaseJSInterface;->setExpandProperties(Ljava/lang/String;)V

    .line 208
    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog;->webViewBase:Lcom/openx/view/WebViewBase;

    invoke-virtual {v0}, Lcom/openx/view/WebViewBase;->getMRAID()Lcom/openx/view/mraid/BaseJSInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/mraid/BaseJSInterface;->getExpandProperties()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    if-eqz v3, :cond_0

    const-string v0, "useCustomClose"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v1, v1, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    const-string v4, "width"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/openx/dialogs/AdBaseDialog;->mDefinedWidthForExpand:I

    .line 212
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v1, v1, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    const-string v4, "height"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/openx/dialogs/AdBaseDialog;->mDefinedHeightForExpand:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_1
    iget-object v1, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v1, v1, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iput-boolean v0, v1, Lcom/openx/dialogs/AdBaseDialog;->hasCustomClose:Z

    .line 222
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    iput-boolean v2, v0, Lcom/openx/dialogs/AdBaseDialog;->hasExpandProperties:Z

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 209
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 217
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 215
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0, v0}, Lcom/openx/dialogs/AdBaseDialog$3$1;->getMRAIDExpandProperties(Landroid/os/Message;)V

    .line 193
    iget-object v0, p0, Lcom/openx/dialogs/AdBaseDialog$3$1;->this$1:Lcom/openx/dialogs/AdBaseDialog$3;

    iget-object v0, v0, Lcom/openx/dialogs/AdBaseDialog$3;->this$0:Lcom/openx/dialogs/AdBaseDialog;

    invoke-virtual {v0}, Lcom/openx/dialogs/AdBaseDialog;->MRAIDContinue()V

    .line 194
    return-void
.end method
