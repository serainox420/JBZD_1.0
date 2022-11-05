.class final Lcom/flurry/sdk/x$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/x;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/x;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    new-array v2, v3, [I

    .line 129
    new-array v3, v3, [I

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 131
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 134
    aget v4, v3, v1

    aget v5, v2, v1

    sub-int/2addr v4, v5

    .line 135
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 136
    if-lt v5, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    if-le v5, v4, :cond_2

    :cond_0
    move v0, v1

    .line 147
    :cond_1
    :goto_0
    return v0

    .line 141
    :cond_2
    aget v3, v3, v0

    aget v2, v2, v0

    sub-int v2, v3, v2

    .line 142
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 143
    if-lt v3, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    if-le v3, v2, :cond_1

    :cond_3
    move v0, v1

    .line 144
    goto :goto_0
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->a(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/flurry/sdk/x;->A()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "On item clicked"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/x;->b(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 97
    if-eqz v1, :cond_1

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/x$1;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->c(Lcom/flurry/sdk/x;)V

    .line 112
    :cond_0
    :goto_0
    return v4

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/x;->d(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 104
    if-eqz v1, :cond_2

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/x$1;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->e(Lcom/flurry/sdk/x;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->f(Lcom/flurry/sdk/x;)V

    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->g(Lcom/flurry/sdk/x;)V

    goto :goto_0
.end method
