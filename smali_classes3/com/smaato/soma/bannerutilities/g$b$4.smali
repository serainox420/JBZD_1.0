.class Lcom/smaato/soma/bannerutilities/g$b$4;
.super Lcom/smaato/soma/l;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$b;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/smaato/soma/bannerutilities/g$b;

.field final synthetic d:Lcom/smaato/soma/bannerutilities/g$b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$b;Landroid/webkit/WebChromeClient$CustomViewCallback;Landroid/view/View;Lcom/smaato/soma/bannerutilities/g$b;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-object p3, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->c:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Banner Client"

    const-string v2, "onShowCustomView()"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 390
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->a:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-static {v0, v1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 391
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 393
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 394
    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    invoke-static {v2, v1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 395
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    iget-object v2, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v2}, Lcom/smaato/soma/bannerutilities/g$b;->b(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 397
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/g$b;->c(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v1}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->c:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 399
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->c:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 400
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v1, Lcom/smaato/soma/bannerutilities/g$b$4$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/bannerutilities/g$b$4$1;-><init>(Lcom/smaato/soma/bannerutilities/g$b$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 424
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$b$4;->d:Lcom/smaato/soma/bannerutilities/g$b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/g$b;->a(Lcom/smaato/soma/bannerutilities/g$b;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 427
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/g$b$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
