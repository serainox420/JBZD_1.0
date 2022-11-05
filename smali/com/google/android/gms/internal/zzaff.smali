.class public Lcom/google/android/gms/internal/zzaff;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJC:Lcom/google/android/gms/internal/zzbxi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbxi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbxi;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaff;->zzaJC:Lcom/google/android/gms/internal/zzbxi;

    return-void
.end method

.method public static zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzaff;
    .locals 8

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v0, p2, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v0, p2, v6

    if-gtz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v0, p4, v4

    if-ltz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v0, p4, v6

    if-gtz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v0, p2, p4

    if-gtz v0, :cond_5

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzaff;

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/zzaff;->zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbxi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzbxi;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method private static zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbxi;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxi;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbxi;->zzcsS:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbxi;->zzcut:Ljava/lang/String;

    :cond_0
    iput-wide p2, v0, Lcom/google/android/gms/internal/zzbxi;->zzaKx:J

    iput-wide p4, v0, Lcom/google/android/gms/internal/zzbxi;->zzcuu:J

    return-object v0
.end method

.method public static zzg(JJ)Lcom/google/android/gms/internal/zzaff;
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    cmp-long v1, p0, v4

    if-ltz v1, :cond_1

    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v1, p2, v4

    if-ltz v1, :cond_2

    move v1, v0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v1, p0, p2

    if-gtz v1, :cond_0

    move v2, v0

    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v6, Lcom/google/android/gms/internal/zzaff;

    const/4 v1, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaff;->zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbxi;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzbxi;)V

    return-object v6

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public zzAf()Lcom/google/android/gms/internal/zzbxi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaff;->zzaJC:Lcom/google/android/gms/internal/zzbxi;

    return-object v0
.end method
