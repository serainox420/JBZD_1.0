.class Lcom/google/android/gms/internal/zzmi$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmi;->zziN()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqp$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzmk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzRs:Lcom/google/android/gms/internal/zzmt;

.field final synthetic zzRt:Lcom/google/android/gms/internal/zzmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmi;Lcom/google/android/gms/internal/zzmt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmi$1;->zzRt:Lcom/google/android/gms/internal/zzmi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmi$1;->zzRs:Lcom/google/android/gms/internal/zzmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzmk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$1;->zzRt:Lcom/google/android/gms/internal/zzmi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmi$1;->zzRs:Lcom/google/android/gms/internal/zzmt;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzmi;->zza(Lcom/google/android/gms/internal/zzmt;Lcom/google/android/gms/internal/zzmk;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmi$1;->zzRt:Lcom/google/android/gms/internal/zzmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmi;->zzjn()V

    :cond_0
    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzmk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmi$1;->zzc(Lcom/google/android/gms/internal/zzmk;)V

    return-void
.end method
