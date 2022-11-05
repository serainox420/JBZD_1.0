.class public Lcom/google/android/gms/internal/zzblm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzblm$zza;,
        Lcom/google/android/gms/internal/zzblm$zzb;,
        Lcom/google/android/gms/internal/zzblm$zzc;,
        Lcom/google/android/gms/internal/zzblm$zzd;
    }
.end annotation


# static fields
.field private static final zzbWl:Lcom/google/android/gms/internal/zzblk$zzb;

.field private static final zzbWm:Lcom/google/android/gms/internal/zzblk$zza;


# instance fields
.field private zzaJz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzblm$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzblk$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblk$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzblm;->zzbWl:Lcom/google/android/gms/internal/zzblk$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzblk$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblk$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzblm;->zzbWm:Lcom/google/android/gms/internal/zzblk$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic zzUS()Lcom/google/android/gms/internal/zzblk$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzblm;->zzbWm:Lcom/google/android/gms/internal/zzblk$zza;

    return-object v0
.end method

.method private static zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            "Lcom/google/android/gms/internal/zzblk;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/zzblm$zza;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v5, v1, v6}, Lcom/google/android/gms/internal/zzblk;->zza(F[Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzblm$zza;-><init>(Lcom/google/android/gms/internal/zzblm$zza;FLandroid/graphics/PointF;)V

    new-instance v21, Lcom/google/android/gms/internal/zzblm$zza;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v4, v1, v5}, Lcom/google/android/gms/internal/zzblk;->zza(F[Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzblm$zza;-><init>(Lcom/google/android/gms/internal/zzblm$zza;FLandroid/graphics/PointF;)V

    const/4 v3, 0x1

    new-array v8, v3, [F

    move-object/from16 v22, v21

    move/from16 v3, p2

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v19, v2

    move/from16 v20, v3

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/gms/internal/zzblm$zza;->zzbWo:F

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    move-object/from16 v0, v19

    iget v6, v0, Lcom/google/android/gms/internal/zzblm$zza;->zzbWo:F

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v10, p5

    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/internal/zzblm;->zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;FLandroid/graphics/PointF;FLandroid/graphics/PointF;[FLandroid/graphics/PointF;F)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v20, :cond_5

    new-instance v17, Landroid/graphics/PointF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/PointF;-><init>()V

    const/4 v2, 0x1

    new-array v0, v2, [F

    move-object/from16 v16, v0

    move-object/from16 v0, v22

    iget v12, v0, Lcom/google/android/gms/internal/zzblm$zza;->zzbWo:F

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v14, v8, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v15, v9

    move/from16 v18, p5

    invoke-static/range {v10 .. v18}, Lcom/google/android/gms/internal/zzblm;->zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;FLandroid/graphics/PointF;FLandroid/graphics/PointF;[FLandroid/graphics/PointF;F)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v20, 0x0

    move v4, v2

    move/from16 v3, v20

    :goto_1
    if-eqz v4, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/zzblm$zza;

    const/4 v5, 0x0

    aget v5, v8, v5

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v5, v9}, Lcom/google/android/gms/internal/zzblm$zza;-><init>(Lcom/google/android/gms/internal/zzblm$zza;FLandroid/graphics/PointF;)V

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/google/android/gms/internal/zzblm$zza;->zzbWn:Lcom/google/android/gms/internal/zzblm$zza;

    :goto_2
    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/google/android/gms/internal/zzblm$zza;->zzbWn:Lcom/google/android/gms/internal/zzblm$zza;

    move-object/from16 v22, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v4, v21

    move-object/from16 v23, v2

    move v2, v3

    move-object/from16 v3, v23

    :goto_3
    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget-object v6, v4, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v6, v3

    invoke-static {v5, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzblm$zza;->zzbWn:Lcom/google/android/gms/internal/zzblm$zza;

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    move-object/from16 v2, v19

    goto :goto_2

    :cond_5
    move v4, v2

    move/from16 v3, v20

    goto/16 :goto_1
.end method

.method static zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;FLandroid/graphics/PointF;FLandroid/graphics/PointF;[FLandroid/graphics/PointF;F)Z
    .locals 5

    const/4 v0, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    add-float v1, p4, p2

    div-float/2addr v1, v4

    aput v1, p6, v0

    iget v1, p5, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, p5, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aget v3, p6, v0

    invoke-interface {p1, v3, p0, p7}, Lcom/google/android/gms/internal/zzblk;->zza(F[Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget v3, p7, Landroid/graphics/PointF;->x:F

    sub-float v1, v3, v1

    iget v3, p7, Landroid/graphics/PointF;->y:F

    sub-float v2, v3, v2

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, p8

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic zzb([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/gms/internal/zzblm;->zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public cubicTo(FFFFFF)V
    .locals 9

    iget-object v8, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/zzblm$zzb;

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzblm$zzb;-><init>(FFFFFFZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveTo(FF)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/zzblm$zzc;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzblm$zzc;-><init>(FFZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zzj(F)[F
    .locals 10

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    mul-float v7, p1, p1

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzblm$zzd;

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/google/android/gms/internal/zzblm$zzd;->zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v2, v0, v9

    if-nez v2, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v0, v7, 0x3

    new-array v8, v0, [F

    move v4, v3

    :goto_2
    if-ge v3, v7, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v1, v2

    aput v1, v8, v4

    add-int/lit8 v4, v9, 0x1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    aput v1, v8, v9

    add-int/lit8 v1, v4, 0x1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v8, v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_2

    :cond_2
    return-object v8

    :cond_3
    move v2, v0

    goto :goto_1
.end method
