.class public Lcom/google/android/gms/internal/zzblm$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzblm$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field final zzbWq:F

.field final zzbWr:F

.field final zzbWs:F

.field final zzbWt:F

.field final zzbWu:F

.field final zzbWv:F

.field private final zzbWw:Z


# direct methods
.method public constructor <init>(FFFFFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWq:F

    iput p2, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWr:F

    iput p3, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWs:F

    iput p4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWt:F

    iput p5, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWu:F

    iput p6, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWv:F

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWw:Z

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWw:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object v0, v1, v3

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWq:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWr:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v2

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWs:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWt:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v7

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWu:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWv:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v5

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v1, v8

    move-object v0, v1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzblm;->zzUS()Lcom/google/android/gms/internal/zzblk$zza;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzblm;->zzb([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/PointF;

    aput-object v0, v1, v3

    new-instance v0, Landroid/graphics/PointF;

    iget v3, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWq:F

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWr:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v1, v2

    new-instance v0, Landroid/graphics/PointF;

    iget v3, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWs:F

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWt:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v1, v7

    new-instance v0, Landroid/graphics/PointF;

    iget v3, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWu:F

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWv:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v1, v8

    move-object v0, v1

    goto :goto_1
.end method
