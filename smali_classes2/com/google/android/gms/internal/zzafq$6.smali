.class Lcom/google/android/gms/internal/zzafq$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/fence/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzafq;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzaet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaKn:Lcom/google/android/gms/internal/zzaet;

.field final synthetic zzanl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafq;Lcom/google/android/gms/internal/zzaet;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafq$6;->zzaKn:Lcom/google/android/gms/internal/zzaet;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafq$6;->zzanl:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq$6;->zzanl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
