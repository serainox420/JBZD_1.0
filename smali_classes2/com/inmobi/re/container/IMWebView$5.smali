.class Lcom/inmobi/re/container/IMWebView$5;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/IMWebView;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    .prologue
    .line 2928
    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2932
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->removeAllViews()V

    .line 2933
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2934
    if-eqz v0, :cond_0

    .line 2935
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2937
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 2938
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "utilityController"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2939
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "displayController"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2940
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "imaiController"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2942
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->a()V

    .line 2943
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$5;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->p(Lcom/inmobi/re/container/IMWebView;)V

    .line 2944
    return-void
.end method
