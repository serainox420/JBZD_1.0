.class public Lcom/google/android/gms/internal/zzgt;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field private static final zzGl:[F


# instance fields
.field private zzGm:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzgt;->zzGl:[F

    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgs;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/google/android/gms/internal/zzgt;->zzGl:[F

    invoke-direct {v1, v2, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgs;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzgt;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/zzpp;->zza(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgs;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x47470001

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgs;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgs;->getTextColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgs;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v1

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzel;->zzeT()Lcom/google/android/gms/internal/zzqe;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Lcom/google/android/gms/internal/zzqe;->zzb(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzgt;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x47470002

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgs;->zzfL()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_3

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgt;->zzGm:Landroid/graphics/drawable/AnimationDrawable;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgt;->zzGm:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzgs;->zzfM()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcO()Lcom/google/android/gms/internal/zzpp;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgt;->zzGm:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpp;->zza(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzgt;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzGm:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgt;->zzGm:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method
