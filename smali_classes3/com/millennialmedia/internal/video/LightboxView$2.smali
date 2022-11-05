.class Lcom/millennialmedia/internal/video/LightboxView$2;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->a:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;Z)Z

    .line 190
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->d(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->restart()V

    .line 192
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->e(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$2;->a:Lcom/millennialmedia/internal/video/LightboxView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;JJ)V

    .line 195
    :cond_0
    return-void
.end method
