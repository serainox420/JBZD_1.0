.class public Lcom/google/android/gms/internal/zzxc;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/gms/cast/framework/IntroductoryOverlay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzxc$zza;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final zzaqM:Z

.field private zzaqO:Z

.field private zzaqR:I

.field private final zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

.field private zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/google/android/gms/R$attr;->castIntroOverlayStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzxc;-><init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;Landroid/util/AttributeSet;I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsU()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqM:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsS()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/R$styleable;->CastIntroOverlay:[I

    sget v2, Lcom/google/android/gms/R$style;->CastIntroOverlay:I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsR()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsR()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v2, Lcom/google/android/gms/internal/zzxc$zza;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzxc$zza;-><init>(Lcom/google/android/gms/internal/zzxc$1;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iput v3, v2, Lcom/google/android/gms/internal/zzxc$zza;->x:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, v2, Lcom/google/android/gms/internal/zzxc$zza;->y:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxc;->zztd()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzxc$zza;->zzaqV:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsX()F

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/zzxc$zza;->zzaqW:F

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    iget v0, v0, Lcom/google/android/gms/internal/zzxc$zza;->zzaqW:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    sget v2, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castFocusRadius:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/zzxc$zza;->zzaqW:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/android/gms/R$layout;->cast_intro_overlay:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsT()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqR:I

    iget v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqR:I

    if-nez v0, :cond_1

    sget v0, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castBackgroundColor:I

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqR:I

    :cond_1
    sget v0, Lcom/google/android/gms/R$id;->textTitle:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsV()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castTitleTextAppearance:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zzsW()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzxc;->zza(Ljava/lang/String;Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxc;->setFitsSystemWindows(Z)V

    return-void

    :cond_3
    iput-object v3, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxc;->zzte()V

    return-void
.end method

.method private zza(Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castButtonText:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget v0, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castButtonBackgroundColor:I

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sget v0, Lcom/google/android/gms/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v1, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castButtonTextAppearance:I

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzxc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzxc$1;-><init>(Lcom/google/android/gms/internal/zzxc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private zztd()Landroid/graphics/Paint;
    .locals 3

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v1
.end method

.method private zzte()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzau(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxc;->remove()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxc;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxc;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzxc;->zzaqR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    iget v2, v2, Lcom/google/android/gms/internal/zzxc$zza;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    iget v3, v3, Lcom/google/android/gms/internal/zzxc$zza;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    iget v4, v4, Lcom/google/android/gms/internal/zzxc$zza;->zzaqW:F

    iget-object v5, p0, Lcom/google/android/gms/internal/zzxc;->zzaqS:Lcom/google/android/gms/internal/zzxc$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzxc$zza;->zzaqV:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzxc;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzax(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzav(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzxc;->zzaqy:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxc;->zzaqO:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxc;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
