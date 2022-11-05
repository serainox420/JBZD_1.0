.class final Lcom/smaato/soma/internal/e/a$b$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/e/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/smaato/soma/internal/e/a$b;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/internal/e/a$b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 421
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$b$a;->c:Lcom/smaato/soma/internal/e/a$b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 427
    iput-boolean v0, p0, Lcom/smaato/soma/internal/e/a$b$a;->a:Z

    .line 428
    iput-boolean v0, p0, Lcom/smaato/soma/internal/e/a$b$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/internal/e/a$b;Lcom/smaato/soma/internal/e/a$1;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/e/a$b$a;-><init>(Lcom/smaato/soma/internal/e/a$b;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/smaato/soma/internal/e/a$b$a$1;

    invoke-direct {v0, p0, p3}, Lcom/smaato/soma/internal/e/a$b$a$1;-><init>(Lcom/smaato/soma/internal/e/a$b$a;F)V

    .line 460
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$b$a$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 437
    return v0
.end method
