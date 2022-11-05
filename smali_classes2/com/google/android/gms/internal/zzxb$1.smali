.class Lcom/google/android/gms/internal/zzxb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxb;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqP:Lcom/google/android/gms/internal/zzxb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zza(Lcom/google/android/gms/internal/zzxb;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzb(Lcom/google/android/gms/internal/zzxb;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzau(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zze(Lcom/google/android/gms/internal/zzxb;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzxb$1$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzxb$1$2;-><init>(Lcom/google/android/gms/internal/zzxb$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzi(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public zztc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zza(Lcom/google/android/gms/internal/zzxb;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zzb(Lcom/google/android/gms/internal/zzxb;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzau(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxb$1;->zzaqP:Lcom/google/android/gms/internal/zzxb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxb;->zze(Lcom/google/android/gms/internal/zzxb;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzxb$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzxb$1$1;-><init>(Lcom/google/android/gms/internal/zzxb$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzj(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
