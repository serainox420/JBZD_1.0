.class final Lcom/flurry/sdk/gh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gh;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gh;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/flurry/sdk/gh$2;->a:Lcom/flurry/sdk/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/flurry/sdk/gh$2;->a:Lcom/flurry/sdk/gh;

    invoke-static {v0}, Lcom/flurry/sdk/gh;->b(Lcom/flurry/sdk/gh;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/flurry/sdk/gh$2;->a:Lcom/flurry/sdk/gh;

    invoke-static {v0}, Lcom/flurry/sdk/gh;->b(Lcom/flurry/sdk/gh;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 290
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
