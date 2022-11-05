.class Lcom/google/android/gms/internal/zzji$zzd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji$zzd;->zzgS()V
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
        "Lcom/google/android/gms/internal/zzjf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzKh:Lcom/google/android/gms/internal/zzji$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$zzd$3;->zzKh:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjf;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzji$zzd$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzji$zzd$3$1;-><init>(Lcom/google/android/gms/internal/zzji$zzd$3;Lcom/google/android/gms/internal/zzjf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpo;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzji$zzd$3;->zza(Lcom/google/android/gms/internal/zzjf;)V

    return-void
.end method
