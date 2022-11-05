.class Lcom/google/android/gms/internal/zzum$zze$1;
.super Lcom/google/android/gms/internal/zzum$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzum$zze;->zza(Lcom/google/android/gms/internal/zzun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaip:Lcom/google/android/gms/internal/zzum$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzum$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzum$zze$1;->zzaip:Lcom/google/android/gms/internal/zzum$zze;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzum$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum$zze$1;->zzaip:Lcom/google/android/gms/internal/zzum$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzuo;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzuo;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzum$zze;->zzb(Lcom/google/android/gms/common/api/Result;)V

    invoke-static {p2}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum$zze$1;->zzaip:Lcom/google/android/gms/internal/zzum$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzum$zze;->zza(Lcom/google/android/gms/internal/zzum$zze;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum$zze$1;->zzaip:Lcom/google/android/gms/internal/zzum$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzum$zze;->zzb(Lcom/google/android/gms/internal/zzum$zze;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzum$zze$1;->zzaip:Lcom/google/android/gms/internal/zzum$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzum$zze;->zzb(Lcom/google/android/gms/internal/zzum$zze;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
