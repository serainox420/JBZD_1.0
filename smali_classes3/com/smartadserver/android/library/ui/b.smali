.class public Lcom/smartadserver/android/library/ui/b;
.super Landroid/widget/RelativeLayout;
.source "SASVideo360ResetButton.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/b;->a:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/b;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/b;->b:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/b;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50
    sget-object v0, Lcom/smartadserver/android/library/f/a;->w:Landroid/graphics/Bitmap;

    .line 51
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 52
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    sget-object v0, Lcom/smartadserver/android/library/f/a;->x:Landroid/graphics/Bitmap;

    .line 55
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 60
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "#66000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/b;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/b;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/smartadserver/android/library/ui/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/b;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/b;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public setAngle(F)V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/smartadserver/android/library/ui/b$1;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/ui/b$1;-><init>(Lcom/smartadserver/android/library/ui/b;F)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/b;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
