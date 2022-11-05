.class public Lcom/google/android/gms/internal/zzbra;
.super Ljava/lang/Object;


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private final zzcdS:Lcom/google/android/gms/internal/zzbpe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbpa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzYA()Lcom/google/android/gms/internal/zzbpe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcdS:Lcom/google/android/gms/internal/zzbpe;

    const-string v0, "EventRaiser"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbra;)Lcom/google/android/gms/internal/zzbrn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    return-object v0
.end method


# virtual methods
.method public zzab(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Raising "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbra;->zzcdS:Lcom/google/android/gms/internal/zzbpe;

    new-instance v2, Lcom/google/android/gms/internal/zzbra$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzbra$1;-><init>(Lcom/google/android/gms/internal/zzbra;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbpe;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method
