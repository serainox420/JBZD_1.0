.class public Lcom/smaato/soma/b/b;
.super Landroid/widget/ImageView;
.source "CloseButtonView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/smaato/soma/b/b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/b/b$1;-><init>(Lcom/smaato/soma/b/b;)V

    .line 35
    invoke-virtual {v0}, Lcom/smaato/soma/b/b$1;->c()Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CloseButtonViewInitFailed;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lcom/smaato/soma/b/b$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/b/b$2;-><init>(Lcom/smaato/soma/b/b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 50
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/smaato/soma/b/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/smaato/soma/b/b;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/b/a;->a(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/smaato/soma/b/b;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/b/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 56
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/smaato/soma/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0}, Lcom/smaato/soma/b/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    throw v0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Lcom/smaato/soma/exception/CloseButtonViewInitFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CloseButtonViewInitFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CloseButtonViewInitFailed;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smaato/soma/b/b;->a()V

    return-void
.end method
