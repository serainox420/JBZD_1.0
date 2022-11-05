.class Lcom/smartadserver/android/library/ui/SASVideoView$1;
.super Ljava/lang/Object;
.source "SASVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASVideoView;->a(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/smartadserver/android/library/ui/SASVideoView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASVideoView;II)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->c:Lcom/smartadserver/android/library/ui/SASVideoView;

    iput p2, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->a:I

    iput p3, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->c:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->a:I

    iget v2, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->b:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->c:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->c:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->a(Lcom/smartadserver/android/library/ui/SASVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->c:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASVideoView;->b(Lcom/smartadserver/android/library/ui/SASVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 71
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->c:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->requestLayout()V

    .line 72
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASVideoView$1;->c:Lcom/smartadserver/android/library/ui/SASVideoView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->invalidate()V

    .line 73
    return-void
.end method
