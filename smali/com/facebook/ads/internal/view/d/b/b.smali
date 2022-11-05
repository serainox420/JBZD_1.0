.class public Lcom/facebook/ads/internal/view/d/b/b;
.super Lcom/facebook/ads/internal/view/d/b/m;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/ads/internal/view/d/a/c;

.field private final d:Lcom/facebook/ads/internal/view/d/a/i;

.field private final e:Lcom/facebook/ads/internal/view/d/a/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/b;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/b$1;-><init>(Lcom/facebook/ads/internal/view/d/b/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/b;->c:Lcom/facebook/ads/internal/view/d/a/c;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/b$2;-><init>(Lcom/facebook/ads/internal/view/d/b/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/b;->d:Lcom/facebook/ads/internal/view/d/a/i;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/b$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/b$3;-><init>(Lcom/facebook/ads/internal/view/d/b/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/b;->e:Lcom/facebook/ads/internal/view/d/a/k;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/b;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b/b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/b;->b:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/view/m;)V
    .locals 2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/b;->e:Lcom/facebook/ads/internal/view/d/a/k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/b;->c:Lcom/facebook/ads/internal/view/d/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/b;->d:Lcom/facebook/ads/internal/view/d/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/d/b/m;->a(Lcom/facebook/ads/internal/view/m;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/b;->getVideoView()Lcom/facebook/ads/internal/view/m;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/b;->getVideoView()Lcom/facebook/ads/internal/view/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->e()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/b;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-super {p0}, Lcom/facebook/ads/internal/view/d/b/m;->onDetachedFromWindow()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0
.end method
