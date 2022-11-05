.class Lcom/millennialmedia/internal/video/VASTVideoView$16;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;I)V
    .locals 0

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$16;->b:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$16;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$16;->b:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->s(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1546
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$16;->b:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->s(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$16;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    return-void
.end method
