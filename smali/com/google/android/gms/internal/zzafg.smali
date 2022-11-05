.class public Lcom/google/android/gms/internal/zzafg;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJD:Lcom/google/android/gms/internal/zzbxj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbxj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbxj;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafg;->zzaJD:Lcom/google/android/gms/internal/zzbxj;

    return-void
.end method

.method public static zzp(II)Lcom/google/android/gms/internal/zzafg;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzafg;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzafg;->zzq(II)Lcom/google/android/gms/internal/zzbxj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzafg;-><init>(Lcom/google/android/gms/internal/zzbxj;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzq(II)Lcom/google/android/gms/internal/zzbxj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxj;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbxj;->zzcsS:I

    iput p1, v0, Lcom/google/android/gms/internal/zzbxj;->zzcuw:I

    return-object v0
.end method


# virtual methods
.method public zzAg()Lcom/google/android/gms/internal/zzbxj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafg;->zzaJD:Lcom/google/android/gms/internal/zzbxj;

    return-object v0
.end method
