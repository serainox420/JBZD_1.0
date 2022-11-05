.class Lcom/google/android/gms/internal/zzboq$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzboq;->zzXM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcci:Lcom/google/android/gms/internal/zzboq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq$7;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$7;->zzcci:Lcom/google/android/gms/internal/zzboq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$7;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zzp(Lcom/google/android/gms/internal/zzboq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$7;->zzcci:Lcom/google/android/gms/internal/zzboq;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzboq;->interrupt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$7;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zzn(Lcom/google/android/gms/internal/zzboq;)V

    goto :goto_0
.end method
