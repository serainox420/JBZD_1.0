.class Lcom/google/android/gms/internal/zzji$zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji$zzc;->release()V
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
        "Lcom/google/android/gms/internal/zzjj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjj;)V
    .locals 1

    const-string v0, "Ending javascript session."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/internal/zzjk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzjk;->zzgT()V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzji$zzc$1;->zzb(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method
