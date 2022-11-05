.class Lcom/facebook/ads/internal/view/d/b/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/b$3;->a(Lcom/facebook/ads/internal/view/d/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b/b$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/b$3;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/b$3$1;->a:Lcom/facebook/ads/internal/view/d/b/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/b$3$1;->a:Lcom/facebook/ads/internal/view/d/b/b$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/b$3;->a:Lcom/facebook/ads/internal/view/d/b/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/b;->getVideoView()Lcom/facebook/ads/internal/view/m;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/b$3$1;->a:Lcom/facebook/ads/internal/view/d/b/b$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b/b$3;->a:Lcom/facebook/ads/internal/view/d/b/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/b;->getVideoView()Lcom/facebook/ads/internal/view/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->e()V

    goto :goto_0
.end method
