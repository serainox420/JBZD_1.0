.class Lcom/google/android/gms/internal/zzji$zzc$2;
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


# instance fields
.field final synthetic zzKd:Lcom/google/android/gms/internal/zzji$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$zzc$2;->zzKd:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjj;)V
    .locals 1

    const-string v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzc$2;->zzKd:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji$zzc;->zza(Lcom/google/android/gms/internal/zzji$zzc;)Lcom/google/android/gms/internal/zzji$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgQ()V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzji$zzc$2;->zzb(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method
