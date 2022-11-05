.class Lcom/openx/view/WebViewBase$1;
.super Ljava/lang/Object;
.source "WebViewBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/WebViewBase;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/WebViewBase;


# direct methods
.method constructor <init>(Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/openx/view/WebViewBase$1;->this$0:Lcom/openx/view/WebViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 164
    iget-object v1, p0, Lcom/openx/view/WebViewBase$1;->this$0:Lcom/openx/view/WebViewBase;

    invoke-static {v1, v0}, Lcom/openx/view/WebViewBase;->access$002(Lcom/openx/view/WebViewBase;Z)Z

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
