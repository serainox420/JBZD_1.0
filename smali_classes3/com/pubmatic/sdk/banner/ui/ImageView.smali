.class public Lcom/pubmatic/sdk/banner/ui/ImageView;
.super Landroid/widget/ImageView;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;
    }
.end annotation


# instance fields
.field private gifDecoder:Lcom/pubmatic/sdk/banner/ui/GifDecoder;

.field private gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifDecoder:Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    .line 30
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/GifDecoder;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifDecoder:Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pubmatic/sdk/banner/ui/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/ui/ImageView;->setGifBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private resetGifState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->interrupt()V

    .line 71
    iput-object v1, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    .line 74
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method private setGifBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 87
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    :goto_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 92
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getImageGifDecoder()Lcom/pubmatic/sdk/banner/ui/GifDecoder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifDecoder:Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    return-object v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->resetGifState()V

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method public setImageGifDecoder(Lcom/pubmatic/sdk/banner/ui/GifDecoder;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getFrameCount()I

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->resetGifState()V

    .line 52
    if-nez p1, :cond_1

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifDecoder:Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    .line 57
    new-instance v1, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    invoke-direct {v1, p0, v0}, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;-><init>(Lcom/pubmatic/sdk/banner/ui/ImageView;Lcom/pubmatic/sdk/banner/ui/ImageView$1;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    .line 58
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView;->gifWorker:Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->start()V

    goto :goto_0
.end method
