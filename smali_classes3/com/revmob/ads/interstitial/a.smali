.class public final Lcom/revmob/ads/interstitial/a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/revmob/ads/interstitial/b/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation


# static fields
.field private static A:I

.field private static B:I


# instance fields
.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:I

.field private F:I

.field private G:I

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/Button;

.field private N:Landroid/widget/Button;

.field private O:Landroid/widget/Button;

.field private P:Ljava/util/ArrayList;

.field private Q:D

.field public a:Lcom/revmob/ads/interstitial/a/b;

.field public b:Landroid/widget/VideoView;

.field public c:Landroid/widget/TextView;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Landroid/os/Handler;

.field protected h:Lcom/revmob/FullscreenActivity;

.field public i:Landroid/media/MediaPlayer;

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/Boolean;

.field public m:D

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:Landroid/os/Handler;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/ads/interstitial/a/b;Lcom/revmob/ads/interstitial/b/a;Lcom/revmob/FullscreenActivity;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->d:Z

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->e:Z

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->x:Landroid/os/Handler;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->k:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a;->m:D

    iput-object p2, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    iput-object p4, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iput-boolean v5, v0, Lcom/revmob/FullscreenActivity;->g:Z

    invoke-virtual {p2}, Lcom/revmob/ads/interstitial/a/b;->E()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->k:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p2}, Lcom/revmob/ads/interstitial/a/b;->m()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p2}, Lcom/revmob/ads/interstitial/a/b;->m()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a;->Q:D

    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->getRequestedOrientation()I

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-boolean v0, v0, Lcom/revmob/FullscreenActivity;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/revmob/ads/interstitial/a/b;->P()I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/revmob/FullscreenActivity;->setRequestedOrientation(I)V

    iput v5, p0, Lcom/revmob/ads/interstitial/a;->F:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/revmob/ads/interstitial/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/revmob/ads/interstitial/a;->B:I

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/revmob/ads/interstitial/a;->A:I

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/revmob/FullscreenActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "RevMobVideoVolume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/revmob/ads/interstitial/a;->K:F

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->h()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/interstitial/a;->addView(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/revmob/ads/interstitial/a;->B:I

    sget v3, Lcom/revmob/ads/interstitial/a;->B:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v2, Lcom/revmob/ads/interstitial/a;->A:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v2, Lcom/revmob/ads/interstitial/a;->A:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->K:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v4}, Lcom/revmob/ads/interstitial/a/b;->s()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    new-instance v2, Lcom/revmob/ads/interstitial/e;

    invoke-direct {v2, p0}, Lcom/revmob/ads/interstitial/e;-><init>(Lcom/revmob/ads/interstitial/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/revmob/ads/interstitial/a;->A:I

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v1, Lcom/revmob/ads/interstitial/a;->A:I

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0xb

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x9

    invoke-static {v2, v4}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v1, v4, v6

    aput v2, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    const/4 v5, 0x3

    aput v2, v4, v5

    aput v1, v4, v8

    const/4 v5, 0x5

    aput v2, v4, v5

    aput v1, v4, v9

    const/4 v1, 0x7

    aput v2, v4, v1

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/revmob/ads/interstitial/a/b;->S()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->L:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->S()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->L:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/revmob/ads/interstitial/b/a;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-direct {v1, v2}, Lcom/revmob/ads/interstitial/b/a;-><init>(Lcom/revmob/FullscreenActivity;)V

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->L:Landroid/widget/Button;

    new-instance v3, Lcom/revmob/ads/interstitial/h;

    invoke-direct {v3, p0, v1}, Lcom/revmob/ads/interstitial/h;-><init>(Lcom/revmob/ads/interstitial/a;Lcom/revmob/ads/interstitial/b/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x68

    invoke-static {v2, v3}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x28

    invoke-static {v3, v4}, Lcom/revmob/a/a;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v2, 0x3f333333    # 0.7f

    sget v3, Lcom/revmob/ads/interstitial/a;->A:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v2, Lcom/revmob/ads/interstitial/a;->A:I

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->L:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->L:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->L:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/interstitial/a;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->e()V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/revmob/ads/interstitial/c;

    invoke-direct {v2, p0, p3}, Lcom/revmob/ads/interstitial/c;-><init>(Lcom/revmob/ads/interstitial/a;Lcom/revmob/ads/interstitial/b/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v3}, Lcom/revmob/ads/interstitial/a/b;->p()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    new-instance v2, Lcom/revmob/ads/interstitial/d;

    invoke-direct {v2, p0}, Lcom/revmob/ads/interstitial/d;-><init>(Lcom/revmob/ads/interstitial/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/revmob/ads/interstitial/a;->B:I

    sget v3, Lcom/revmob/ads/interstitial/a;->B:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/revmob/ads/interstitial/a;->A:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v2, Lcom/revmob/ads/interstitial/a;->A:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->o:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2}, Lcom/revmob/ads/interstitial/a/b;->q()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x64

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-static {}, Lcom/revmob/ads/a/g;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    new-instance v2, Lcom/revmob/ads/interstitial/b;

    invoke-direct {v2, p0}, Lcom/revmob/ads/interstitial/b;-><init>(Lcom/revmob/ads/interstitial/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/revmob/ads/interstitial/a;->B:I

    sget v3, Lcom/revmob/ads/interstitial/a;->B:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/revmob/ads/interstitial/a;->A:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v2, Lcom/revmob/ads/interstitial/a;->A:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a;->Q:D

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0, v9}, Lcom/revmob/FullscreenActivity;->setRequestedOrientation(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/revmob/ads/interstitial/a;->F:I

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v4}, Lcom/revmob/ads/interstitial/a/b;->t()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/interstitial/a;->addView(Landroid/view/View;)V

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->q:Z

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->r:Z

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->t:Z

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->u:Z

    iput-boolean v6, p0, Lcom/revmob/ads/interstitial/a;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/revmob/ads/interstitial/a;F)F
    .locals 0

    iput p1, p0, Lcom/revmob/ads/interstitial/a;->K:F

    return p1
.end method

.method static synthetic a(Lcom/revmob/ads/interstitial/a;)V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-le v0, v6, :cond_1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->w:Z

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcom/revmob/ads/interstitial/a;->w:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/revmob/RevMob;->b:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoStarted()V

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0, v1}, Lcom/revmob/client/RevMobClient;->a(Lcom/revmob/client/a;)V

    const-string v0, "impressions"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->b(Ljava/lang/String;)V

    const-string v0, "creativeView"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    int-to-double v0, v0

    iget v2, p0, Lcom/revmob/ads/interstitial/a;->E:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/revmob/ads/interstitial/a;->m:D

    iget-wide v0, p0, Lcom/revmob/ads/interstitial/a;->m:D

    iget-wide v2, p0, Lcom/revmob/ads/interstitial/a;->Q:D

    cmpl-double v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iput-boolean v4, v0, Lcom/revmob/FullscreenActivity;->g:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_4
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->H:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->t:Z

    if-nez v0, :cond_5

    iput-boolean v5, p0, Lcom/revmob/ads/interstitial/a;->t:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "firstQuartile"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->I:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->u:Z

    if-nez v0, :cond_6

    iput-boolean v5, p0, Lcom/revmob/ads/interstitial/a;->u:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "midpoint"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->J:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->v:Z

    if-nez v0, :cond_7

    iput-boolean v5, p0, Lcom/revmob/ads/interstitial/a;->v:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "thirdQuartile"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->E:I

    if-gt v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->e:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->G:I

    sub-int/2addr v0, v1

    if-gt v0, v6, :cond_8

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/revmob/ads/interstitial/a/b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0, v5}, Lcom/revmob/ads/interstitial/a/b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    :cond_8
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v1

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->b()V

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->m()V

    :cond_9
    :goto_0
    return-void

    :cond_a
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->G:I

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->E:I

    if-ge v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->d:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->e:Z

    if-eqz v0, :cond_9

    :cond_b
    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/revmob/ads/interstitial/f;

    invoke-direct {v0, p0, p1}, Lcom/revmob/ads/interstitial/f;-><init>(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/revmob/ads/interstitial/a;)F
    .locals 1

    iget v0, p0, Lcom/revmob/ads/interstitial/a;->K:F

    return v0
.end method

.method static synthetic b(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/revmob/ads/interstitial/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/revmob/ads/interstitial/g;

    invoke-direct {v0, p0, p1}, Lcom/revmob/ads/interstitial/g;-><init>(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/revmob/ads/interstitial/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/revmob/ads/interstitial/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->D:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/revmob/ads/interstitial/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->i()V

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->k()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->j()V

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->l()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/revmob/ads/interstitial/a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/revmob/ads/interstitial/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->m()V

    return-void
.end method

.method static synthetic h(Lcom/revmob/ads/interstitial/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v1}, Lcom/revmob/ads/interstitial/a/b;->r()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    iput-boolean v2, p0, Lcom/revmob/ads/interstitial/a;->w:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    new-instance v0, Lcom/revmob/ads/interstitial/i;

    invoke-direct {v0, p0}, Lcom/revmob/ads/interstitial/i;-><init>(Lcom/revmob/ads/interstitial/a;)V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->D:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/revmob/ads/interstitial/j;

    invoke-direct {v1, p0}, Lcom/revmob/ads/interstitial/j;-><init>(Lcom/revmob/ads/interstitial/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/revmob/ads/interstitial/k;

    invoke-direct {v1, p0}, Lcom/revmob/ads/interstitial/k;-><init>(Lcom/revmob/ads/interstitial/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/revmob/ads/interstitial/l;

    invoke-direct {v1, p0}, Lcom/revmob/ads/interstitial/l;-><init>(Lcom/revmob/ads/interstitial/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic i(Lcom/revmob/ads/interstitial/a;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    return-object v0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->y:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->y:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->s:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->s:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->y:Landroid/os/Handler;

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->y:Landroid/os/Handler;

    new-instance v1, Lcom/revmob/ads/interstitial/m;

    invoke-direct {v1, p0}, Lcom/revmob/ads/interstitial/m;-><init>(Lcom/revmob/ads/interstitial/a;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "complete"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoFinished()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->d()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->n()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/FullscreenActivity;->c:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoFinished()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->o()V

    goto :goto_1
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->q:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fullscreenPortraitView"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/a;->r:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fullscreenLandscapeView"

    invoke-direct {p0, v0}, Lcom/revmob/ads/interstitial/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->c()V

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->i()V

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->k()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    new-instance v0, Lcom/revmob/ads/interstitial/o;

    invoke-direct {v0, p0}, Lcom/revmob/ads/interstitial/o;-><init>(Lcom/revmob/ads/interstitial/a;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->x:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->D:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 4

    const/high16 v3, 0x40800000    # 4.0f

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/interstitial/a;->E:I

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->g()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->E:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v0

    :goto_0
    int-to-float v1, v0

    div-float/2addr v1, v3

    iput v1, p0, Lcom/revmob/ads/interstitial/a;->H:F

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/revmob/ads/interstitial/a;->I:F

    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/revmob/ads/interstitial/a;->J:F

    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->g:Landroid/os/Handler;

    new-instance v1, Lcom/revmob/ads/interstitial/p;

    invoke-direct {v1, p0, v0}, Lcom/revmob/ads/interstitial/p;-><init>(Lcom/revmob/ads/interstitial/a;I)V

    iput-object v1, p0, Lcom/revmob/ads/interstitial/a;->C:Ljava/lang/Runnable;

    return v0

    :cond_0
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->E:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/interstitial/a;->E:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->n()I

    move-result v0

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v1}, Lcom/revmob/FullscreenActivity;->g()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2
    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v2}, Lcom/revmob/FullscreenActivity;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/revmob/ads/interstitial/a;->w:Z

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v1}, Lcom/revmob/FullscreenActivity;->h()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/revmob/ads/interstitial/a;->E:I

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->h:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v1}, Lcom/revmob/FullscreenActivity;->g()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->C:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/revmob/ads/interstitial/a;->g:Landroid/os/Handler;

    iput-object v2, p0, Lcom/revmob/ads/interstitial/a;->C:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/revmob/ads/interstitial/a;->F:I

    iget-object v1, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v2, v0}, Lcom/revmob/ads/interstitial/a/b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->n()V

    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->o()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1
.end method

.method public final f()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    const-string v0, "replayVideo"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->l:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/revmob/ads/interstitial/a;->f:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/revmob/ads/interstitial/a;->w:Z

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->h()V

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->j()V

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/a;->l()V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/a;->d()V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->M:Landroid/widget/Button;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->O:Landroid/widget/Button;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->b:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->n:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->N:Landroid/widget/Button;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->o:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->i:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->p:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/revmob/ads/interstitial/a;->z:Landroid/widget/RelativeLayout;

    return-void
.end method
