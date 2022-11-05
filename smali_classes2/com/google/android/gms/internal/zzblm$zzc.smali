.class public Lcom/google/android/gms/internal/zzblm$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzblm$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field final x:F

.field final y:F

.field private final zzbWw:Z


# direct methods
.method public constructor <init>(FFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzblm$zzc;->x:F

    iput p2, p0, Lcom/google/android/gms/internal/zzblm$zzc;->y:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzblm$zzc;->zzbWw:Z

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 4
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

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzblm$zzc;->zzbWw:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/google/android/gms/internal/zzblm$zzc;->x:F

    add-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/google/android/gms/internal/zzblm$zzc;->y:F

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/gms/internal/zzblm$zzc;->x:F

    iget v2, p0, Lcom/google/android/gms/internal/zzblm$zzc;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1
.end method
