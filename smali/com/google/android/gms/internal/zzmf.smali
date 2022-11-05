.class public Lcom/google/android/gms/internal/zzmf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmf$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$zza;Lcom/google/android/gms/internal/zzmf$zza;)Lcom/google/android/gms/internal/zzpj;
    .locals 2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzmk$zza;->zzRy:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzmx;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$zza;Lcom/google/android/gms/internal/zzmf$zza;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpj;->zziP()Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzmg;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$zza;Lcom/google/android/gms/internal/zzmf$zza;)V

    goto :goto_0
.end method
