.class public Lcom/google/android/gms/internal/zzafe;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJB:Lcom/google/android/gms/internal/zzbxg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbxg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbxg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafe;->zzaJB:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method private static zza(IJJ)Lcom/google/android/gms/internal/zzbxg;
    .locals 9

    const-wide/32 v6, 0x5265c00

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxg;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbxg;->zzcsS:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/zzbxg;->zzcur:J

    iput-wide p3, v0, Lcom/google/android/gms/internal/zzbxg;->zzcus:J

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static zze(JJ)Lcom/google/android/gms/internal/zzafe;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x1

    invoke-static {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzafe;->zza(IJJ)Lcom/google/android/gms/internal/zzbxg;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzafe;-><init>(Lcom/google/android/gms/internal/zzbxg;)V

    return-object v0
.end method

.method public static zzf(JJ)Lcom/google/android/gms/internal/zzafe;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x2

    invoke-static {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzafe;->zza(IJJ)Lcom/google/android/gms/internal/zzbxg;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzafe;-><init>(Lcom/google/android/gms/internal/zzbxg;)V

    return-object v0
.end method


# virtual methods
.method public zzAe()Lcom/google/android/gms/internal/zzbxg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafe;->zzaJB:Lcom/google/android/gms/internal/zzbxg;

    return-object v0
.end method
