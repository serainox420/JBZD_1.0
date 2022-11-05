.class final Lcom/google/android/gms/internal/zzayu$3;
.super Lcom/google/android/gms/internal/zzays$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzayu;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzayt;Lcom/google/android/gms/internal/zzays;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbBv:Landroid/net/Uri;

.field final synthetic zzbBw:Lcom/google/android/gms/internal/zzays;

.field final synthetic zztf:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zzays;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayu$3;->zztf:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayu$3;->zzbBv:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayu$3;->zzbBw:Lcom/google/android/gms/internal/zzays;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzays$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayu$3;->zztf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayu$3;->zzbBv:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzayu;->zzc(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayu$3;->zzbBw:Lcom/google/android/gms/internal/zzays;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzays;->zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
