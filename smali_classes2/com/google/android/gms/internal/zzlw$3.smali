.class Lcom/google/android/gms/internal/zzlw$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzpt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlw;->zziV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzpt",
        "<",
        "Lcom/google/android/gms/internal/zzjf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzQt:Lcom/google/android/gms/internal/zzlw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlw$3;->zzQt:Lcom/google/android/gms/internal/zzlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzjf;)V
    .locals 10

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlw$3;->zzQt:Lcom/google/android/gms/internal/zzlw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlw;->zza(Lcom/google/android/gms/internal/zzlw;)Lcom/google/android/gms/ads/internal/zzs;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzs;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/zzjf;->zza(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/internal/zzif;Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/ads/internal/zzf;Lcom/google/android/gms/internal/zzkx;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlw$3;->zza(Lcom/google/android/gms/internal/zzjf;)V

    return-void
.end method
