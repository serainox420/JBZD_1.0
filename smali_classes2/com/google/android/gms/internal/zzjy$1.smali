.class Lcom/google/android/gms/internal/zzjy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjy;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzLz:Lcom/google/android/gms/internal/zzjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/internal/zzjv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjy$1;->zzLz:Lcom/google/android/gms/internal/zzjv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy$1;->zzLz:Lcom/google/android/gms/internal/zzjv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjv;->zzLj:Lcom/google/android/gms/internal/zzkb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkb;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
