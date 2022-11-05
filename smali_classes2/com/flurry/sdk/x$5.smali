.class final Lcom/flurry/sdk/x$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/x;
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
    .line 607
    iput-object p1, p0, Lcom/flurry/sdk/x$5;->a:Lcom/flurry/sdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/flurry/sdk/x$5;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->k(Lcom/flurry/sdk/x;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 611
    const/4 v0, 0x1

    return v0
.end method
