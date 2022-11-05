.class public Lcom/smaato/soma/internal/e/a$b;
.super Ljava/lang/Object;
.source "CustomWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/internal/e/a$b$a;
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/smaato/soma/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 417
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$b;->c:Lcom/smaato/soma/internal/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/smaato/soma/internal/e/a$b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smaato/soma/internal/e/a$b$a;-><init>(Lcom/smaato/soma/internal/e/a$b;Lcom/smaato/soma/internal/e/a$1;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {p1, v0}, Lcom/smaato/soma/internal/e/a;->a(Lcom/smaato/soma/internal/e/a;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;

    .line 419
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method
