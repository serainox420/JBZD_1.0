.class public Lcom/google/android/gms/internal/zzdf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzyh:F

.field private final zzyi:F

.field private final zzyj:F

.field private final zzyk:F

.field private final zzyl:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzdf;->zzyh:F

    iput p2, p0, Lcom/google/android/gms/internal/zzdf;->zzyi:F

    add-float v0, p1, p3

    iput v0, p0, Lcom/google/android/gms/internal/zzdf;->zzyj:F

    add-float v0, p2, p4

    iput v0, p0, Lcom/google/android/gms/internal/zzdf;->zzyk:F

    iput p5, p0, Lcom/google/android/gms/internal/zzdf;->zzyl:I

    return-void
.end method


# virtual methods
.method zzeo()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzyh:F

    return v0
.end method

.method zzep()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzyi:F

    return v0
.end method

.method zzeq()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzyj:F

    return v0
.end method

.method zzer()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzyk:F

    return v0
.end method

.method zzes()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdf;->zzyl:I

    return v0
.end method
