.class Lcom/google/android/gms/internal/zzayl$1;
.super Lcom/google/android/gms/internal/zzaym;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzayl;->zzbx(Lcom/google/android/gms/common/api/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaym",
        "<",
        "Lcom/google/android/gms/internal/zzaad$zzb",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzanl:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayl$1;->zzanl:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaym;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayl$1;->zzt(Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method

.method public zzt(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayl$1;->zzanl:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
