.class Lcom/madsdk/AdView$3$4;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AdView$3;->resize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madsdk/AdView$3;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView$3;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 259
    iget-object v0, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$1800(Lcom/madsdk/AdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v0}, Lcom/madsdk/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    iget v1, v1, Lcom/madsdk/javascript/ResizeProperties;->height:I

    invoke-static {v1}, Lcom/madsdk/AdView;->dpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    iget v1, v1, Lcom/madsdk/javascript/ResizeProperties;->width:I

    invoke-static {v1}, Lcom/madsdk/AdView;->dpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 263
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-virtual {v1, v0}, Lcom/madsdk/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v0, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/madsdk/AdWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/madsdk/javascript/ResizeProperties;->allowOffscreen:Z

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    iget v1, v1, Lcom/madsdk/javascript/ResizeProperties;->height:I

    invoke-static {v1}, Lcom/madsdk/AdView;->dpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 267
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    iget v1, v1, Lcom/madsdk/javascript/ResizeProperties;->width:I

    invoke-static {v1}, Lcom/madsdk/AdView;->dpToPx(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    iget v1, v1, Lcom/madsdk/javascript/ResizeProperties;->offsetX:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 272
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$1700(Lcom/madsdk/AdView;)Lcom/madsdk/javascript/ResizeProperties;

    move-result-object v1

    iget v1, v1, Lcom/madsdk/javascript/ResizeProperties;->offsetY:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 274
    iget-object v1, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v1, v1, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v1}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/madsdk/AdWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    const-string v1, "resized"

    invoke-static {v0, v1}, Lcom/madsdk/AdView;->access$900(Lcom/madsdk/AdView;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v0

    const-string v1, "javascript: mraid.fireEvent(\'sizeChanged\');"

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 280
    :goto_1
    return-void

    .line 269
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/madsdk/AdView$3$4;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$100(Lcom/madsdk/AdView;)Lcom/madsdk/AdWebView;

    move-result-object v0

    const-string v1, "javascript: mraid.fireEvent(\'error\', \'The close region can\'t be offscreen\', \'resize\');"

    invoke-virtual {v0, v1}, Lcom/madsdk/AdWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
