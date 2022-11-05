.class public Lcom/smaato/soma/internal/d/b;
.super Landroid/widget/ImageView;
.source "SkipAdButtonView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/smaato/soma/internal/d/b$1;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/internal/d/b$1;-><init>(Lcom/smaato/soma/internal/d/b;Z)V

    .line 37
    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/b$1;->c()Ljava/lang/Object;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/internal/d/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CloseButtonViewInitFailed;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/d/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CloseButtonViewInitFailed;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    :try_start_0
    new-instance v1, Lcom/smaato/soma/internal/d/b$2;

    invoke-direct {v1, p0}, Lcom/smaato/soma/internal/d/b$2;-><init>(Lcom/smaato/soma/internal/d/b;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/b/a;->a(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/d/b;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v0

    move v1, v0

    .line 73
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/smaato/soma/internal/d/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/b/a;->h(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/smaato/soma/internal/d/b;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 68
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/internal/d/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    throw v0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    new-instance v1, Lcom/smaato/soma/exception/CloseButtonViewInitFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/CloseButtonViewInitFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method
