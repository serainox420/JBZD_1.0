.class Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;
.super Landroid/widget/LinearLayout;
.source "SASNativeVideoControlsLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/SeekBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/util/Timer;

.field private g:Ljava/util/TimerTask;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 299
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    .line 300
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->h:Landroid/view/animation/Animation;

    .line 301
    invoke-virtual {p0, v4}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->setOrientation(I)V

    .line 302
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->setGravity(I)V

    .line 303
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->setVisibility(I)V

    .line 305
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SASNativeVideoControlsVisibility"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->f:Ljava/util/Timer;

    .line 308
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/f/a;->p:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->i:Landroid/graphics/drawable/Drawable;

    .line 309
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/smartadserver/android/library/f/a;->r:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->j:Landroid/graphics/drawable/Drawable;

    .line 311
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    .line 312
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 313
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 316
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 322
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->h:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 325
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$1;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->addView(Landroid/view/View;)V

    .line 340
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v0

    .line 343
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    .line 344
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 345
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 349
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    const-string v2, "-:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 353
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->addView(Landroid/view/View;)V

    .line 356
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    .line 359
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 361
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 362
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 365
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 366
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v2

    .line 368
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 369
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 370
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    new-instance v2, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$2;

    invoke-direct {v2, p0, p1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$2;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 393
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 394
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v2

    .line 395
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 396
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2, v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    .line 400
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    const-string v2, "-:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 403
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 404
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 405
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->addView(Landroid/view/View;)V

    .line 406
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->g:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 507
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 503
    return-void
.end method

.method public a(IZ)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 468
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 470
    sub-int v1, v0, p1

    .line 473
    div-int/lit16 v1, p1, 0x3e8

    .line 474
    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    .line 475
    const-string v2, "00"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 481
    :cond_0
    div-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_1
    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 488
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;

    move-object v1, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$4;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->c(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    move v2, v0

    .line 417
    :goto_0
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->g:Ljava/util/TimerTask;

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->g:Ljava/util/TimerTask;

    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 419
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->g:Ljava/util/TimerTask;

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 424
    :goto_1
    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->h:Landroid/view/animation/Animation;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 426
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->h:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->setAnimation(Landroid/view/animation/Animation;)V

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->setVisibility(I)V

    .line 434
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 436
    new-instance v0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b$3;-><init>(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->g:Ljava/util/TimerTask;

    .line 452
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->f:Ljava/util/Timer;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->g:Ljava/util/TimerTask;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    move v2, v1

    .line 414
    goto :goto_0

    :cond_4
    move v0, v1

    .line 423
    goto :goto_1

    .line 428
    :cond_5
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->setAnimation(Landroid/view/animation/Animation;)V

    .line 431
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->a:Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->h(Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$b;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
