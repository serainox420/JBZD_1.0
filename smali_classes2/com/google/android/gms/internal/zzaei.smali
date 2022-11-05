.class public Lcom/google/android/gms/internal/zzaei;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJe:Lcom/google/android/gms/internal/zzbwm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbwm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwm;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaei;->zzaJe:Lcom/google/android/gms/internal/zzbwm;

    return-void
.end method

.method public static zza(I[I)Lcom/google/android/gms/internal/zzaei;
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzaei;

    const-wide/16 v2, 0xbb8

    invoke-static {p0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaei;->zza(I[IJ)Lcom/google/android/gms/internal/zzbwm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaei;-><init>(Lcom/google/android/gms/internal/zzbwm;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zza(I[IJ)Lcom/google/android/gms/internal/zzbwm;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbwm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwm;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbwm;->zzcsS:I

    iput-wide p2, v0, Lcom/google/android/gms/internal/zzbwm;->zzcsT:J

    iput-object p1, v0, Lcom/google/android/gms/internal/zzbwm;->zzcsU:[I

    return-object v0
.end method

.method public static zzb([I)Lcom/google/android/gms/internal/zzaei;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzaei;->zza(I[I)Lcom/google/android/gms/internal/zzaei;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzzV()Lcom/google/android/gms/internal/zzbwm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaei;->zzaJe:Lcom/google/android/gms/internal/zzbwm;

    return-object v0
.end method
