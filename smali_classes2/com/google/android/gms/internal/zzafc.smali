.class public Lcom/google/android/gms/internal/zzafc;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJA:Lcom/google/android/gms/internal/zzbwx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbwx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwx;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafc;->zzaJA:Lcom/google/android/gms/internal/zzbwx;

    return-void
.end method

.method public static zza(IID)Lcom/google/android/gms/internal/zzafc;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v12, Lcom/google/android/gms/internal/zzafc;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-wide/16 v8, 0xbb8

    const-wide/16 v10, 0x0

    move v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/zzafc;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzbwx;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/gms/internal/zzafc;-><init>(Lcom/google/android/gms/internal/zzbwx;)V

    return-object v12

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zza(IIDJ)Lcom/google/android/gms/internal/zzafc;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v12, Lcom/google/android/gms/internal/zzafc;

    const/4 v0, 0x1

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    move v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    move-wide/from16 v10, p4

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/zzafc;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzbwx;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/gms/internal/zzafc;-><init>(Lcom/google/android/gms/internal/zzbwx;)V

    return-object v12

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzbwx;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbwx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwx;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbwx;->zzcsS:I

    iput p1, v0, Lcom/google/android/gms/internal/zzbwx;->zzcud:I

    iput-wide p8, v0, Lcom/google/android/gms/internal/zzbwx;->zzcsT:J

    iput-wide p10, v0, Lcom/google/android/gms/internal/zzbwx;->zzcui:J

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iput p2, v0, Lcom/google/android/gms/internal/zzbwx;->zzcue:I

    iput p3, v0, Lcom/google/android/gms/internal/zzbwx;->zzcuf:I

    iput-wide p4, v0, Lcom/google/android/gms/internal/zzbwx;->zzcug:D

    iput-wide p6, v0, Lcom/google/android/gms/internal/zzbwx;->zzcuh:D

    :cond_0
    return-object v0
.end method

.method public static zzb(IID)Lcom/google/android/gms/internal/zzafc;
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v12, Lcom/google/android/gms/internal/zzafc;

    const/4 v0, 0x3

    const/4 v1, 0x1

    const-wide/16 v8, 0xbb8

    const-wide/16 v10, 0x0

    move v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/zzafc;->zza(IIIIDDJJ)Lcom/google/android/gms/internal/zzbwx;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/google/android/gms/internal/zzafc;-><init>(Lcom/google/android/gms/internal/zzbwx;)V

    return-object v12

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public zzAd()Lcom/google/android/gms/internal/zzbwx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafc;->zzaJA:Lcom/google/android/gms/internal/zzbwx;

    return-object v0
.end method
