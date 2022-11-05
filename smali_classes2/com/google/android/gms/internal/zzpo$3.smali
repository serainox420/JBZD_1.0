.class Lcom/google/android/gms/internal/zzpo$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqe$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzXI:Ljava/lang/String;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpo$3;->zztf:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpo$3;->zzXI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzu(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpo$3;->zztf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpo$3;->zzXI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzpo;->zzf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
