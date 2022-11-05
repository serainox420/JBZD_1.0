.class Lcom/smaato/soma/internal/e/a$1$1;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/smaato/soma/internal/e/a$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a$1;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$1$1;->c:Lcom/smaato/soma/internal/e/a$1;

    iput-object p2, p0, Lcom/smaato/soma/internal/e/a$1$1;->a:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/smaato/soma/internal/e/a$1$1;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$1$1;->c:Lcom/smaato/soma/internal/e/a$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/e/a;->b(Lcom/smaato/soma/internal/e/a;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/smaato/soma/internal/e/a$1$1;->c:Lcom/smaato/soma/internal/e/a$1;

    iget-object v1, v1, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/e/a;->b(Lcom/smaato/soma/internal/e/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$1;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/smaato/soma/internal/e/a$1$1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$1$1;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/smaato/soma/internal/e/a$1$1;->a:Landroid/view/MotionEvent;

    .line 111
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/smaato/soma/internal/e/a$1$1;->a:Landroid/view/MotionEvent;

    .line 112
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 110
    invoke-virtual {v0, v2, v3, v4}, Lcom/smaato/soma/internal/c/c;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$1;->b:Landroid/view/View;

    check-cast v0, Lcom/smaato/soma/internal/e/a;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/e/a;->setUserClicked(Z)V

    .line 114
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$1;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$1;->c:Lcom/smaato/soma/internal/e/a$1;

    iget-object v0, v0, Lcom/smaato/soma/internal/e/a$1;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x65

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$1$1;->c:Lcom/smaato/soma/internal/e/a$1;

    iget-object v2, v2, Lcom/smaato/soma/internal/e/a$1;->a:Lcom/smaato/soma/j;

    invoke-virtual {v2}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1$1;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    .line 120
    :cond_1
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v2, "SOMA"

    const-string v3, "Click was outside the banner view, skipping expand ..."

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 126
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$1$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
