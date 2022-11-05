.class public Lcom/smartadserver/android/library/ui/SASCloseButton;
.super Landroid/widget/RelativeLayout;
.source "SASCloseButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;
    }
.end annotation


# static fields
.field public static final a:[I


# instance fields
.field private b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

.field private c:Landroid/widget/TextView;

.field private d:J

.field private e:J

.field private f:Landroid/view/animation/Animation;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartadserver/android/library/ui/SASCloseButton;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0xb
        0xc
        0x9
        0xe
        0xf
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const v6, 0x3f19999a    # 0.6f

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->d:J

    .line 48
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->g:Z

    .line 58
    new-instance v0, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    .line 60
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->f:Landroid/view/animation/Animation;

    .line 62
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setVisibility(I)V

    .line 66
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getPaddingLeft()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getPaddingLeft()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 73
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 77
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    const-string v2, "sans-serif-light"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 85
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 93
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 94
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, v8}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->addView(Landroid/view/View;)V

    .line 100
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASCloseButton;J)J
    .locals 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->d:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->d:J

    return-wide v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->f:Landroid/view/animation/Animation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 226
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->f:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setVisibility(I)V

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASCloseButton;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a()V

    return-void
.end method

.method private static a([ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    .prologue
    .line 347
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/smartadserver/android/library/ui/SASCloseButton;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 348
    sget-object v1, Lcom/smartadserver/android/library/ui/SASCloseButton;->a:[I

    aget v1, v1, v0

    aget v2, p0, v0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-void
.end method

.method private static a(I)[I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    const/4 v1, -0x1

    .line 320
    packed-switch p0, :pswitch_data_0

    .line 340
    :pswitch_0
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v1, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 343
    :goto_0
    return-object v0

    .line 322
    :pswitch_1
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v2, v0, v3

    aput v2, v0, v4

    aput v1, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 325
    :pswitch_2
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v2, v0, v3

    aput v1, v0, v4

    aput v1, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 328
    :pswitch_3
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v1, v0, v3

    aput v1, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 331
    :pswitch_4
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v2, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 334
    :pswitch_5
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v2, v0, v3

    aput v1, v0, v4

    aput v2, v0, v5

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v2, v0, v1

    goto :goto_0

    .line 337
    :pswitch_6
    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v2, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    aput v1, v0, v6

    const/4 v2, 0x5

    aput v1, v0, v2

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASCloseButton;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASCloseButton;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/SASCloseButton;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/SASCloseButton;)Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 303
    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->g:Z

    .line 305
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->a()V

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->g:Z

    .line 308
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v0, p1, p2}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->a(II)V

    goto :goto_0
.end method

.method public declared-synchronized a(IIZ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 233
    monitor-enter p0

    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->d:J

    .line 234
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->e:J

    .line 242
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->g:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    const/16 v1, 0x3e8

    if-le p2, v1, :cond_0

    const/4 v0, 0x1

    .line 245
    :cond_0
    const/16 v1, 0xc8

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->d:J

    .line 247
    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(Z)V

    .line 251
    new-instance v0, Lcom/smartadserver/android/library/ui/SASCloseButton$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASCloseButton$1;-><init>(Lcom/smartadserver/android/library/ui/SASCloseButton;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/smartadserver/android/library/ui/SASCloseButton;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_2
    if-eqz p1, :cond_1

    .line 259
    const-wide/16 v0, -0x1

    :try_start_1
    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->e:J

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setVisibility(I)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 4

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 268
    new-instance v0, Lcom/smartadserver/android/library/ui/SASCloseButton$2;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/SASCloseButton$2;-><init>(Lcom/smartadserver/android/library/ui/SASCloseButton;Z)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCloseButtonVisibility()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASCloseButton;->b:Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/SASCloseButton$CloseButtonImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void
.end method

.method public setCloseButtonPosition(I)V
    .locals 2

    .prologue
    .line 115
    invoke-static {p1}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(I)[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a([ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 117
    return-void
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, p1, v0, v0}, Lcom/smartadserver/android/library/ui/SASCloseButton;->a(IIZ)V

    .line 296
    return-void
.end method
