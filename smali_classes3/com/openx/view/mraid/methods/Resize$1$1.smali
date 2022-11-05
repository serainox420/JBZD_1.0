.class Lcom/openx/view/mraid/methods/Resize$1$1;
.super Landroid/os/Handler;
.source "Resize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/methods/Resize$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openx/view/mraid/methods/Resize$1;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/methods/Resize$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/openx/view/mraid/methods/Resize$1$1;->this$1:Lcom/openx/view/mraid/methods/Resize$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/16 v9, 0x32

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$1$1;->this$1:Lcom/openx/view/mraid/methods/Resize$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/view/mraid/methods/Resize;->access$000(Lcom/openx/view/mraid/methods/Resize;Ljava/lang/String;)V

    .line 88
    const-string v5, "top-right"

    .line 95
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$1$1;->this$1:Lcom/openx/view/mraid/methods/Resize$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static {v0}, Lcom/openx/view/mraid/methods/Resize;->access$100(Lcom/openx/view/mraid/methods/Resize;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v0, "width"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 97
    :try_start_1
    const-string v0, "height"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 98
    :try_start_2
    const-string v0, "customClosePosition"

    const-string v1, "top-right"

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    const-string v0, "offsetX"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 100
    :try_start_3
    const-string v0, "offsetY"

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    .line 101
    :try_start_4
    const-string v4, "allowOffscreen"

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    move v4, v2

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/openx/view/mraid/methods/Resize$1$1;->this$1:Lcom/openx/view/mraid/methods/Resize$1;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v2, v2, Lcom/openx/view/mraid/methods/Resize;->adBaseView:Lcom/openx/view/WebViewBase;

    invoke-virtual {v2}, Lcom/openx/view/WebViewBase;->getDefaultPosition()Landroid/graphics/Rect;

    move-result-object v7

    .line 110
    iget v2, v7, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v1, v1

    sget v8, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    mul-float/2addr v1, v8

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 111
    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v0, v0

    sget v8, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    mul-float/2addr v0, v8

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 112
    mul-int/lit8 v0, v3, 0x1

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 113
    mul-int/lit8 v0, v4, 0x1

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 114
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v7

    .line 116
    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 118
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$1$1;->this$1:Lcom/openx/view/mraid/methods/Resize$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    invoke-static/range {v0 .. v6}, Lcom/openx/view/mraid/methods/Resize;->access$200(Lcom/openx/view/mraid/methods/Resize;IIIILjava/lang/String;Z)V

    .line 120
    iget-object v0, p0, Lcom/openx/view/mraid/methods/Resize$1$1;->this$1:Lcom/openx/view/mraid/methods/Resize$1;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize$1;->this$0:Lcom/openx/view/mraid/methods/Resize;

    iget-object v0, v0, Lcom/openx/view/mraid/methods/Resize;->jsi:Lcom/openx/view/mraid/BaseJSInterface;

    const-string v1, "resized"

    invoke-virtual {v0, v1}, Lcom/openx/view/mraid/BaseJSInterface;->onStateChange(Ljava/lang/String;)V

    .line 121
    return-void

    .line 103
    :catch_0
    move-exception v0

    move v1, v4

    move v2, v4

    move v3, v4

    move v10, v4

    move-object v4, v0

    move v0, v10

    .line 105
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    move v4, v2

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    move v1, v4

    move v2, v4

    move-object v10, v0

    move v0, v4

    move-object v4, v10

    goto :goto_1

    :catch_2
    move-exception v0

    move v1, v4

    move v10, v4

    move-object v4, v0

    move v0, v10

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v10, v0

    move v0, v4

    move-object v4, v10

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_1
.end method
