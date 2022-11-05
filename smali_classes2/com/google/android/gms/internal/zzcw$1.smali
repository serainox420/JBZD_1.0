.class Lcom/google/android/gms/internal/zzcw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcw;-><init>(Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzji;)V
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
.field final synthetic zzwP:Lcom/google/android/gms/internal/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcw$1;->zzwP:Lcom/google/android/gms/internal/zzcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw$1;->zzwP:Lcom/google/android/gms/internal/zzcw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcw;->zza(Lcom/google/android/gms/internal/zzcw;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcw$1;->zzwP:Lcom/google/android/gms/internal/zzcw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcw;->zzc(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcw$1;->zzb(Lcom/google/android/gms/internal/zzjj;)V

    return-void
.end method
