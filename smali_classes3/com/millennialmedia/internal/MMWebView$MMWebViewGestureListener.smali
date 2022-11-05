.class Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MMWebViewGestureListener"
.end annotation


# instance fields
.field a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    .line 339
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;->a:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onClicked()V

    .line 347
    const/4 v0, 0x1

    return v0
.end method
