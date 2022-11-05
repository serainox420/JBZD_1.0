.class public Lcom/google/android/gms/internal/zzzk$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private zzaxA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private zzaxE:Z

.field private final zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

.field private zzaxG:Z

.field final synthetic zzaxH:Lcom/google/android/gms/internal/zzzk;

.field private zzaxq:Ljava/lang/String;

.field private zzaxr:I

.field private zzaxs:Ljava/lang/String;

.field private zzaxt:Ljava/lang/String;

.field private zzaxv:I

.field private final zzaxz:Lcom/google/android/gms/internal/zzzk$zzc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzzk;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzzk$zza;-><init>(Lcom/google/android/gms/internal/zzzk;[BLcom/google/android/gms/internal/zzzk$zzc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzzk;[BLcom/google/android/gms/internal/zzzk$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzzk$zza;-><init>(Lcom/google/android/gms/internal/zzzk;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzzk;[BLcom/google/android/gms/internal/zzzk$zzc;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzk;->zza(Lcom/google/android/gms/internal/zzzk;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzk;->zzb(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxq:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzk;->zzc(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzk;->zzd(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxt:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzk;->zze(Lcom/google/android/gms/internal/zzzk;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxv:I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxA:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxB:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxC:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxD:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxE:Z

    new-instance v0, Lcom/google/android/gms/internal/zzbxy$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxy$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxG:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzk;->zzc(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxs:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzk;->zzd(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxt:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzk;->zzf(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzk;->zzf(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvs:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzzk;->zzg(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/internal/zzzk$zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvr:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzzk$zzd;->zzH(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvD:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvy:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxz:Lcom/google/android/gms/internal/zzzk$zzc;

    return-void
.end method


# virtual methods
.method public zzcq(I)Lcom/google/android/gms/internal/zzzk$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzcvu:I

    return-object p0
.end method

.method public zzcr(I)Lcom/google/android/gms/internal/zzzk$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzbxy$zzd;->zzri:I

    return-object p0
.end method

.method public zze(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzk$zza;->zzuU()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzuT()Lcom/google/android/gms/internal/zzzm;
    .locals 13

    const/4 v12, 0x0

    new-instance v11, Lcom/google/android/gms/internal/zzzm;

    new-instance v0, Lcom/google/android/gms/internal/zzzu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzzk;->zzi(Lcom/google/android/gms/internal/zzzk;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzk;->zzj(Lcom/google/android/gms/internal/zzzk;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxr:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxq:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxs:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxt:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzzk;->zzh(Lcom/google/android/gms/internal/zzzk;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxv:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzzu;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxF:Lcom/google/android/gms/internal/zzbxy$zzd;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxz:Lcom/google/android/gms/internal/zzzk$zzc;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzk;->zze(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzk;->zzf(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzk;->zze(Ljava/util/ArrayList;)[I

    move-result-object v8

    invoke-static {v12}, Lcom/google/android/gms/internal/zzzk;->zzg(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxE:Z

    move-object v1, v11

    move-object v2, v0

    move-object v5, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzzm;-><init>(Lcom/google/android/gms/internal/zzzu;Lcom/google/android/gms/internal/zzbxy$zzd;Lcom/google/android/gms/internal/zzzk$zzc;Lcom/google/android/gms/internal/zzzk$zzc;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.method public zzuU()Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxG:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzzk$zza;->zzuT()Lcom/google/android/gms/internal/zzzm;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzzm;->zzaxI:Lcom/google/android/gms/internal/zzzu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzk;->zzk(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/internal/zzzk$zzb;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzzu;->zzaye:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/zzzu;->zzaya:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/zzzk$zzb;->zzh(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzk$zza;->zzaxH:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzzk;->zzl(Lcom/google/android/gms/internal/zzzk;)Lcom/google/android/gms/internal/zzzl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzzl;->zza(Lcom/google/android/gms/internal/zzzm;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method
