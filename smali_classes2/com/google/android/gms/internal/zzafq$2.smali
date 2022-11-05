.class Lcom/google/android/gms/internal/zzafq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzagj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzafq;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzagh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaKk:Lcom/google/android/gms/internal/zzagh;

.field final synthetic zzanl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafq;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzagh;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafq$2;->zzanl:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafq$2;->zzaKk:Lcom/google/android/gms/internal/zzagh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafq$2;->zzanl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
