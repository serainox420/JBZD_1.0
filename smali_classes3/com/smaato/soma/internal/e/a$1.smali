.class Lcom/smaato/soma/internal/e/a$1;
.super Lcom/smaato/soma/internal/e/a$b;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a;-><init>(Landroid/content/Context;Lcom/smaato/soma/p;Lcom/smaato/soma/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/j;

.field final synthetic b:Lcom/smaato/soma/internal/e/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    iput-object p3, p0, Lcom/smaato/soma/internal/e/a$1;->a:Lcom/smaato/soma/j;

    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/internal/e/a$b;-><init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/smaato/soma/internal/e/a$1$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/e/a$1$2;-><init>(Lcom/smaato/soma/internal/e/a$1;)V

    .line 158
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$1$2;->c()Ljava/lang/Object;

    .line 159
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->c()I

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/smaato/soma/internal/e/a$1;->c()V

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->d()I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->c()I

    .line 98
    :goto_0
    invoke-direct {p0}, Lcom/smaato/soma/internal/e/a$1;->c()V

    .line 99
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/smaato/soma/internal/e/a;->d()I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$1;->b:Lcom/smaato/soma/internal/e/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    new-instance v0, Lcom/smaato/soma/internal/e/a$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/smaato/soma/internal/e/a$1$1;-><init>(Lcom/smaato/soma/internal/e/a$1;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 140
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$1$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 105
    return v0
.end method
