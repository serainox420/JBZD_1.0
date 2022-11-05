.class Lcom/openx/view/mraid/BaseJSInterface$2;
.super Ljava/lang/Object;
.source "BaseJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/BaseJSInterface;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/BaseJSInterface;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/BaseJSInterface;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/openx/view/mraid/BaseJSInterface$2;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 421
    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface$2;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-static {v1}, Lcom/openx/view/mraid/BaseJSInterface;->access$000(Lcom/openx/view/mraid/BaseJSInterface;)Lcom/openx/view/WebViewBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBase;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 422
    iget-object v1, p0, Lcom/openx/view/mraid/BaseJSInterface$2;->this$0:Lcom/openx/view/mraid/BaseJSInterface;

    invoke-static {v1}, Lcom/openx/view/mraid/BaseJSInterface;->access$000(Lcom/openx/view/mraid/BaseJSInterface;)Lcom/openx/view/WebViewBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openx/view/WebViewBase;->setDefaultPosition(Landroid/graphics/Rect;)V

    .line 423
    return-void
.end method
