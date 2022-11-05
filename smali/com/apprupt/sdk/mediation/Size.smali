.class public Lcom/apprupt/sdk/mediation/Size;
.super Ljava/lang/Object;
.source "Size.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/mediation/Size$Computed;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    .line 46
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/apprupt/sdk/mediation/Size;->a:I

    .line 40
    iput p2, p0, Lcom/apprupt/sdk/mediation/Size;->b:I

    .line 41
    iput p3, p0, Lcom/apprupt/sdk/mediation/Size;->c:I

    .line 42
    return-void
.end method

.method private a(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/content/Context;I)F
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;)F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;IIZ)Lcom/apprupt/sdk/mediation/Size$Computed;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x4

    const/4 v2, -0x1

    const/16 v5, 0x10

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wrap_width"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    invoke-virtual {p0, v6}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fill_width"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wrap_height"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_2
    invoke-virtual {p0, v5}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "fill_height"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    invoke-virtual {p0, v7}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "keep_ratio"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v0, ""

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ","

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {p0, v7}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez p2, :cond_7

    iget v0, p0, Lcom/apprupt/sdk/mediation/Size;->b:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/apprupt/sdk/mediation/Size;->c:I

    if-lez v0, :cond_7

    .line 81
    invoke-static {p1}, Lcom/apprupt/sdk/CvViewHelper;->b(Landroid/content/Context;)V

    .line 82
    sget-object v0, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_6

    .line 83
    sget-object v0, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 85
    :cond_6
    new-instance v0, Lcom/apprupt/sdk/mediation/Size$Computed;

    iget v1, p0, Lcom/apprupt/sdk/mediation/Size;->c:I

    .line 87
    invoke-direct {p0, p1, v1}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;I)F

    move-result v1

    iget v2, p0, Lcom/apprupt/sdk/mediation/Size;->b:I

    invoke-direct {p0, p1, v2}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;I)F

    move-result v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, p0, p2, v1, v8}, Lcom/apprupt/sdk/mediation/Size$Computed;-><init>(Lcom/apprupt/sdk/mediation/Size;IILcom/apprupt/sdk/mediation/Size$1;)V

    .line 108
    :goto_1
    return-object v0

    .line 91
    :cond_7
    iget v0, p0, Lcom/apprupt/sdk/mediation/Size;->b:I

    .line 92
    invoke-virtual {p0, v6}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v2

    .line 98
    :goto_2
    iget v1, p0, Lcom/apprupt/sdk/mediation/Size;->c:I

    .line 99
    invoke-virtual {p0, v5}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p4, :cond_9

    .line 108
    :goto_3
    new-instance v1, Lcom/apprupt/sdk/mediation/Size$Computed;

    invoke-direct {v1, p0, v0, v2, v8}, Lcom/apprupt/sdk/mediation/Size$Computed;-><init>(Lcom/apprupt/sdk/mediation/Size;IILcom/apprupt/sdk/mediation/Size$1;)V

    move-object v0, v1

    goto :goto_1

    .line 95
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/mediation/Size;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    .line 101
    :cond_9
    invoke-virtual {p0, v5}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    if-lez p3, :cond_a

    .line 102
    invoke-static {p1}, Lcom/apprupt/sdk/CvViewHelper;->b(Landroid/content/Context;)V

    .line 103
    iget v1, p0, Lcom/apprupt/sdk/mediation/Size;->c:I

    invoke-direct {p0, p1, v1}, Lcom/apprupt/sdk/mediation/Size;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    .line 105
    :cond_a
    invoke-direct {p0, p1, v1}, Lcom/apprupt/sdk/mediation/Size;->b(Landroid/content/Context;I)I

    move-result v2

    goto :goto_3
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/apprupt/sdk/mediation/Size;->a:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
