.class Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;
.super Ljava/lang/Thread;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/ui/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/banner/ui/ImageView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/banner/ui/ImageView;Lcom/pubmatic/sdk/banner/ui/ImageView$1;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;-><init>(Lcom/pubmatic/sdk/banner/ui/ImageView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$100(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getFrameCount()I

    move-result v6

    .line 107
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$100(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getLoopCount()I

    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    const/4 v0, 0x1

    move v5, v0

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$200(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;

    move-result-object v0

    if-ne v0, p0, :cond_2

    if-nez v5, :cond_1

    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_2

    move v1, v0

    :cond_1
    move v3, v4

    .line 114
    :goto_1
    if-ge v3, v6, :cond_0

    .line 116
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$100(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getDelay(I)I

    move-result v0

    .line 117
    if-gez v0, :cond_3

    .line 118
    const/16 v0, 0x64

    move v2, v0

    .line 120
    :goto_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$100(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getFrame(I)[I

    move-result-object v0

    .line 122
    iget-object v7, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    .line 123
    invoke-static {v7}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$100(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-static {v8}, Lcom/pubmatic/sdk/banner/ui/ImageView;->access$100(Lcom/pubmatic/sdk/banner/ui/ImageView;)Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 122
    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 125
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->this$0:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v8, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker$1;

    invoke-direct {v8, p0, v7}, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker$1;-><init>(Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/pubmatic/sdk/banner/ui/ImageView$Worker;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 141
    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_0
.end method
