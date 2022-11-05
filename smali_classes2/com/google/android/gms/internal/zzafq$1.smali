.class Lcom/google/android/gms/internal/zzafq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzafq;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final zzaKi:Lcom/google/android/gms/internal/zzaed;

.field final synthetic zzaKj:Lcom/google/android/gms/common/data/DataHolder;

.field final synthetic zzanl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafq;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafq$1;->zzaKj:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafq$1;->zzanl:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq$1;->zzaKj:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzafq$1;->zzaKi:Lcom/google/android/gms/internal/zzaed;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaed;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafq$1;->zzaKj:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaed;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq$1;->zzanl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
