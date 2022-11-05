.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzasL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzasM:J

.field private final zzasN:Ljava/lang/Runnable;

.field private zzasO:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;J)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasL:Ljava/util/Set;

    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasM:J

    new-instance v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd$1;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasN:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasL:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasM:J

    return-wide v0
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasO:Z

    return v0
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasN:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasO:Z

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasN:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasM:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasH:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasN:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasO:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasL:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasL:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zztJ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasM:J

    return-wide v0
.end method

.method public zztK()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzasL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
