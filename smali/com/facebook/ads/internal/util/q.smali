.class public Lcom/facebook/ads/internal/util/q;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/widget/ImageView;

.field private final d:Lcom/facebook/ads/internal/view/e;

.field private e:Lcom/facebook/ads/internal/util/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/util/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/util/q;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/util/q;->d:Lcom/facebook/ads/internal/view/e;

    iput-object p1, p0, Lcom/facebook/ads/internal/util/q;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/e;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/util/q;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/facebook/ads/internal/util/q;->d:Lcom/facebook/ads/internal/view/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/util/q;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/util/r;)Lcom/facebook/ads/internal/util/q;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/q;->e:Lcom/facebook/ads/internal/util/r;

    return-object p0
.end method

.method protected a([Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/q;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/q;->c:Landroid/widget/ImageView;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/util/q;->d:Lcom/facebook/ads/internal/view/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/util/q;->d:Lcom/facebook/ads/internal/view/e;

    aget-object v1, p1, v2

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/util/q;->e:Lcom/facebook/ads/internal/util/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/util/q;->e:Lcom/facebook/ads/internal/util/r;

    invoke-interface {v0}, Lcom/facebook/ads/internal/util/r;->a()V

    :cond_2
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/util/q;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/internal/util/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected varargs b([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    aget-object v4, p1, v8

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/util/q;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/c/c;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/c/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/c/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/facebook/ads/internal/util/q;->d:Lcom/facebook/ads/internal/view/e;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :try_start_2
    new-instance v2, Lcom/facebook/ads/internal/util/ae;

    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/util/ae;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x42200000    # 40.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/util/ae;->a(I)Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/util/ae;->a()Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    aput-object v1, v2, v8

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v2, v0

    move-object v1, v0

    :goto_1
    sget-object v5, Lcom/facebook/ads/internal/util/q;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error downloading image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/util/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/q;->b([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/q;->a([Landroid/graphics/Bitmap;)V

    return-void
.end method
