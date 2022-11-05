.class public Lcom/facebook/ads/internal/j/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/j/a$b;,
        Lcom/facebook/ads/internal/j/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private final e:Lcom/facebook/ads/internal/j/a$a;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private final h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/facebook/ads/internal/j/b;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/j/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLcom/facebook/ads/internal/j/a$a;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/j/a$b;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/j/a$b;-><init>(Lcom/facebook/ads/internal/j/a;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/j/a;->g:Ljava/lang/Runnable;

    iput v0, p0, Lcom/facebook/ads/internal/j/a;->i:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/facebook/ads/internal/j/a;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->a:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/j/a;->m:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/internal/j/a;->n:J

    iput v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    iput-object p1, p0, Lcom/facebook/ads/internal/j/a;->b:Landroid/view/View;

    iput p2, p0, Lcom/facebook/ads/internal/j/a;->c:I

    iput-object p5, p0, Lcom/facebook/ads/internal/j/a;->e:Lcom/facebook/ads/internal/j/a$a;

    iput-boolean p4, p0, Lcom/facebook/ads/internal/j/a;->h:Z

    if-gez p3, :cond_0

    move p3, v0

    :cond_0
    iput p3, p0, Lcom/facebook/ads/internal/j/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/facebook/ads/internal/j/a$a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/j/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZLcom/facebook/ads/internal/j/a$a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/j/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;I)I
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/j/a;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->b:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/view/View;I)Lcom/facebook/ads/internal/j/b;
    .locals 12

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "adView is null."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->c:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "adView has no parent."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->d:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "adView window is not set to VISIBLE."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->e:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "adView is not set to VISIBLE."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->f:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adView has invisible dimensions (w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->g:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/4 v0, 0x0

    const-string v1, "adView is too transparent."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->h:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v0, 0x2

    new-array v3, v0, [I

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v0, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    const/4 v7, 0x0

    aget v7, v3, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    add-int/2addr v9, v1

    const/4 v10, 0x1

    aget v10, v3, v10

    add-int/2addr v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    mul-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v0, v6

    :cond_7
    invoke-static {v4}, Lcom/facebook/ads/internal/h;->i(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v4}, Lcom/facebook/ads/internal/h;->j(Landroid/content/Context;)I

    move-result v7

    if-eqz v6, :cond_8

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, v7

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    const/4 v1, 0x0

    const-string v2, "adView visible area is too small [%.2f%% visible, current threshold %d%%]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->n:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    const-string v1, "Cannot get location on screen."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b;

    sget-object v1, Lcom/facebook/ads/internal/j/c;->g:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;)V

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    aget v6, v3, v6

    if-ltz v6, :cond_9

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int/2addr v6, v7

    if-ge v6, v1, :cond_a

    :cond_9
    const/4 v1, 0x0

    const-string v2, "adView is not fully on screen horizontally."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->j:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    int-to-double v6, v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    int-to-double v10, p1

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_b

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v1, :cond_b

    const/4 v1, 0x0

    const-string v2, "adView is not visible from the top."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->k:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x1

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_c

    const/4 v1, 0x0

    const-string v2, "adView is not visible from the bottom."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->l:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    invoke-static {v4}, Lcom/facebook/ads/internal/util/p;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    const-string v2, "Screen is not interactive."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->m:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    invoke-static {v4}, Lcom/facebook/ads/internal/util/p;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    const-string v2, "Keyguard is obstructing view."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->p:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x1

    const-string v2, "adView is visible."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/j/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/j/b;

    sget-object v2, Lcom/facebook/ads/internal/j/c;->b:Lcom/facebook/ads/internal/j/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/j/b;-><init>(Lcom/facebook/ads/internal/j/c;F)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/j/b;)Lcom/facebook/ads/internal/j/b;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    return-object p1
.end method

.method private static a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/j/a;)Lcom/facebook/ads/internal/j/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->e:Lcom/facebook/ads/internal/j/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/j/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/j/a;->c:I

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/j/a;)I
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/j/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/j/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/j/a;->d:I

    return v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/j/a;)Lcom/facebook/ads/internal/j/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/j/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/j/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/j/a;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/j/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/j/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/j/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/j/a;->j:I

    return v0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/j/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/facebook/ads/internal/j/a;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    iput v4, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/j/a;->i:I

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "vrc"

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vp"

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->l:Lcom/facebook/ads/internal/j/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j/b;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vh"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/facebook/ads/internal/j/a;->m:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vt"

    iget-wide v2, p0, Lcom/facebook/ads/internal/j/a;->n:J

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/util/h;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/j/a;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/j/a;->o:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/j/a;->j:I

    return-void
.end method
