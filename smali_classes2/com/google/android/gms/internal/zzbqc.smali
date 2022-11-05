.class public Lcom/google/android/gms/internal/zzbqc;
.super Lcom/google/android/gms/internal/zzbqe;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbqc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbqc;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbqe$zza;->zzcgP:Lcom/google/android/gms/internal/zzbqe$zza;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzbqe;-><init>(Lcom/google/android/gms/internal/zzbqe$zza;Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    sget-boolean v0, Lcom/google/android/gms/internal/zzbqc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqf;->zzZA()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t have a listen complete from a user source"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ListenComplete { path=%s, source=%s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqc;->zzZy()Lcom/google/android/gms/internal/zzbqf;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqe;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqc;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqc;->zzcgL:Lcom/google/android/gms/internal/zzbqf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqc;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbqf;Lcom/google/android/gms/internal/zzbph;)V

    goto :goto_0
.end method
